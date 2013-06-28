; RawInputControlTest.ahk	ver. 0.1g pretest for Series 7 Slate
;    Touch Controller for EP121 test version
;    Requirement: AutoHotkey_L v1.1.04.01 or later
;
;  http://www.39kasen.sakura.ne.jp/rawinputcontroltest/


#SingleInstance force
#NoEnv
SetWorkingDir %A_ScriptDir%

Process, Priority, , High

Argument1 = %1%

; profiles for each models.
RawInputProfiles =
(
#Profile:ASUS EP121 / B121 (defalut)
	FirstByte=0x04
	MaxX=0x7ff0
	MaxY=0x7ff0
	OffsetStat=1
	TouchIdMask=01111100
	TouchIdMinimum=0
	OffsetX=2
	OffsetY=4

#Profile:Samsung Series 7 Slate
	FirstByte=0x01
	RawDataSize=6
	MaxX=0x0fff
	MaxY=0x0fff
	OffsetStat=1
	TouchIdMask=01111000
	TouchIdMinimum=1
	OffsetX=2
	OffsetY=4

#Profile:Samsung Series 7 Slate (new firmware)
	FirstByte=0x01
	RawDataSize=59
	RawDataCount=5
	RawDataOffset=1
	RawDataSplitSize=11
	MaxX=0x0fff
	MaxY=0x0fff
	OffsetStat=0
	TouchIdMask=01111000
	TouchIdMinimum=1
	OffsetX=1
	OffsetY=5

#Profile:HP Slate 500
	FirstByte=0x03
	RawInputMethod=WM_INPUT_HPSlate500
	MaxInputs=6
	MaxX=0x257f
	MaxY=0x1c1f
	OffsetStat=0
	TouchIdMask=11111111
	TouchIdMinimum=0
	OffsetX=3
	OffsetY=5

#Profile:HP tm2
	FirstByte=0x0c
	MaxX=0x0a29
	MaxY=0x0660
	OffsetStat=1
	TouchIdMask=01111000
	TouchIdMinimum=0
	OffsetX=2
	OffsetY=4

#Profile:Thinkpad X201 Tablet
	FirstByte=0x13
	MaxX=0x7ff0
	MaxY=0x7ff0
	OffsetStat=1
	OffsetTouchId=13
	TouchIdMask=11111111
	TouchIdMinimum=1
	OffsetX=5
	OffsetY=7
)













; Specify HID device's UsagePage & Usage.
;	Refer to this PDF doc's 103 page
;	http://www.usb.org/developers/devclass_docs/Hut1_12v2.pdf
;	or find UsagePage & Usage with this script. (You have to run this script on classical AutoHotkey.)
;	http://www.autohotkey.net/~Micha/HIDsupport/Autohotkey.html
RID_UsagePage = 0x0d	;Digitizers
RID_Usage = 0x04	;Touch Screen

; Specify Control definition file. 
;	If not specified, .txt file with the same name as the script will be loaded.
;	or if you drop .txt file into this script (or run this script with argumnt), 
;	.txt file will be loaded as a Control definition file.

ControlSource = MenuDock.txt

; Hide window if mouse cursor comes over the window. (1:Enable / 0:Disable)
HideOnMouseCursor := 1

; Window snap spacing
GuiSnapSpacing := 15

; Hotkey for Exit / Reload script. (specify AHK keystroke(s)) 
ExitKey = 
ReloadKey = 

; Create GUI
Gosub, CreateGui

; Set Transparent Background Color
;WinSet, TransColor, Purple

