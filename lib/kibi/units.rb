module Kibi
  module Units

    def kibibyte
      2 ** 10
    end
    alias_method :kilobyte, :kibibyte

    def kibibytes value
      value * kibibyte
    end
    alias_method :kilobytes, :kibibytes

    def mebibyte
      2 ** 20
    end
    alias_method :megabyte, :mebibyte

    def mebibytes value
      value * mebibyte
    end
    alias_method :megabytes, :mebibytes

    def gibibyte
      2 ** 30
    end
    alias_method :gigabyte, :gibibyte

    def gibibytes value
      value * gibibyte
    end
    alias_method :gigabytes, :gibibytes

    def tebibyte
      2 ** 40
    end
    alias_method :terabyte, :tebibyte

    def tebibytes value
      value * tebibyte
    end
    alias_method :terabytes, :tebibytes

    def pebibyte
      2 ** 50     
    end
    alias_method :petabyte, :pebibyte

    def pebibytes value
      value * pebibyte
    end
    alias_method :petabytes, :pebibytes

    def exbibyte
      2 ** 60
    end
    alias_method :exabyte, :exbibyte

    def exbibytes value
      value * exbibyte
    end
    alias_method :exabytes, :exbibytes

    def zebibyte
      2 ** 70
    end
    alias_method :zettabyte, :zebibyte

    def zebibytes value
      value * zebibyte
    end
    alias_method :zettabytes, :zebibytes

    def yobibyte
      2 ** 80
    end
    alias_method :yottabyte, :yobibyte

    def yobibytes value
      value * yobibyte
    end
    alias_method :yottabytes, :yobibytes

  end
end