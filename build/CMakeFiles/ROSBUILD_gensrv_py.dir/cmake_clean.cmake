FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/trajectory_generation/msg"
  "../src/trajectory_generation/srv"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/trajectory_generation/srv/__init__.py"
  "../src/trajectory_generation/srv/_Kirikaesi.py"
  "../src/trajectory_generation/srv/_TableLookUP.py"
  "../src/trajectory_generation/srv/_GetGoals.py"
  "../src/trajectory_generation/srv/_PathCheck.py"
  "../src/trajectory_generation/srv/_TrajectoryGeneration.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