If (HideOnMouseCursor) {
	OnMessage(0x0200, "WM_MOUSEMOVE")
	OnMessage(0x0201, "WM_LBUTTONDOWN")
	HideOnMouseCursor_Cancel(1000)	; Don`t hide when boot
}
Gosub, InitRawInput

If (FileExist(A_ScriptDir "\rawinput.ini"))
	Gosub, Load_RawInputIni
Else
	Gosub, ParseRawInputProfiles

If (!RawInputMethod)
	RawInputMethod := "WM_INPUT_Initialize"
OnMessage(0x00FF, RawInputMethod)

OnMessage(0x1000, "WM_USER_ProcRawInput")
OnMessage(0x1001, "WM_USER_ProcRawInputRelease")

DisplayOrientation := GetDisplayOrientation()	; Display orentation
OnMessage(0x007E, "WM_DISPLAYCHANGE")	; React Display orentation change

; Register exit process.
OnExit, ExitSub

; Register Exit/Reload Hotkeys
If (ExitKey)
	Hotkey, %ExitKey%, ExitHotkeySub
If (ReloadKey)
	Hotkey, %ReloadKey%, ReloadHotkeySub

TouchReleaseMessagePosted := 0

; Set Touch monitorng Timer if Touch monitoring control exist.
;GuiControlGet, v, Visible, CtlStatic1
;If (v)
If (TouchMonitorControls)
	SetTimer, ShowTouchState, 50

Return

; Load User script.
#Include *i user.ahk

;---------------------------------------------------------- End of AutoExecute section.

; split string to key and value.
SplitLine(str, Byref key, ByRef val)
{
	If (p := InStr(str, "=")) {
		key := Trim(SubStr(str, 1, p - 1))
		val := Trim(SubStr(str, p + 1))
		Return True
	}
	Return False
}

; Detect DisplayOrientation
;	Refer to http://msdn.microsoft.com/library/ms819437.aspx
GetDisplayOrientation()
{
	DEVMODE_Size := 226
	VarSetCapacity(DEVMODE, DEVMODE_Size, 0)
	NumPut(DEVMODE_Size, DEVMODE, 68, "UShort")
	NumPut(64, DEVMODE, 70, "UShort")
	
	ret := DllCall("EnumDisplaySettings", "Ptr", 0, "UInt", 0xFFFFFFFF, "Str", DEVMODE)
	dmDisplayOrientation := 0
	;DM_DISPLAYORIENTATION = 0x00000080
	If (ret && NumGet(DEVMODE, 72, "UInt") & 0x00000080)
			dmDisplayOrientation := NumGet(DEVMODE, 84, "UInt")
	VarSetCapacity(DEVMODE, 0)
	Return dmDisplayOrientation
}

; Display Touch state.
ShowTouchState:
	Loop, %TouchMonitorControls% {
		If (Touch%A_Index%State != LastTouch%A_Index%State) {
			GuiControl,, CtlStatic%A_Index%, % Touch%A_Index%State
			LastTouch%A_Index%State := Touch%A_Index%State
		}
	}
	Return

ExitHotkeySub:
	ExitApp

ReloadHotkeySub:
	Reload

GuiDropFiles:
	Run, %A_AhkPath% "%A_ScriptFullPath%" "%A_GuiEvent%"
	Return

; Exit process.
ExitSub:
;If( WasTouch )
;{
;  RIC_SetTouchState(1)
;}

	; Release keys that is held down if exist.
	keys := PressedKeys("Get")
	Loop, PARSE, keys, |
	{
		If (Ctl%A_LoopField%_UpKey)
			Send, % Ctl%A_LoopField%_UpKey
	}
	ExitApp

; Create GUI Window.
CreateGui:
	If (Argument1)
		ControlSource := Argument1
	If (!ControlSource) {
		SplitPath, A_ScriptFullPath,, outdir,, outnamenoext
		ControlSource = %outdir%\%outnamenoext%.txt
	}
	; Check Control source file.
	If (!FileExist(ControlSource)) {
		MsgBox, Error: Control definition file "%A_ScriptDir%\%ControlSource%" could not found.`n`nScript will exit.
		ExitApp
	}
	; Init Gui settings.
	base_x := 0
	base_y := 0
	CtlMax := 0
	GuiCaptionLeft := 10
	GuiCaptionTop := 10
	GuiFontColor := "c000000"
	GuiActiveFontColor := "c000000"
	TouchMonitorControls := 0
	
	ControlGroup := {}
	
	; Load Control source file.
	Loop, READ, %ControlSource%
	{
		readline := LTrim(A_LoopReadLine)
		If (!readline || RegExMatch(readline, "^;"))
			Continue
		; Window settngs.
		If (RegExMatch(readline, "^#Window:(.*?)=(.*)", match)) {
			Gui%match1% := match2
			If (match1 = "MarginLeft")
				base_x := match2
			If (match1 = "MarginTop")
				base_y := match2
			If (RegExMatch(match1, ".+Color"))
				Gui%match1% := "c" match2
		}	
		; Set offset of Control position.
		Else If (RegExMatch(readline, "^#ControlOffset:.*?(\$?)(-?\d+).*?,.*?(\$?)(-?\d+)", match)) {
			base_x := (match1 ? 0 : base_x) + match2
			base_y := (match3 ? 0 : base_y) + match4
		}
		; New Control.
		Else If (RegExMatch(readline, "^#Control:([A-Za-z0-9]+)", match)) {
			CtlMax ++
			Ctl%CtlMax%_Type := match1
			app := ""
			mod := ""
		}
		; Control's position
		Else If (CtlMax
		      && RegExMatch(readline, "^Pos=.*?(-?\d+).*?(-?\d+).*?(-?\d+).*?(-?\d+)", match))
		{
			Ctl%CtlMax%_X := match1 + base_x
			Ctl%CtlMax%_y := match2 + base_y
			Ctl%CtlMax%_W := match3
			Ctl%CtlMax%_H := match4
			Ctl%CtlMax%_X2 := match1 + match3 + base_x
			Ctl%CtlMax%_Y2 := match2 + match4 + base_y
		}
		; Other Control's parameters.
		Else If (CtlMax && RegExMatch(readline, "^([^#]*?)=(.*)$", match)) {
			Ctl%CtlMax%%app%%mod%_%match1% := match2
			; Give the "C" to the top of the color parameters. (To use a parameter directly)
			If (InStr(match1, "Color"))
				Ctl%CtlMax%%app%%mod%_%match1% := "C" match2
			; Delete parameters if discribed image file dose not exist.
			If (RegExMatch(match1, "Image(\d+)") && RegExMatch(FileExist(match2), "^(|D)$"))
				Ctl%CtlMax%%app%%mod%_%match1% =
			; Minimized startup settings.
			If (match1 = "MinimizedStartup" && match2)
				MinimizedStartupControl := CtlMax
			; replace "\n" to "`n" (for new line)
			If (match1 = "Caption" && InStr(match2, "\n"))
				StringReplace, Ctl%CtlMax%_Caption, match2, \n, `n, All
			; monitoring controls count
			If (match1 = "Name" && RegExMatch(match2, "Static(\d+)", num))
				TouchMonitorControls := TouchMonitorControls > num1 ? TouchMonitorControls : num1
			; group
			If (match1 = "Group") {
				If (!IsObject(ControlGroup[match2]))
					ControlGroup.Insert(match2, [])
				ControlGroup[match2].Insert(CtlMax)
			}
		}
		; Application switches
		Else If (RegExMatch(readline, "^App:(.*)$", match)) {
			app := "_" RegExReplace(match1, "[^A-Za-z0-9_]", "_")
			Ctl%CtlMax%%app% := match1
			mod := ""
		}
		; Modifier switches
		Else If (RegExMatch(readline, "^Mod:(.*)$", match)) {
			StringReplace, match1, match1, |, `n
			Sort, match1
			StringReplace, match1, match1, `n, _
			mod := "_" match1
			StringReplace, match1, match1, _, |
			Ctl%CtlMax%%app%%mod% := match1
		}
		; Free vars for matching.
		Loop, %match0%
			match%A_Index% =
		match0 =
	}
	If (!CtlMax) {
		MsgBox, There are NO Controls in "%ControlSource%"
		ExitApp
	}
	; If window (width / height) specified, ignore (right / bottom) margin.
	If (GuiWidth)
		GuiMarginRight =
	If (GuiHeight)
		GuiMarginBottom =
	
	; Create GUI
	If (GuiColor)
		Gui, Color, %GuiColor%
	Gui, Margin, 0, 0
	Gui, Add, Button, vBtnDummy Hidden, dummy	; dummy button
	If (GuiFontColor)
		Gui, Font, c%GuiFontColor%
	; Create Conrols.
	Loop, %CtlMax% {
		ctlname := Ctl%A_Index%_Name
		Ctl%ctlname%_ID := A_Index
		option := " x" Ctl%A_Index%_X " y" Ctl%A_Index%_Y " w" Ctl%A_Index%_W " h" Ctl%A_Index%_H
		controltype := "Text"
		text := Ctl%A_Index%_Caption
		If (Ctl%A_Index%_Image1) {
			controltype := "Picture"
			text := Ctl%A_Index%_Image1
			option .= " AltSubmit"
		}
		Else If (Ctl%A_Index%_Type != "Label") {
			controltype := "Checkbox"
			option .= " +0x1000 gCtlSub"
		}
		Gui, Add, %controltype%, vCtl%ctlname% %option%, %text%
		; Set Caption if discribed.
		If (controltype == "Picture" && Ctl%A_Index%_Caption != "") {
			If (Ctl%A_Index%_CaptionColor1 == "")
				Ctl%A_Index%_CaptionColor1 := GuiFontColor
			If (Ctl%A_Index%_CaptionColor2 == "")
				Ctl%A_Index%_CaptionColor2 := GuiActiveFontColor
			;Gui, Font, % Ctl%A_Index%_CaptionColor1
			Gui, Font
			Gui, Font, % Ctl%A_Index%_CaptionColor1 " " Ctl%A_Index%_FontOptions, % Ctl%A_Index%_Font
			Gui, Add, Text, x0 y0 vCtl%ctlname%Label BackgroundTrans, % Ctl%A_Index%_Caption
			GuiControlGet, c, Pos, Ctl%ctlname%Label
			; Caption position.
			cpos1 := GuiCaptionTop
			cpos2 := GuiCaptionLeft
			; Parse Caption position.
			If (Ctl%A_Index%_CaptionPos) {
				Loop, PARSE, Ctl%A_Index%_CaptionPos, `,
					cpos%A_Index% := Trim(A_LoopField)
				; Horizontal centering.
				If (cpos1 = "Center")
					cpos1 := (Ctl%A_Index%_W - cW) // 2
				; Vertical centering.
				If (cpos2 = "Center")
					cpos2 := (Ctl%A_Index%_H - cH) // 2
			}
			cpos1 += Ctl%A_Index%_X
			cpos2 += Ctl%A_Index%_Y
			GuiControl, Move, Ctl%ctlname%Label, x%cpos1% y%cpos2%
			cpos1 =
			cpos2 =
		}
		If (Ctl%A_Index%_UpKey)
			Ctl%ctlname%_UpKey := Ctl%A_Index%_UpKey
	}
	; WS_EX_NOACTIVATE = 0x8000000	Don't activate window if clicked.
	Gui, +AlwaysOnTop +ToolWindow -Caption +E0x8000000 +LastFound
	GuiControl, Focus, BtnDummy
;	If (GuiTransColor)
;		WinSet, TransColor, %GuiTransColor%
	
	; Set Window size / absolute position
	option =
	For key, val in Object("X", "x", "Y", "y", "Width", "w", "Height", "h") {
		If (Gui%key% != "")
			option .= " " val Gui%key%
	}
	; Get size of window Controls arranged.
	Gui, Show, Hide %option%, Raw Input TEST
	WinGetPos, GuiX, GuiY, GuiWidth, GuiHeight
	
	; Right / bottom margin.
	If (GuiMarginRight)
		GuiWidth += GuiMarginRight
	If (GuiMarginBottom)
		GuiHeight += GuiMarginBottom
	
	; Window position.
	SysGet, area, MonitorWorkArea
	If (InStr(GuiPos, "Left"))
		GuiX := areaLeft
	Else If (InStr(GuiPos, "Right"))
		GuiX := areaRight - GuiWidth
	If (InStr(GuiPos, "Top"))
		GuiY := areaTop
	Else If (InStr(GuiPos, "Bottom"))
		GuiY := areaBottom - GuiHeight
	
	; set right-spacing if #Window:RightSpacing option exist
	If (GuiRightSpacing)
		GuiX := areaRight - GuiWidth - GuiRightSpacing
	; set bottom-spacing if #Window:BottomSpacing option exist
	If (GuiBottomSpacing)
		GuiY := areaBottom - GuiHeight - GuiBottomSpacing
		
	GuiCurrentPos := RegExReplace(GuiPos, "(Left|Right|Top|Bottom)", "Work$1")
	
	; Keep window handle as global variable.
	WinGet, GuiHwnd, ID
	
	; To get window information, set window transparent and show.
	WinSet, Transparent, 0
	Gui, Show, NoActivate x%GuiX% y%GuiY% w%GuiWidth% h%GuiHeight%
	
	; Keep client width & height as global variable.
	VarSetCapacity(point, 16, 0)
	DllCall("GetClientRect", "Ptr", GuiHwnd, "Str", point)
	PadWidth := Numget(point, 8, "Int")
	PadHeight := Numget(point, 12, "Int")
	point =
	
	; Minimized startup section.
	If (MinimizedStartupControl) {
		CtlMinimize_Proc(1, 0, 0, MinimizedStartupControl)
	}
	
	; Set specified window transparency.
	WinSet, Transparent, % (GuiTransparent && GuiTransparent < 255) ? GuiTransparent : 255
	Gui, Show, NoActivate
	
	Return

