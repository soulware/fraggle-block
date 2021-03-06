## Generated from msg.proto for proto
require "beefcake"

module Fraggle
  module Block

    class Request
      include Beefcake::Message

      module Verb
        GET = 1
        SET = 2
        DEL = 3
        ESET = 4
        REV = 5
        NOP = 7
        WATCH = 8
        WALK = 9
        CANCEL = 10
        GETDIR = 14
        STAT = 16
      end

      required :tag, :int32, 1
      required :verb, Request::Verb, 2
      optional :path, :string, 4
      optional :value, :bytes, 5
      optional :other_tag, :int32, 6
      optional :offset, :int32, 7
      optional :limit, :int32, 8
      optional :rev, :int64, 9

    end

    class Response
      include Beefcake::Message

      module Err
        OTHER = 127
        TAG_IN_USE = 1
        UNKNOWN_VERB = 2
        REDIRECT = 3
        TOO_LATE = 4
        REV_MISMATCH = 5
        BAD_PATH = 6
        MISSING_ARG = 7
        NOTDIR = 20
        ISDIR = 21
        NOENT = 22
      end

      required :tag, :int32, 1
      required :flags, :int32, 2
      optional :rev, :int64, 3
      optional :path, :string, 5
      optional :value, :bytes, 6
      optional :len, :int32, 8
      optional :err_code, Response::Err, 100
      optional :err_detail, :string, 101

    end
  end
end
