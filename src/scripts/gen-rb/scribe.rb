#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'facebook_service'
require 'scribe_types'

module Scribe
  class Client < FacebookService::Client 
    include ::Thrift::Client

    def Log(messages)
      send_Log(messages)
      return recv_Log()
    end

    def send_Log(messages)
      send_message('Log', Log_args, :messages => messages)
    end

    def recv_Log()
      result = receive_message(Log_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'Log failed: unknown result')
    end

  end

  class Processor < FacebookService::Processor 
    include ::Thrift::Processor

    def process_Log(seqid, iprot, oprot)
      args = read_args(iprot, Log_args)
      result = Log_result.new()
      result.success = @handler.Log(args.messages)
      write_result(result, oprot, 'Log', seqid)
    end

  end

  # HELPER FUNCTIONS AND STRUCTURES

  class Log_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    MESSAGES = 1

    FIELDS = {
      MESSAGES => {:type => ::Thrift::Types::LIST, :name => 'messages', :element => {:type => ::Thrift::Types::STRUCT, :class => LogEntry}}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Log_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::I32, :name => 'success', :enum_class => ResultCode}
    }

    def struct_fields; FIELDS; end

    def validate
      unless @success.nil? || ResultCode::VALID_VALUES.include?(@success)
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field success!')
      end
    end

    ::Thrift::Struct.generate_accessors self
  end

end