; dummy button routine
CtlSub:
	GuiControl, Focus, BtnDummy
	Return

;---------------------------------------------------------- Raw Input functions / routines

; Initialize Raw Input.
InitRawInput:
	; Register to receive Raw Input messages.
	;------------------------------------------- Reference: RAWINPUTDEVICE structuer
	;	typedef struct tagRAWINPUTDEVICE {
	;	  USHORT usUsagePage;
	;	  USHORT usUsage;
	;	  DWORD  dwFlags;
	;	  HWND   hwndTarget;
	;	} RAWINPUTDEVICE, *PRAWINPUTDEVICE, *LPRAWINPUTDEVICE;
	;-------------------------------------------
	; Create RAWINPUTDEVICE structure and initialize RAWINPUTDEVICE.
	RAWINPUTDEVICE_Size := 2 + 2 + 4 + A_PtrSize
	VarSetCapacity(RawInputDevices, RAWINPUTDEVICE_Size, 0)
	NumPut(RID_UsagePage, RawInputDevices, 0, "UShort")
	NumPut(RID_Usage, RawInputDevices, 2, "UShort")
	NumPut(0x00000100, RawInputDevices, 4, "UInt")	; RIDEV_INPUTSINK = 0x00000100
	NumPut(GuiHwnd, RawInputDevices, 8, "Ptr")
	
	;------------------------------------------- Reference: RegisterRawInputDevices function
	;	BOOL WINAPI RegisterRawInputDevices(
	;	  __in  PCRAWINPUTDEVICE pRawInputDevices,
	;	  __in  UINT uiNumDevices,
	;	  __in  UINT cbSize
	;	);
	;-------------------------------------------
	ret := DllCall("RegisterRawInputDevices"
	             , "Str", RawInputDevices, "UInt", 1, "UInt", RAWINPUTDEVICE_Size)
	If (!ret) {
		MsgBox, Error: RegisterRawInputDevices failed`nCode: %A_LastError%`n`nScript will exit.
		ExitApp
	}
	
	;------------------------------------------- Reference: RAWINPUTHEADER structure
	;	typedef struct tagRAWINPUTHEADER {
	;	  DWORD  dwType;
	;	  DWORD  dwSize;
	;	  HANDLE hDevice;
	;	  WPARAM wParam;
	;	} RAWINPUTHEADER, *PRAWINPUTHEADER;
	;-------------------------------------------
	RAWINPUTHEADER_Size := 4 + 4 + A_PtrSize + A_PtrSize
	Return

; load raw input profile from rawinput.ini.
Load_RawInputIni:
	Loop, Read, %A_ScriptDir%\rawinput.ini
	{
		line := Trim(A_LoopReadLine)
		If (SubStr(line, 1, 1) == ";")
			Continue
		If (SplitLine(line, key, val)) {
			RawData_%key% := val
		}
	}
	Gosub, InitRawInputProfile
	RawInputMethod := RawData_RawInputMethod
	If (!RawInputMethod)
		RawInputMethod := "WM_INPUT"
	Return

ParseRawInputProfiles:
	RawInputProfile := {FirstByte: {}, FirstByte_DataSize: {}}
	obj =
	Loop, PARSE, RawInputProfiles, `n
	{
		If (SubStr(A_LoopField, 1, 9) = "#Profile:") {
			StringTrimLeft, name, A_LoopField, 9
			RawInputProfile.Insert(name, {})
			obj := RawInputProfile[name]
			obj.Insert("Name", name)
			If (InStr(name, "(defalut)"))
				RawInputProfile.Insert("default", obj)
			firstbyte =
			rawdatasize =
		}
		Else {
			If (SplitLine(A_LoopField, key, val)) {
				obj.Insert(key, val)
				If (key = "FirstByte") {
					val += 0
					If (!IsObject(RawInputProfile.FirstByte["#" val])) {
						RawInputProfile.FirstByte.Insert("#" val, obj)
					}
					firstbyte := val
				}
				If (key = "RawDataSize") {
					rawdatasize := val
				;	TrayTip,, %val%
				}
				If (firstbyte && rawdatasize) {
					RawInputProfile.FirstByte_DataSize.Insert(firstbyte "_" rawdatasize, obj)
					;TrayTip,, % firstbyte "_" rawdatasize
					firstbyte =
					rawdatasize =
				}
			}
		}
	}
	obj =
	RawInputProfiles =
	Return

; identify the model from the first raw input message.
WM_INPUT_Initialize(wParam, lParam, msg, hwnd)
{
	Global
	Local ret, cbSize, RawInputData, firstbyte, obj, k, v
	Critical
	Thread, NoTimers
	
;; // testmode begin //
;If lParam is integer
;{
;; // testmode end //

	; Get size of RAWINPUT data.
	ret := DllCall("GetRawInputData", "Ptr", lParam, "UInt", 0x10000003
	               , "Ptr", 0, "UInt*", cbSize, "UInt", RAWINPUTHEADER_Size)
	If (ret) {
		Return
	}
	VarSetCapacity(RawInputData, cbSize, 0)
	; Get RAWINPUT data.
	ret := DllCall("GetRawInputData", "Ptr", lParam, "UInt", 0x10000003
	               , "Str", RawInputData, "UInt*", cbSize, "UInt", RAWINPUTHEADER_Size)
	
;; // testmode begin //
;}
;else {
;	VarSetCapacity(RawInputData, RAWINPUTHEADER_Size + 8 + wParam, 0)
;	NumPut(wParam, RawInputData, RAWINPUTHEADER_Size, "UInt")
;	Loop, %wParam% {
;		n := "0x" (SubStr(lParam, (A_Index - 1) * 2 + 1, 2))
;		NumPut(n + 0, RawInputData, RAWINPUTHEADER_Size + 7 + A_Index, "UChar")
;	}
;}
;; // testmode end //
	
	firstbyte := NumGet(RawInputData, RAWINPUTHEADER_Size + 8, "UChar")
	datasize := NumGet(RawInputData, RAWINPUTHEADER_Size, "UInt")
	
	;TrayTip,, %firstbyte% / %datasize%
	
	obj := RawInputProfile.FirstByte_DataSize[firstbyte "_" datasize]
	If (!IsObject(obj))
		obj := RawInputProfile.FirstByte["#" firstbyte]
	If (!IsObject(obj))
		obj := RawInputProfile.default
	
	;TrayTip,, % obj.Name "`nfirstbyte: " firstbyte "`ndatasize:" datasize
	
	; default settings
	RawData_RawDataCount := 1
	RawData_RawDataOffset := 0
	RawData_RawDataSplitSize := 0
	; 
	For k ,v in obj
		RawData_%k% := v
	; delete Profile object
	RawInputProfile =
	
	Gosub, InitRawInputProfile
	
	RawInputMethod := "WM_INPUT"
	If (RawData_RawInputMethod)
		RawInputMethod := RawData_RawInputMethod
	OnMessage(0x00FF, RawInputMethod)
	; process first message actually
	RawInputMethod.(wParam, lParam, msg, hwnd)
	
	Return 0
}

; initialize loaded profile
InitRawInputProfile:
	RawData_OffsetStat += RAWINPUTHEADER_Size + 4 + 4
	If (RawData_OffsetTouchId)
		RawData_OffsetTouchId += RAWINPUTHEADER_Size + 4 + 4
	
	RawData_OffsetX += RAWINPUTHEADER_Size + 4 + 4
	RawData_OffsetY += RAWINPUTHEADER_Size + 4 + 4
	
	mask := RawData_TouchIdMask
	RegExMatch(mask, "0*$", match)
	RawData_TouchIdBitShift := StrLen(match)
	If (RawData_OffsetTouchId)
		RawData_TouchIdBitShift += 8
	RawData_TouchIdMask := 0
	RegExMatch(mask, "1+", match)
	Loop, % StrLen(match)
		RawData_TouchIdMask += 2 ** (A_Index - 1)
	RawData_TouchIdAddition := 1 - RawData_TouchIdMinimum
	
	RawInput_Initialized := True
	Return

; Process Raw Input Messages.
WM_INPUT(wParam, lParam, msg, hwnd)
{
	Global RAWINPUTHEADER_Size, RawData_OffsetStat, RawData_OffsetX, RawData_OffsetY, RawData_OffsetTouchId
	Global RawData_RawDataCount, RawData_RawDataOffset, RawData_RawDataSplitSize
	Global TouchCheckEnabled, GuiHwnd
	Critical
	Thread, NoTimers
	;------------------------------------------- Reference: GetRawInputData function
	;	UINT WINAPI GetRawInputData(
	;	  __in       HRAWINPUT hRawInput,
	;	  __in       UINT uiCommand,
	;	  __out_opt  LPVOID pData,
	;	  __inout    PUINT pcbSize,
	;	  __in       UINT cbSizeHeader
	;	);
	;-------------------------------------------
	
;; // testmode begin //
;If lParam is integer
;{
;; // testmode end //
	
	; Get size of RAWINPUT data.
	ret := DllCall("GetRawInputData", "Ptr", lParam, "UInt", 0x10000003
	               , "Ptr", 0, "UInt*", cbSize, "UInt", RAWINPUTHEADER_Size)
	If (ret) {
		Return
	}
	VarSetCapacity(RawInputData, cbSize, 0)
	; Get RAWINPUT data.
	ret := DllCall("GetRawInputData", "Ptr", lParam, "UInt", 0x10000003
	               , "Str", RawInputData, "UInt*", cbSize, "UInt", RAWINPUTHEADER_Size)
	
;; // testmode begin //
;}
;else {
;	VarSetCapacity(RawInputData, RAWINPUTHEADER_Size + 8 + wParam, 0)
;	NumPut(wParam, RawInputData, RAWINPUTHEADER_Size, "UInt")
;	Loop, %wParam% {
;		n := "0x" (SubStr(lParam, (A_Index - 1) * 2 + 1, 2))
;		NumPut(n + 0, RawInputData, RAWINPUTHEADER_Size + 7 + A_Index, "UChar")
;	}
;}
;; // testmode end //
	
	;------------------------------------------- Reference: RAWINPUT structure
	;	typedef struct tagRAWINPUT {
	;	  RAWINPUTHEADER header;
	;	  union {
	;	    RAWMOUSE    mouse;
	;	    RAWKEYBOARD keyboard;
	;	    RAWHID      hid;
	;	  } data;
	;	} RAWINPUT, *PRAWINPUT, *LPRAWINPUT;
	;------------------------------------------- Reference: RAWINPUTHEADER structure
	;	typedef struct tagRAWINPUTHEADER {
	;	  DWORD  dwType;
	;	  DWORD  dwSize;
	;	  HANDLE hDevice;
	;	  WPARAM wParam;
	;	} RAWINPUTHEADER, *PRAWINPUTHEADER;
	;------------------------------------------- Reference: RAWHID structure
	;	typedef struct tagRAWHID {
	;	  DWORD dwSizeHid;
	;	  DWORD dwCount;              
	;	  BYTE  bRawData[1];
	;	} RAWHID, *PRAWHID, *LPRAWHID;
	;-------------------------------------------
	
	Loop, %RawData_RawDataCount% {
		current_offset := RawData_RawDataOffset + (A_Index - 1) * RawData_RawDataSplitSize
	
		raw_stat := NumGet(RawInputData, RawData_OffsetStat + current_offset, "UChar")
		If (!raw_stat)
			Break
		If (RawData_OffsetTouchId)
			raw_stat |= NumGet(RawInputData, RawData_OffsetTouchId + current_offset, "UChar") << 8
		raw_x := NumGet(RawInputData, RawData_OffsetX + current_offset, "UShort")
		raw_y := NumGet(RawInputData, RawData_OffsetY + current_offset, "UShort")
		
		; process WM_INPUT messages in new thread (To reduce dropping messages)
		If (raw_stat & 1) {
			; case: touch down
			PostMessage, 0x1000, raw_stat, raw_x | (raw_y << 16),, ahk_id %GuiHwnd%
		}
		Else {
			; case: touch up
			PostMessage, 0x1001, raw_stat, raw_x | (raw_y << 16),, ahk_id %GuiHwnd%
		}
	}
	Return 0
}

;; // testmode begin //
;AppsKey::
;testmode:
;	TestData := {}
;	Loop, PARSE, Clipboard, `n
;	{
;		StringSplit, src, A_LoopField, `,
;		TestData.Insert(A_Index, {interval: Floor(src2), datasize: src4, rawdata: src6})
;	}
;	TestData.count := 0
;	If (!RawInput_Initialized) {
;		TestData.count ++
;		WM_INPUT_Initialize(testdata[TestData.count].datasize, TestData[TestData.count].rawdata, 0, GuiHwnd)
;	}
;	SetTimer, testmode_call_WM_INPUT, -10
;	Return
;
;testmode_call_WM_INPUT:
;	TestData.count ++
;	WM_INPUT(testdata[TestData.count].datasize, TestData[TestData.count].rawdata, 0, GuiHwnd)
;	If (TestData.count < TestData.MaxIndex())
;		SetTimer, testmode_call_WM_INPUT, % -TestData[TestData.count].interval
;	Else
;		TrayTip,, testmode finished
;	Return
;; // testmode end //

