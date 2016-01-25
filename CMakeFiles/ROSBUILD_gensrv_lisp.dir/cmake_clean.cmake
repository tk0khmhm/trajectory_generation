FILE(REMOVE_RECURSE
  "msg_gen"
  "srv_gen"
  "msg_gen"
  "srv_gen"
  "src/trajectory_generation/msg"
  "src/trajectory_generation/srv"
  "CMakeFiles/ROSBUILD_gensrv_lisp"
  "srv_gen/lisp/TableLookUP.lisp"
  "srv_gen/lisp/_package.lisp"
  "srv_gen/lisp/_package_TableLookUP.lisp"
  "srv_gen/lisp/Kirikaesi.lisp"
  "srv_gen/lisp/_package.lisp"
  "srv_gen/lisp/_package_Kirikaesi.lisp"
  "srv_gen/lisp/GetGoals.lisp"
  "srv_gen/lisp/_package.lisp"
  "srv_gen/lisp/_package_GetGoals.lisp"
  "srv_gen/lisp/PathCheck.lisp"
  "srv_gen/lisp/_package.lisp"
  "srv_gen/lisp/_package_PathCheck.lisp"
  "srv_gen/lisp/TrajectoryGeneration.lisp"
  "srv_gen/lisp/_package.lisp"
  "srv_gen/lisp/_package_TrajectoryGeneration.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
