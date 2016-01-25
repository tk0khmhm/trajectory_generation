; Auto-generated. Do not edit!


(cl:in-package trajectory_generation-msg)


;//! \htmlinclude VelocityArray.msg.html

(cl:defclass <VelocityArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vel
    :reader vel
    :initarg :vel
    :type (cl:vector trajectory_generation-msg:Velocity)
   :initform (cl:make-array 0 :element-type 'trajectory_generation-msg:Velocity :initial-element (cl:make-instance 'trajectory_generation-msg:Velocity)))
   (id_num
    :reader id_num
    :initarg :id_num
    :type cl:integer
    :initform 0))
)

(cl:defclass VelocityArray (<VelocityArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocityArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocityArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trajectory_generation-msg:<VelocityArray> is deprecated: use trajectory_generation-msg:VelocityArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VelocityArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-msg:header-val is deprecated.  Use trajectory_generation-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <VelocityArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-msg:vel-val is deprecated.  Use trajectory_generation-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'id_num-val :lambda-list '(m))
(cl:defmethod id_num-val ((m <VelocityArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-msg:id_num-val is deprecated.  Use trajectory_generation-msg:id_num instead.")
  (id_num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocityArray>) ostream)
  "Serializes a message object of type '<VelocityArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vel))
  (cl:let* ((signed (cl:slot-value msg 'id_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocityArray>) istream)
  "Deserializes a message object of type '<VelocityArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vel) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vel)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'trajectory_generation-msg:Velocity))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id_num) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocityArray>)))
  "Returns string type for a message object of type '<VelocityArray>"
  "trajectory_generation/VelocityArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityArray)))
  "Returns string type for a message object of type 'VelocityArray"
  "trajectory_generation/VelocityArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocityArray>)))
  "Returns md5sum for a message object of type '<VelocityArray>"
  "bcc1efcddefb9fb7c3d171157cf9e178")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocityArray)))
  "Returns md5sum for a message object of type 'VelocityArray"
  "bcc1efcddefb9fb7c3d171157cf9e178")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocityArray>)))
  "Returns full string definition for message of type '<VelocityArray>"
  (cl:format cl:nil "Header header~%~%Velocity[] vel~%int64 id_num~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_generation/Velocity~%Header header~%~%float32 op_linear~%float32 op_angular~%int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocityArray)))
  "Returns full string definition for message of type 'VelocityArray"
  (cl:format cl:nil "Header header~%~%Velocity[] vel~%int64 id_num~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_generation/Velocity~%Header header~%~%float32 op_linear~%float32 op_angular~%int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocityArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocityArray>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocityArray
    (cl:cons ':header (header msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':id_num (id_num msg))
))
