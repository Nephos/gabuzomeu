module Gabuzomeu
  module Fixnum

    GABUZOMEU = %w(ga bu zo meu)

    def to_s(base = 10)
      if base == :gabuzomeu
        self.to_s(4).each_char.map { |char| GABUZOMEU[char.to_i] }.join(" ")
      else
        super(base)
      end
    end
  end
end

class Fixnum
  prepend Gabuzomeu::Fixnum
end
