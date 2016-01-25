
(cl:in-package :asdf)

(defsystem "trajectory_generation-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
               :std_msgs-msg
               :trajectory_generation-msg
)
  :components ((:file "_package")
    (:file "GetGoals" :depends-on ("_package_GetGoals"))
    (:file "_package_GetGoals" :depends-on ("_package"))
    (:file "PathCheck" :depends-on ("_package_PathCheck"))
    (:file "_package_PathCheck" :depends-on ("_package"))
    (:file "TrajectoryGeneration" :depends-on ("_package_TrajectoryGeneration"))
    (:file "_package_TrajectoryGeneration" :depends-on ("_package"))
    (:file "TableLookUP" :depends-on ("_package_TableLookUP"))
    (:file "_package_TableLookUP" :depends-on ("_package"))
    (:file "Kirikaesi" :depends-on ("_package_Kirikaesi"))
    (:file "_package_Kirikaesi" :depends-on ("_package"))
  ))