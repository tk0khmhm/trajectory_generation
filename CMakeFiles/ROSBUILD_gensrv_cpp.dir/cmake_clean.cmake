FILE(REMOVE_RECURSE
  "msg_gen"
  "srv_gen"
  "msg_gen"
  "srv_gen"
  "src/trajectory_generation/msg"
  "src/trajectory_generation/srv"
  "CMakeFiles/ROSBUILD_gensrv_cpp"
  "srv_gen/cpp/include/trajectory_generation/TableLookUP.h"
  "srv_gen/cpp/include/trajectory_generation/Kirikaesi.h"
  "srv_gen/cpp/include/trajectory_generation/GetGoals.h"
  "srv_gen/cpp/include/trajectory_generation/PathCheck.h"
  "srv_gen/cpp/include/trajectory_generation/TrajectoryGeneration.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
