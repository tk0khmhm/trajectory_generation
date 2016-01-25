; Auto-generated. Do not edit!


(cl:in-package trajectory_generation-srv)


;//! \htmlinclude GetGoals-request.msg.html

(cl:defclass <GetGoals-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetGoals-request (<GetGoals-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGoals-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGoals-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trajectory_generation-srv:<GetGoals-request> is deprecated: use trajectory_generation-srv:GetGoals-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGoals-request>) ostream)
  "Serializes a message object of type '<GetGoals-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGoals-request>) istream)
  "Deserializes a message object of type '<GetGoals-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGoals-request>)))
  "Returns string type for a service object of type '<GetGoals-request>"
  "trajectory_generation/GetGoalsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGoals-request)))
  "Returns string type for a service object of type 'GetGoals-request"
  "trajectory_generation/GetGoalsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGoals-request>)))
  "Returns md5sum for a message object of type '<GetGoals-request>"
  "3283f3fdb1be1e6c791c1c7cdf8d5ab4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGoals-request)))
  "Returns md5sum for a message object of type 'GetGoals-request"
  "3283f3fdb1be1e6c791c1c7cdf8d5ab4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGoals-request>)))
  "Returns full string definition for message of type '<GetGoals-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGoals-request)))
  "Returns full string definition for message of type 'GetGoals-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGoals-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGoals-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGoals-request
))
;//! \htmlinclude GetGoals-response.msg.html

(cl:defclass <GetGoals-response> (roslisp-msg-protocol:ros-message)
  ((goals
    :reader goals
    :initarg :goals
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped))))
)

(cl:defclass GetGoals-response (<GetGoals-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGoals-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGoals-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trajectory_generation-srv:<GetGoals-response> is deprecated: use trajectory_generation-srv:GetGoals-response instead.")))

(cl:ensure-generic-function 'goals-val :lambda-list '(m))
(cl:defmethod goals-val ((m <GetGoals-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-srv:goals-val is deprecated.  Use trajectory_generation-srv:goals instead.")
  (goals m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGoals-response>) ostream)
  "Serializes a message object of type '<GetGoals-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'goals))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGoals-response>) istream)
  "Deserializes a message object of type '<GetGoals-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGoals-response>)))
  "Returns string type for a service object of type '<GetGoals-response>"
  "trajectory_generation/GetGoalsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGoals-response)))
  "Returns string type for a service object of type 'GetGoals-response"
  "trajectory_generation/GetGoalsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGoals-response>)))
  "Returns md5sum for a message object of type '<GetGoals-response>"
  "3283f3fdb1be1e6c791c1c7cdf8d5ab4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGoals-response)))
  "Returns md5sum for a message object of type 'GetGoals-response"
  "3283f3fdb1be1e6c791c1c7cdf8d5ab4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGoals-response>)))
  "Returns full string definition for message of type '<GetGoals-response>"
  (cl:format cl:nil "geometry_msgs/PoseStamped[] goals~%~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGoals-response)))
  "Returns full string definition for message of type 'GetGoals-response"
  (cl:format cl:nil "geometry_msgs/PoseStamped[] goals~%~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGoals-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGoals-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGoals-response
    (cl:cons ':goals (goals msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetGoals)))
  'GetGoals-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetGoals)))
  'GetGoals-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGoals)))
  "Returns string type for a service object of type '<GetGoals>"
  "trajectory_generation/GetGoals")