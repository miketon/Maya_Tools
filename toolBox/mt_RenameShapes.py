# Renames shapes of all selected transforms
def mt_RenameShapes(in_Name): 
  s_Obj = ls(sl=True)
  if len(s_Obj) > 0:
    for entry in s_Obj:
      entry.getShape().rename(in_Name)

mt_RenameShapes('structure_Room')