; Process Raw Input Messages. (for HP Slate 500)
WM_INPUT_HPSlate500(wParam, lParam, msg, hwnd)
{
	Global RAWINPUTHEADER_Size, RawData_OffsetStat, RawData_OffsetX, RawData_OffsetY
	Global TouchCheckEnabled, GuiHwnd
	Critical
	Thread, NoTimers
	; Get size of RAWINPUT data.
	ret := DllCall("GetRawInputData", "Ptr", lParam, "UInt", 0x10000003
	               , "Ptr", 0, "UInt*", cbSize, "UInt", RAWINPUTHEADER_Size)
	If (ret) {
		Return
	}
	VarSetCapacity(RawInputData, cbSize, 0)
	; Get RAWINPUT data.
	ret := DllCall("GetRawInputData", "Ptr", lParam, "UInt", 0x10000003
	               , "Str", RawInputData, "UInt*", cbSize, "UInt", RAWINPUTHEADER_Size)
	
	Loop, % NumGet(RawInputData, cbSize - 1, "UChar") {
		parse_offset := (A_Index - 1) * 15 + 3
		;uid := NumGet(RawInputData, parse_offset + RawData_OffsetStat + 1, "UChar")
		
		raw_stat := NumGet(RawInputData, parse_offset + RawData_OffsetStat, "UChar")
		raw_x := NumGet(RawInputData, parse_offset + RawData_OffsetX, "UShort")
		raw_y := NumGet(RawInputData, parse_offset + RawData_OffsetY, "UShort")
		
		; process WM_INPUT messages in new thread (To reduce dropping messages)
		If (raw_stat & 1) {
			; case: touch down
			PostMessage, 0x1000, raw_stat, raw_x | (raw_y << 16),, ahk_id %hwnd%
		}
		Else {
			; case: touch up
			PostMessage, 0x1001, raw_stat, raw_x | (raw_y << 16),, ahk_id %hwnd%
		}
	}
	Return 0
}

; touch down
WM_USER_ProcRawInput(wParam, lParam, msg, hwnd)
{
	;Critical
	If (!TouchReleaseMessagePosted)
		ProcRawInput(wParam, lParam, msg, hwnd)
	Return
}

; touch up
WM_USER_ProcRawInputRelease(wParam, lParam, msg, hwnd)
{
	Critical
	ProcRawInput(wParam, lParam, msg, hwnd)
	TouchReleaseMessagePosted --
	Return
}

