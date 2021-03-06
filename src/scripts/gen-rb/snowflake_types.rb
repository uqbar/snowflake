#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#


class InvalidSystemClock < ::Thrift::Exception
  include ::Thrift::Struct, ::Thrift::Struct_Union
  def initialize(message=nil)
    super()
    self.message = message
  end

  MESSAGE = 1

  FIELDS = {
    MESSAGE => {:type => ::Thrift::Types::STRING, :name => 'message'}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class InvalidUserAgentError < ::Thrift::Exception
  include ::Thrift::Struct, ::Thrift::Struct_Union
  def initialize(message=nil)
    super()
    self.message = message
  end

  MESSAGE = 1

  FIELDS = {
    MESSAGE => {:type => ::Thrift::Types::STRING, :name => 'message'}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class AuditLogEntry
  include ::Thrift::Struct, ::Thrift::Struct_Union
  ID = 1
  USERAGENT = 2
  TAG = 3

  FIELDS = {
    ID => {:type => ::Thrift::Types::I64, :name => 'id'},
    USERAGENT => {:type => ::Thrift::Types::STRING, :name => 'useragent'},
    TAG => {:type => ::Thrift::Types::I64, :name => 'tag'}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

