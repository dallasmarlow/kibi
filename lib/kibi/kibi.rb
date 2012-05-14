require 'units'
require 'pathname'

module Kibi
  class << self
    include Units

    def humanize bytes
      case
      when bytes >= yobibyte
        [bytes.to_f / yobibyte, :yb]
      when bytes >= zebibyte
        [bytes.to_f / zebibyte, :zb]
      when bytes >= exbibyte
        [bytes.to_f / exbibyte, :eb]
      when bytes >= pebibyte
        [bytes.to_f / pebibyte, :pb]
      when bytes >= tebibyte
        [bytes.to_f / tebibyte, :tb]
      when bytes >= gibibyte
        [bytes.to_f / gibibyte, :gb]
      when bytes >= mebibyte
        [bytes.to_f / mebibyte, :mb]
      when bytes >= kibibyte
        [bytes.to_f / kibibyte, :kb]
      else
        [bytes, :b]
      end
    end

    def humanize_file_size path
      p = Pathname.new File.expand_path(path)
      raise "File #{path} does not exist" unless p.exist?
      raise "Path must be a file (#{path} is a directory)" if p.directory?

      humanize p.size
    end

    def bytes_to bytes, unit
      case unit
      when :k, :kb, :kibibytes, :kilobytes
        bytes.to_f / kibibyte
      when :m, :mb, :mebibytes, :megabytes
        bytes.to_f / mebibyte
      when :g, :gb, :gibibytes, :gigabytes
        bytes.to_f / gibibyte
      when :t, :tb, :tebibytes, :terabytes
        bytes.to_f / tebibyte
      when :p, :pb, :pebibytes, :petabytes
        bytes.to_f / pebibyte
      when :e, :eb, :exbibytes, :exabytes
        bytes.to_f / exbibyte
      when :z, :zb, :zebibytes, :zettabytes
        bytes.to_f / zebibyte
      when :y, :yb, :yobibytes, :yottabytes
        bytes.to_f / yobibyte
      end
    end

  end
end