; process touch message
ProcRawInput(wParam, lParam, msg, hwnd)
{
	Global
	Local n, stat, x, y
	Local wx, wy, ctlname, ret
	SetControlDelay, -1
	SetKeyDelay, 0
	; ~ver.0.1f
	;touch ID
	;touch state
	; ver.0.1g~
	n := (wParam >> RawData_TouchIdBitShift & RawData_TouchIdMask) + RawData_TouchIdAddition	; touch id
	stat := wParam & 1	; touch state
	
;	src_x := (lParam & 0xFFFF)
;	src_y := (lParam >> 16)
	; display orientation: 0
	If (!DisplayOrientation) {
		x := Floor((A_ScreenWidth - 1) / RawData_MaxX * (lParam & 0xFFFF))
		y := Floor((A_ScreenHeight - 1) / RawData_MaxY * (lParam >> 16))
	}
	; display orientation: 90 (clockwise)
	Else If (DisplayOrientation == 1) {
		x := Floor((A_ScreenWidth - 1) / RawData_MaxY * (RawData_MaxY - (lParam >> 16)))
		y := Floor((A_ScreenHeight - 1) / RawData_MaxX * (lParam & 0xFFFF))
	}
	; display orientation: 180 (clockwise)
	Else If (DisplayOrientation == 2) {
		x := Floor((A_ScreenWidth - 1) / RawData_MaxX * (RawData_MaxX - (lParam & 0xFFFF)))
		y := Floor((A_ScreenHeight - 1) / RawData_MaxY * (RawData_MaxY - (lParam >> 16)))
	}
	; display orientation: 270 (clockwise)
	Else {
		x := Floor((A_ScreenWidth - 1) / RawData_MaxY * (lParam >> 16))
		y := Floor((A_ScreenHeight - 1) / RawData_MaxX * (RawData_MaxX - (lParam & 0xFFFF)))
	}
	
	Screen_X := x
	Screen_Y := y
	ScreenToClient(hwnd, x, y)
	; when control is monitoring touch
	If (Touch%n%_MonitoringControl) {
		HideOnMouseCursor_Cancel(1000)
		If (!Touch%n%_MonitorReleaseOnly || !stat) {
			cnum := Touch%n%_MonitoringControl
			ctltype := Ctl%cnum%_Type
			ret := Ctl%ctltype%_Proc(stat, x, y, cnum)
			If (!ret)
				Touch%n%_MonitoringControl := 0
		}
	}
	; processed only if the window is touched
	Else If ((0 <= x) && (x < PadWidth) && (0 <= y) && (y < PadHeight)) {
		; processed only minimize control if minimized
		If (!GuiMinimizedControl
			|| ((Ctl%GuiMinimizedControl%_X < x) && (x < Ctl%GuiMinimizedControl%_X2)
			&& (Ctl%GuiMinimizedControl%_Y < y) && (y < Ctl%GuiMinimizedControl%_Y2)))
		{
			; do not hide window on cursor when touch down
			HideOnMouseCursor_Cancel(1000)	
			Loop, %CtlMax% {
				If ((Ctl%A_Index%_X < x) && (x < Ctl%A_Index%_X2)
				 && (Ctl%A_Index%_Y < y) && (y < Ctl%A_Index%_Y2))
				{
					ctltype := Ctl%A_Index%_Type
					ret := Ctl%ctltype%_Proc(stat, x, y, A_Index)
					If (ret)
						Touch%n%_MonitoringControl := A_Index
					Touch%n%_MonitorReleaseOnly := (ret < 0) ? True : False
					Break
				}
			}
		}
	}
	Touch%n%State = Input%n%: %stat% (%Screen_X%`, %Screen_Y%)
	Return 0
}

ScreenToClient(hwnd, ByRef x, ByRef y)
{
	VarSetCapacity(point, 8, 0)
	NumPut(x, point, 0, "Int")
	NumPut(y, point, 4, "Int")
	ret := DllCall("ScreenToClient", "Ptr", hwnd, "Str", point)
	x := Numget(point, 0, "Int")
	y := Numget(point, 4, "Int")
	Return ret
}

;---------------------------------------------------------- process controls

; control: Key
CtlKey_Proc(stat, x, y, cnum)
{
	Global
	Static appmod
	Local ctl
	ctl := Ctl%cnum%_Name
	; touch down
	If (stat && !PressedKeys("Check", ctl)) {
		; process groupe
		If (Ctl%cnum%_Group)
			CtlGroupCheck(Ctl%cnum%_Group, cnum)
		appmod := GetAppMod(cnum)
		;Send, % Ctl%cnum%%appmod%_DownKey
		ControlAction(cnum, "Down", appmod)
		ChangeControlView(cnum, stat)
		If (Ctl%cnum%_DownKey && Ctl%cnum%_Upkey)
			PressedKeys("Add", ctl)
	}
	; touch up
	Else If (!stat) {
		ControlAction(cnum, "Up", appmod)
		If (Ctl%cnum%_Upkey) {
			;Send, % Ctl%cnum%%appmod%_Upkey 
			PressedKeys("Delete", ctl)
		}
		ChangeControlView(cnum, stat)
	}
	
	Return -stat
}

CtlGroupCheck(group, except_id = 0)
{
	Global
	Local i, cnum
	For i, cnum in ControlGroup[group]
	{
		If (ToggleKey%cnum%_Pressed && cnum != except_id)
			CtlToggleKey_Proc(False, 0, 0, cnum, True)	; release
	}
	Return
}

; control: ToggleKey
CtlToggleKey_Proc(stat, x, y, cnum, force_release = False)
{
	Global
	Static appmod
	Local ctl
	ctl := Ctl%cnum%_Name
	; touch down
;	If (stat && !PressedKeys("Check", ctl)) {
	If (stat && !ToggleKey%cnum%_Pressed) {
		; process groupe
		If (Ctl%cnum%_Group)
			CtlGroupCheck(Ctl%cnum%_Group, cnum)
		;Send, % Ctl%cnum%_DownKey
		ControlAction(cnum, "Down", appmod)
		ChangeControlView(cnum, stat, "Bold")
		If (!Ctl%cnum%_NotModify)
			PressedKeys("Add", ctl)
		appmod := GetAppMod(cnum)
		ToggleKeyDown%ctl%%appmod% := A_TickCount
		ToggleKey%cnum%_Pressed := True
	}
	; touch up
;	Else If (!stat && PressedKeys("Check", ctl) && (A_TickCount - ToggleKeyDown%ctl% > 300)) {
	Else If (!stat && ToggleKey%cnum%_Pressed && (A_TickCount - ToggleKeyDown%ctl% > 300)) {
		;Send, % Ctl%cnum%%appmod%_Upkey
		ControlAction(cnum, "Up", appmod)
		ChangeControlView(cnum, stat, "")
		If (!Ctl%cnum%_NotModify)
			PressedKeys("Delete", ctl)
		ToggleKey%cnum%_Pressed := False
	}
	Return -stat
}

; control: VSlider
CtlVSlider_Proc(stat, x, y, cnum)
{
	Global
	Static appmod
	Local ctl, difference
	ctl := Ctl%cnum%_Name
	If (stat) {
		; touch down
		If (!VSlider%ctl%_LastPos) {
			ChangeControlView(cnum, stat)
			VSlider%ctl%_LastPos := y
			VSlider%ctl%_Moved := False
			VSlider%ctl%_Begin := A_TickCount
			appmod := GetAppMod(cnum)
			CtlVSlider_Proc_Monitoring .= cnum "|"
			;Sleep, 50
		}
		; touch move
		Else {
			difference := y - VSlider%ctl%_LastPos
			If (Abs(difference) > Ctl%cnum%_Step) {
				;Send, % (difference < 0) ? Ctl%cnum%%appmod%_Upkey : Ctl%cnum%%appmod%_DownKey
				ControlAction(cnum, (difference < 0) ? "Up" : "Down", appmod)
				VSlider%ctl%_LastPos := y
				VSlider%ctl%_Moved := True
				Sleep, 100
			}
			; Quit process if there is no receipt of a message for 100ms
			; (measures for dropped messages)
			SetTimer, CtlVSlider_CheckRelease, 300
		}
	}
	; touch up
	Else If (!stat) {
		StringReplace, CtlVSlider_Proc_Monitoring, CtlVSlider_Proc_Monitoring, %cnum%|, 
		SetTimer, CtlVSlider_CheckRelease, Off
		ChangeControlView(cnum, stat)
		VSlider%ctl%_LastPos := 0
		; short touch
		If (!VSlider%ctl%_Moved && (A_TickCount - VSlider%ctl%_Begin < 500)) {
			ControlAction(cnum, "Touch", appmod)
;			If (Ctl%cnum%%appmod%_TouchKey)
;				Send, % Ctl%cnum%%appmod%_TouchKey
		}
	}
	Return stat
}

;--------------------------- NEW BUTTON TYPES --------------------------------------------
;-----------------------------------------------------------------------------------------
; control: VSlider with Delay
CtlVSliderDelay_Proc(stat, x, y, cnum)
{
	Global
	Static appmod
	Local ctl, difference
	ctl := Ctl%cnum%_Name
	If (stat) {
		; touch down
		If (!VSlider%ctl%_LastPos) {
			ChangeControlView(cnum, stat)
			VSlider%ctl%_LastPos := y
			VSlider%ctl%_Moved := False
			VSlider%ctl%_Begin := A_TickCount
			appmod := GetAppMod(cnum)
			CtlVSlider_Proc_Monitoring .= cnum "|"
			;Sleep, 50
		}
		; touch move
		Else {
			difference := y - VSlider%ctl%_LastPos
			If (Abs(difference) > Ctl%cnum%_Step) {
				ControlAction(cnum, (difference < 0) ? "Up" : "Down", appmod)
				VSlider%ctl%_LastPos := y
				VSlider%ctl%_Moved := True
				Sleep, 400
			}
			; Quit process if there is no receipt of a message for 100ms
			; (measures for dropped messages)
			SetTimer, CtlVSlider_CheckRelease, 300
		}
	}
	; touch up
	Else If (!stat) {
		StringReplace, CtlVSlider_Proc_Monitoring, CtlVSlider_Proc_Monitoring, %cnum%|, 
		SetTimer, CtlVSlider_CheckRelease, Off
		ChangeControlView(cnum, stat)
		VSlider%ctl%_LastPos := 0
		; short touch
		If (!VSlider%ctl%_Moved && (A_TickCount - VSlider%ctl%_Begin < 500)) {
			ControlAction(cnum, "Touch", appmod)
;			If (Ctl%cnum%%appmod%_TouchKey)
;				Send, % Ctl%cnum%%appmod%_TouchKey
		}
	}
	Return stat
}

; control: HSlider
CtlHSlider_Proc(stat, x, y, cnum)
{
	Global
	Static appmod
	Local ctl, difference
	ctl := Ctl%cnum%_Name
	If (stat) {
		; touch down
		If (!HSlider%ctl%_LastPos) {
			ChangeControlView(cnum, stat)
			HSlider%ctl%_LastPos := x
			HSlider%ctl%_Moved := False
			HSlider%ctl%_Begin := A_TickCount
			appmod := GetAppMod(cnum)
			CtlHSlider_Proc_Monitoring .= cnum "|"
			Sleep, 50
		}
		
		; touch move
		Else {
			difference := x - HSlider%ctl%_LastPos
			If (Abs(difference) > Ctl%cnum%_Step) {
				;Send, % (difference < 0) ? Ctl%cnum%%appmod%_Upkey : Ctl%cnum%%appmod%_DownKey
				ControlAction(cnum, (difference < 0) ? "Up" : "Down", appmod)
				HSlider%ctl%_LastPos := x
				HSlider%ctl%_Moved := True	
				Sleep, 200
			}
			; Quit process if there is no receipt of a message for 100ms
			; (measures for dropped messages)
			SetTimer, CtlHSlider_CheckRelease, 300
		}
	}
	; touch up
	Else If (!stat) {
		StringReplace, CtlHSlider_Proc_Monitoring, CtlHSlider_Proc_Monitoring, %cnum%|, 
		SetTimer, CtlHSlider_CheckRelease, Off
		ChangeControlView(cnum, stat)
		HSlider%ctl%_LastPos := 0
		; short touch
		If (!HSlider%ctl%_Moved && (A_TickCount - HSlider%ctl%_Begin < 500)) {
			ControlAction(cnum, "Touch", appmod)
;			If (Ctl%cnum%%appmod%_TouchKey)
;				Send, % Ctl%cnum%%appmod%_TouchKey
		}
	}
	Return stat
}

; control: MenuDock
CtlMenuDock_Proc(stat, x, y, cnum)
{	
	Local ctl
	ctl := Ctl%cnum%_Name
	ControlSource = MenuDock.txt
	
	; touch down
	If (stat && !PressedKeys("Check", ctl)) {
		ChangeControlView(cnum, stat)
	}
	; touch up
	Else If (!stat) {
		#SingleInstance force
		DetectHiddenWindows On
		SetTitleMatchMode 2
		WinClose HelperDock.ahk
		Run,  %A_AhkPath% "%A_ScriptFullPath%" "%ControlSource%"
		ExitApp
	}
	Return -stat
}

; control: Dock
CtlDock_Proc(stat, x, y, cnum)
{	
	Local ctl
	ctl := Ctl%cnum%_Name
	ControlSource = %ctl%.txt
	
	; touch down
	If (stat && !PressedKeys("Check", ctl)) {
		ChangeControlView(cnum, stat)
	}
	; touch up
	Else If (!stat) {
		Run, %A_AhkPath% "%A_ScriptFullPath%" "txt\%ControlSource%"
		ExitApp
	}
	Return -stat
}

; control: Dock Slider
CtlDockSlider_Proc(stat, x, y, cnum)
{
	Global
	Static appmod
	Local ctl, difference
	ctl := Ctl%cnum%_Name
	
	ControlSource = %ctl%.txt
	ControlSourceP = alt\%ctl%P_P.txt
	ControlSourceH = %ctl%P_H.txt
	
	If (stat) {
		; touch down
		If (!HSlider%ctl%_LastPos) {
			ChangeControlView(cnum, stat)
			HSlider%ctl%_LastPos := x
			HSlider%ctl%_Moved := False
			HSlider%ctl%_Begin := A_TickCount
			appmod := GetAppMod(cnum)
			CtlHSlider_Proc_Monitoring .= cnum "|"
		}
		; touch move
		Else {
			difference := x - HSlider%ctl%_LastPos
			If (Abs(difference) > Ctl%cnum%_Step) {
				If (difference > 50) {
					Run, %A_AhkPath% "%A_ScriptFullPath%" "%ControlSourceP%"
					Run, %A_AhkPath% "%A_ScriptFullPath%\..\alt\HelperDock.ahk" "%ControlSourceH%"
					ExitApp
				}
			}

			SetTimer, CtlHSlider_CheckRelease, 300
		}
	}
	; touch up
	Else If (!stat) {
		StringReplace, CtlHSlider_Proc_Monitoring, CtlHSlider_Proc_Monitoring, %cnum%|, 
		SetTimer, CtlHSlider_CheckRelease, Off
		ChangeControlView(cnum, stat)
		HSlider%ctl%_LastPos := 0
		; short touch
		If (!HSlider%ctl%_Moved && (A_TickCount - HSlider%ctl%_Begin < 500)) {
			;ControlAction(cnum, "Touch", appmod)
			Run, %A_AhkPath% "%A_ScriptFullPath%" "txt\%ControlSource%"
			ExitApp
		}
	}
	Return stat
}

; control: App Dock
CtlAppDock_Proc(stat, x, y, cnum)
{
	Global
	Static appmod
	Local ctl
	ctl := Ctl%cnum%_Name
	ControlSourceH =%ctl%.txt
	; touch down
	If (stat && !PressedKeys("Check", ctl)) {
		appmod := GetAppMod(cnum)
		;Send, % Ctl%cnum%%appmod%_DownKey
		ControlAction(cnum, "Down", appmod)
		ChangeControlView(cnum, stat)
		If (Ctl%cnum%_DownKey && Ctl%cnum%_Upkey)
			PressedKeys("Add", ctl)
	}
	; touch up
	Else If (!stat) {
		ControlAction(cnum, "Up", appmod)
		If (Ctl%cnum%_Upkey) {
			;Send, % Ctl%cnum%%appmod%_Upkey 
			PressedKeys("Delete", ctl)
		}
		ChangeControlView(cnum, stat)
		#SingleInstance force
		;WinClose HelperDock.ahk
		Sleep, 50
		Run, %A_AhkPath% "AppDock.ahk"  "%ControlSourceH%"
	}
	
	Return -stat
}

; control: TouchOn
CtlTouchOn_Proc(stat, x, y, cnum)
{
	Global
	Static appmod
	Local ctl
	ctl := Ctl%cnum%_Name
	; touch down
	If (stat && !PressedKeys("Check", ctl)) {
		appmod := GetAppMod(cnum)
		;Send, % Ctl%cnum%%appmod%_DownKey
		ControlAction(cnum, "Down", appmod)
		ChangeControlView(cnum, stat)
		If (Ctl%cnum%_DownKey && Ctl%cnum%_Upkey)
			PressedKeys("Add", ctl)
	}
	; touch up
	Else If (!stat) {
		ControlAction(cnum, "Up", appmod)
		If (Ctl%cnum%_Upkey) {
			;Send, % Ctl%cnum%%appmod%_Upkey 
			PressedKeys("Delete", ctl)
		}
		ChangeControlView(cnum, stat)
		RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Wisp\Touch, TouchGate, 1
		SendMessage, 0x1A,,,, ahk_id 0xFFFF
	}
	
	Return -stat
}

; control: TouchOff
CtlTouchOff_Proc(stat, x, y, cnum)
{
	Global
	Static appmod
	Local ctl
	ctl := Ctl%cnum%_Name
	; touch down
	If (stat && !PressedKeys("Check", ctl)) {
		appmod := GetAppMod(cnum)
		;Send, % Ctl%cnum%%appmod%_DownKey
		ControlAction(cnum, "Down", appmod)
		ChangeControlView(cnum, stat)
		If (Ctl%cnum%_DownKey && Ctl%cnum%_Upkey)
			PressedKeys("Add", ctl)
	}
	; touch up
	Else If (!stat) {
		ControlAction(cnum, "Up", appmod)
		If (Ctl%cnum%_Upkey) {
			;Send, % Ctl%cnum%%appmod%_Upkey 
			PressedKeys("Delete", ctl)
		}
		ChangeControlView(cnum, stat)
		RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Wisp\Touch, TouchGate, 0
		SendMessage, 0x1A,,,, ahk_id 0xFFFF
	}
	
	Return -stat
}
;----------------------------------- END OF NEW BUTTON TYPES ----------------------------------
;----------------------------------------------------------------------------------------------


; monitor VSlider
;	If there is no receipt of a message for 100ms while VSlider monitoring,
;	stop touch monitoring and quit VSlider process.
;	(because many messages are droped while monitoring VSlider.)
CtlVSlider_CheckRelease:
	SetTimer, CtlVSlider_CheckRelease, Off
	Loop, PARSE, CtlVSlider_Proc_Monitoring, |
	{
		;If (A_LoopField) {
		;	n := A_LoopField
		;	Loop, 2 {
		;		If (n == Touch%A_Index%_MonitoringControl) {
		;			CtlVSlider_Proc(0, 0, 0, n)
		;			Touch%A_Index%_MonitoringControl := 0
		;		}
		;	}
		;}
	}
	Return

CtlHSlider_CheckRelease:
	SetTimer, CtlHSlider_CheckRelease, Off
	Loop, PARSE, CtlHSlider_Proc_Monitoring, |
	{
		;If (A_LoopField) {
		;	n := A_LoopField
		;	Loop, 2 {
		;		If (n == Touch%A_Index%_MonitoringControl) {
		;			CtlVSlider_Proc(0, 0, 0, n)
		;			Touch%A_Index%_MonitoringControl := 0
		;		}
		;	}
		;}
	}
	Return

;----------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------


; control: Handle
CtlHandle_Proc(stat, x, y, cnum)
{
	Global GuiHwnd, Screen_X, Screen_Y
	Static dragging, base_x, base_y, base_wx, base_wy
	SetWinDelay, 0
	ctl := Ctl%cnum%_Name
	If (stat) {
		; start of moving
		If (!dragging) {
			ChangeControlView(cnum, stat)
			WinGetPos, base_wx, base_wy,,, ahk_id %GuiHwnd%
			dragging := True
			base_x := base_wx + x	; coordinates at the start of moving
			base_y := base_wy + y
			HideOnMouseCursor_Cancel()
		}
		; moving
		Else
			WinMoveSnap(GuiHwnd, base_wx + Screen_X - base_x, base_wy + Screen_Y - base_y)
	}
	; end of moving
	Else {
		ChangeControlView(cnum, stat)
		dragging := False
		HideOnMouseCursor_Cancel("Off")
	}
	Return stat
}

; update caption
ChangeControlLabel(ctl, caption)
{
	Global
	Local ctlname, cnum, StrSize, hctl, hdc, ctlw, c, cpos1, cpos2, cw, ch
	ctlname := InStr(ctl, "Ctl") ? ctl : ("Ctl" Ctl%ctl%_Name)
	cnum := InStr(ctl, "Ctl") ? %ctl%_ID : ctl
	If (caption == -1)
		caption := Ctl%cnum%_Caption
	
;	GuiControlGet, org, Pos, %ctlname%Label
	GuiControl,, %ctlname%Label, %caption%	

	Return
}

; control: Close button
CtlClose_Proc(stat, x, y, cnum)
{
	Global ControlSource
	Static down_x, down_y, down_tickcount, reload_me
	If (stat) {
		If (!down_tickcount) {
			ChangeControlView(cnum, stat)
			down_x := x
			down_y := y
			down_tickcount := A_TickCount
		}
		; Reload script if hold down over 1 second.
		If (A_TickCount - down_tickcount > 500) {
			If ((Ctl%cnum%_X < x) && (x < Ctl%cnum%_X2) && (Ctl%cnum%_Y < y) && (y < Ctl%cnum%_Y2)) {
				reload_me := true
				ChangeControlLabel("CtlHandle", "Reload")
			}
			down_tickcount := 0
			stat := -stat
		}
	}
	Else {
		ChangeControlLabel("CtlHandle", -1)
		ChangeControlView(cnum, stat)
		; Quit script if touch up in close control.
		If ((Ctl%cnum%_X < x) && (x < Ctl%cnum%_X2) && (Ctl%cnum%_Y < y) && (y < Ctl%cnum%_Y2)) {
			If (reload_me) {
				
				Run, %A_AhkPath% "%A_ScriptFullPath%" "%ControlSource%"
			}
			Else
				ExitApp
		}
		down_tickcount := 0
		reload_me := False
	}
	Return -stat
}

; control: Minimize button
CtlMinimize_Proc(stat, x, y, cnum)
{
	Global
	Local ctl
	ctl := Ctl%cnum%_Name
	; touch down
	If (stat && !Minimize%cnum%_Pressed) {
		ChangeControlView(cnum, stat)
		x := (Ctl%cnum%_X < 0) ? 0 : Ctl%cnum%_X
		y := (Ctl%cnum%_Y < 0) ? 0 : Ctl%cnum%_Y
		w := Ctl%cnum%_W + ((Ctl%cnum%_X < 0) ? Ctl%cnum%_X : 0) 
		h := Ctl%cnum%_H + ((Ctl%cnum%_Y < 0) ? Ctl%cnum%_Y : 0)
		If (x + w > PadWidth)
			w := PadWidth - x
		If (y + h > PadHeight)
			h := PadHeight - y
		WinSet, Region, %x%-%y% w%w% h%h%, ahk_id %GuiHwnd%
		Minimize%cnum%_Pressed := A_TickCount
		GuiMinimizedControl := cnum
	}
	; touch up
	Else If (!stat && Minimize%cnum%_Pressed && A_TickCount - Minimize%cnum%_Pressed > 300) {
		ChangeControlView(cnum, stat)
		WinSet, Region,, ahk_id %GuiHwnd%
		Minimize%cnum%_Pressed := 0
		GuiMinimizedControl := 0
	}
	Return -stat
}

;;---------------------------------------------------------- functions for control action

; execute specified action
ControlAction(n, action, appmod)
{
	Global
	If (Ctl%n%%appmod%_%action%Key)
		Send, % Ctl%n%%appmod%_%action%Key
	If (Ctl%n%%appmod%_%action%Command) {
		ControlAction_CommandQueue .= Ctl%n%%appmod%_%action%Command "`n"
		SetTimer, ControlAction_ProcCommandQueue, -10
	}
	If (Ctl%n%%appmod%_%action%Sub) {
		ControlAction_SubroutineQueue .= Ctl%n%%appmod%_%action%Sub "`n"
		SetTimer, ControlAction_ProcSubroutineQueue, -10
	}
	Return
}

