require 'units'

module Kibi
  class << self
    include Units

    def humanize bytes
      case
      when bytes >= yobibyte
        [bytes.to_f / yobibyte, :yb]
      when bytes >= zebibyte
        [bytes.to_f / zebibyte, :zb]
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

  end
end