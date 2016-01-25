
(cl:in-package :asdf)

(defsystem "trajectory_generation-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "path_params" :depends-on ("_package_path_params"))
    (:file "_package_path_params" :depends-on ("_package"))
    (:file "Velocity" :depends-on ("_package_Velocity"))
    (:file "_package_Velocity" :depends-on ("_package"))
    (:file "RoadProperty" :depends-on ("_package_RoadProperty"))
    (:file "_package_RoadProperty" :depends-on ("_package"))
    (:file "VelocityArray" :depends-on ("_package_VelocityArray"))
    (:file "_package_VelocityArray" :depends-on ("_package"))
  ))