; process command queue
ControlAction_ProcCommandQueue:
	npos := InStr(ControlAction_CommandQueue, "`n")
	cmd := SubStr(ControlAction_CommandQueue, 1, npos - 1)	; extract the first line
	StringSplit, cmd, cmd, `,	; split options
	Run, %cmd1%, %cmd2%, %cmd3% UseErrorLevel
	ControlAction_CommandQueue := SubStr(ControlAction_CommandQueue, npos + 1)	; delete the first line
	If (ControlAction_CommandQueue)
		SetTimer, ControlAction_ProcCommandQueue, -20
	Return

; process sub-routine queue
ControlAction_ProcSubroutineQueue:
	npos := InStr(ControlAction_SubroutineQueue, "`n")
	subroutine := SubStr(ControlAction_SubroutineQueue, 1, npos - 1)	; extract the first line
	If (IsLabel(subroutine))
		GoSub, %subroutine%
	ControlAction_SubroutineQueue := SubStr(ControlAction_SubroutineQueue, npos + 1)	; delete the first line
	If (ControlAction_SubroutineQueue)
		SetTimer, ControlAction_ProcSubroutineQueue, -20
	Return

; manage pressed keys
PressedKeys(action, key = "")
{
	Static PressedKeys
	If (action = "Get") {
		StringTrimRight, keys, PressedKeys, 1
		Return keys
	}
	Else If (action = "Add") {
		PressedKeys .= key "|"
		; Keep sorted alphabetically
		StringReplace, PressedKeys, PressedKeys, |, `n, All
		Sort, PressedKeys
		StringReplace, PressedKeys, PressedKeys, `n, |, All
		Return True
	}
	Else If (action = "Delete") {
		If (InStr(PressedKeys, key "|")) {
			StringReplace, PressedKeys, PressedKeys, %key%|,
			Return True
		}
	}
	Else If (action = "Check") {
		If (InStr(PressedKeys, key "|"))
			Return True
	}
	Return False
}

