; Auto-generated. Do not edit!


(cl:in-package trajectory_generation-msg)


;//! \htmlinclude RoadProperty.msg.html

(cl:defclass <RoadProperty> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (phi
    :reader phi
    :initarg :phi
    :type cl:float
    :initform 0.0)
   (c0
    :reader c0
    :initarg :c0
    :type cl:float
    :initform 0.0)
   (c1
    :reader c1
    :initarg :c1
    :type cl:float
    :initform 0.0)
   (w
    :reader w
    :initarg :w
    :type cl:float
    :initform 0.0)
   (curvature
    :reader curvature
    :initarg :curvature
    :type cl:float
    :initform 0.0)
   (inter_angle
    :reader inter_angle
    :initarg :inter_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass RoadProperty (<RoadProperty>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadProperty>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadProperty)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trajectory_generation-msg:<RoadProperty> is deprecated: use trajectory_generation-msg:RoadProperty instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RoadProperty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-msg:header-val is deprecated.  Use trajectory_generation-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <RoadProperty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-msg:y-val is deprecated.  Use trajectory_generation-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'phi-val :lambda-list '(m))
(cl:defmethod phi-val ((m <RoadProperty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-msg:phi-val is deprecated.  Use trajectory_generation-msg:phi instead.")
  (phi m))

(cl:ensure-generic-function 'c0-val :lambda-list '(m))
(cl:defmethod c0-val ((m <RoadProperty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-msg:c0-val is deprecated.  Use trajectory_generation-msg:c0 instead.")
  (c0 m))

(cl:ensure-generic-function 'c1-val :lambda-list '(m))
(cl:defmethod c1-val ((m <RoadProperty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-msg:c1-val is deprecated.  Use trajectory_generation-msg:c1 instead.")
  (c1 m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <RoadProperty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-msg:w-val is deprecated.  Use trajectory_generation-msg:w instead.")
  (w m))

(cl:ensure-generic-function 'curvature-val :lambda-list '(m))
(cl:defmethod curvature-val ((m <RoadProperty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-msg:curvature-val is deprecated.  Use trajectory_generation-msg:curvature instead.")
  (curvature m))

(cl:ensure-generic-function 'inter_angle-val :lambda-list '(m))
(cl:defmethod inter_angle-val ((m <RoadProperty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-msg:inter_angle-val is deprecated.  Use trajectory_generation-msg:inter_angle instead.")
  (inter_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadProperty>) ostream)
  "Serializes a message object of type '<RoadProperty>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'phi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'c0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'c1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'curvature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'inter_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadProperty>) istream)
  "Deserializes a message object of type '<RoadProperty>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'phi) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'c0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'c1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curvature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inter_angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadProperty>)))
  "Returns string type for a message object of type '<RoadProperty>"
  "trajectory_generation/RoadProperty")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadProperty)))
  "Returns string type for a message object of type 'RoadProperty"
  "trajectory_generation/RoadProperty")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadProperty>)))
  "Returns md5sum for a message object of type '<RoadProperty>"
  "fa95af025608c91e7baa5bd33f3a2197")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadProperty)))
  "Returns md5sum for a message object of type 'RoadProperty"
  "fa95af025608c91e7baa5bd33f3a2197")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadProperty>)))
  "Returns full string definition for message of type '<RoadProperty>"
  (cl:format cl:nil "Header header~%float32 y~%float32 phi ~%float32 c0 ~%float32 c1~%float32 w~%float32 curvature~%float32 inter_angle~%#nav_msgs/Path path~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadProperty)))
  "Returns full string definition for message of type 'RoadProperty"
  (cl:format cl:nil "Header header~%float32 y~%float32 phi ~%float32 c0 ~%float32 c1~%float32 w~%float32 curvature~%float32 inter_angle~%#nav_msgs/Path path~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadProperty>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadProperty>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadProperty
    (cl:cons ':header (header msg))
    (cl:cons ':y (y msg))
    (cl:cons ':phi (phi msg))
    (cl:cons ':c0 (c0 msg))
    (cl:cons ':c1 (c1 msg))
    (cl:cons ':w (w msg))
    (cl:cons ':curvature (curvature msg))
    (cl:cons ':inter_angle (inter_angle msg))
))