; get current application and modifiers
GetAppMod(n)
{
	Global
	Local exename, exe, modname, mod
	; check application
	WinGet, exename, ProcessName, A
	exe := "_" . RegExReplace(exename, "[^A-Za-z0-9_]", "_")
	If (!Ctl%n%%exe% || Ctl%n%%exe% != exename)
		exe := ""
	; check mod
	modname := PressedKeys("Get")
	StringReplace, modname, modname, |, _, All
	mod := (modname ? "_" : "") . modname
	If (!Ctl%n%%exe%%mod% || Ctl%n%%exe%%mod% != modname) {
		If (mod && exe && Ctl%n%%mod% && Ctl%n%%mod% == modname)
			exe := ""
		Else
			mod := ""
	}
	Return (exe mod)
}

; change control image
ChangeControlView(n, stat, option = "")
{
	ctl := Ctl%n%_Name
	; when image specified
	If (Ctl%n%_Image1) {
		pattern := stat + 1
		If (Ctl%n%_Image%pattern%)
			GuiControl,, Ctl%ctl%, % Ctl%n%_Image%pattern%
		If (Ctl%n%_Caption) {
			color := Ctl%n%_CaptionColor%pattern% ? Ctl%n%_CaptionColor%pattern% : "C9B9B9B"
			options := Ctl%n%_FontOptions
			Gui, Font, %color% %options%, % Ctl%n%_Font
			GuiControl, Font, Ctl%ctl%Label
			Gui, Font
		}
	}
	Else {
		Gui, Font, %option%
		GuiControl,, Ctl%ctl%, %stat%
		Gui, Font
	}
	Return stat
}

; move window (snapping)
WinMoveSnap(hwnd, x, y, pos = "")
{
	Global GuiSnapSpacing, GuiCurrentPos, GuiBottomSpacing
	WinGetPos,,, w, h, ahk_id %hwnd%
	GuiCurrentPos := ""
	SysGet, area, MonitorWorkArea
	If (GuiSnapSpacing && !GetKeyState("Shift")) {
		; for screen snapping
		If (Abs(x) < GuiSnapSpacing || InStr(pos, "ScreenLeft")) {
			x := 0
			GuiCurrentPos .= "ScreenLeft"
		}
		If (Abs(x + w - A_ScreenWidth) < GuiSnapSpacing || InStr(pos, "ScreenRight")) {
			x := A_ScreenWidth - w
			GuiCurrentPos .= "ScreenRight"
		}
		If (Abs(y) < GuiSnapSpacing || InStr(pos, "ScreenTop")) {
			y := 0
			GuiCurrentPos .= "ScreenTop"
		}
		If (Abs(y + h - A_ScreenHeight) < GuiSnapSpacing || InStr(pos, "ScreenBottom")) {
			y := A_ScreenHeight - h
			GuiCurrentPos .= "ScreenBottom"
		}
		; for workarea snapping
		If (Abs(x - areaLeft) < GuiSnapSpacing || InStr(pos, "WorkLeft")) {
			x := areaLeft
			GuiCurrentPos .= "WorkLeft"
		}
		If (Abs(x + w - areaRight) < GuiSnapSpacing || InStr(pos, "WorkRight")) {
			x := areaRight - w
			GuiCurrentPos .= "WorkRight"
		}
		If (Abs(y - areaTop) < GuiSnapSpacing || InStr(pos, "WorkTop")) {
			y := areaTop
			GuiCurrentPos .= "WorkTop"
		}
		If (Abs(y + h - areaBottom) < GuiSnapSpacing || InStr(pos, "WorkBottom")) {
			y := areaBottom - h
			GuiCurrentPos .= "WorkBottom"
		}
	}
	If (GuiRightSpacing && pos)
		x := areaRight - w - GuiRightSpacing
	If (GuiBottomSpacing && pos)
		y := areaBottom - h - GuiBottomSpacing
	WinMove, ahk_id %hwnd%,, x, y
	If (GuiRightSpacing && !pos)
		GuiRightSpacing := areaRight - w - x
	If (GuiBottomSpacing && !pos)
		GuiBottomSpacing := areaBottom - h - y
	Return
}
/*
; enable touch
RIC_EnableTouch:
	If (!RIC_GetTouchState())
		RIC_SetTouchState(1)
	Return
	
; disable touch
RIC_DisableTouch:
	If (RIC_GetTouchState())
		RIC_SetTouchState(0)
	Return
	
; toggle touch state
RIC_ToggleTouch:
	RIC_SetTouchState(!RIC_GetTouchState())
	Return

RIC_GetTouchState()
{
	RegRead, touch_state, HKEY_CURRENT_USER, Software\Microsoft\Wisp\Touch, TouchGate
	Return touch_state
}

RIC_SetTouchState(touch_state)
{
	RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Wisp\Touch, TouchGate, % touch_state ? "1" : "0"
	SendMessage, 0x1a,,,, ahk_id 0xffff
	Return touch_state
}
;---------------------------------------------------------- Window messages
*/


; Hide window if cursor comes over the window.
WM_MOUSEMOVE(wParam, lParam, msg, hwnd)
{
	Global GuiHwnd, HideOnMouseCursor
	If (HideOnMouseCursor && hwnd == GuiHwnd && !GetKeyState("Shift")) {
		Gui, Hide
		SetTimer, WM_MOUSEMOVE_CheckCursor, 100
	}

	Return
}


; Show window if cursor leave from the window.
WM_MOUSEMOVE_CheckCursor:
	CoordMode, Mouse, Screen
	MouseGetPos, x, y
	detect := A_DetectHiddenWindows
	DetectHiddenWindows, On
	WinGetPos, wx, wy, ww, wh, ahk_id %GuiHwnd%

	If ((x < wx) || (wx + ww < x) || (y < wy) || (wy + wh < y)) {
		
		Gui, Show, NoActivate
		SetTimer, WM_MOUSEMOVE_CheckCursor, Off

	}
	DetectHiddenWindows, %detect%
	Return
	
; Disable "Hide Window on cursor" for a specified period.
;	If the cursor is on a window after a specified period,
;	keep disabled until the cursor away from the window.
HideOnMouseCursor_Cancel(t = 0)
{
	Global HideOnMouseCursor, GuiHwnd
	Static hide_enabled, force_disabled
	; period specified
	If (t > 0 && !force_disabled) {
		If (HideOnMouseCursor) {
			HideOnMouseCursor := False
			hide_enabled := True
			SetTimer, HideOnMouseCursor_Enable, -%t%
		}
		Else If (hide_enabled) {
			SetTimer, HideOnMouseCursor_Enable, -%t%
		}
	}
	; No period
	Else If (t == 0) {
		SetTimer, HideOnMouseCursor_Enable, Off
		If (HideOnMouseCursor) {
			HideOnMouseCursor := False
			hide_enabled := True
		}
		force_disabled := True
	}
	; Quit monitoring
	Else If (t == "Off" && hide_enabled) {
		SetTimer, HideOnMouseCursor_Enable, -10
		force_disabled := False
	}
	Return

HideOnMouseCursor_Enable:
	; Continue monitoring until the cursor leaves the window.
	MouseGetPos,,, hwnd
	If (hwnd == GuiHwnd)
		SetTimer, HideOnMouseCursor_Enable, -50
	Else {
		HideOnMouseCursor := True
		hide_enabled := False
		force_disabled := False
	}
	Return
}

; disable left click
WM_LBUTTONDOWN(wParam, lParam, msg, hwnd)
{
;	Global GuiHwnd
;	If (hwnd != GuiHwnd)
;		Return
	Return 0
}

; React display orientation change
WM_DISPLAYCHANGE(wParam, lParam, msg, hwnd)
{
	Global
	If (hwnd == GuiHwnd) {
		DisplayOrientation := GetDisplayOrientation()
		WinMoveSnap(hwnd, 0, 0, GuiCurrentPos)
	}
	Return
}