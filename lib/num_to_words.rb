class Fixnum
  define_method(:num_to_words) do
    word_equiv = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10=>"ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
    number_word_son = ""
    if self.<(20) || self.%(10) == 0 && self.<(100)
      if self == 0
        return number_word_son
      end
      word_equiv.fetch(self)
    elsif self < 100
      number_word_son = word_equiv.fetch(self.-((self.%(10)))) + " "
      number_word_son+= (self.%(10)).num_to_words()
    elsif self.<(1000)
      number_word_son = word_equiv.fetch(self.-(self.%(100))./(100)) + " hundred"
      if self.%(100) != 0
        number_word_son+= " "
      end
      number_word_son+= (self.%(100)).num_to_words()
    elsif self.<(10000)
      number_word_son = word_equiv.fetch(self.-(self.%(1000))./(1000)) + " thousand"
      if self.%(1000) != 0
        number_word_son+= " "
      end
      number_word_son+= (self.%(1000)).num_to_words()
    elsif self.<(1000000)
      number_word_son = (self.-(self.%(1000))./(1000)).num_to_words() + " thousand"
      if self.%(1000) != 0
        number_word_son+= " "
      end
      number_word_son+= (self.%(1000)).num_to_words()
    elsif self.<(10000000)
      number_word_son = (self.-(self.%(1000000))./(1000000)).num_to_words() + " million"
      if self.%(1000000) != 0
        number_word_son+= " "
      end
      number_word_son+= (self.%(1000000)).num_to_words()
    elsif self.<(1000000000)
      number_word_son = (self.-(self.%(1000000))./(1000000)).num_to_words() + " million"
      if self.%(1000000) != 0
        number_word_son+= " "
      end
      number_word_son+= (self.%(1000000)).num_to_words()
    elsif self.<(10000000000)
      number_word_son = (self.-(self.%(1000000000))./(1000000000)).num_to_words() + " billion"
      if self.%(1000000000) != 0
        number_word_son+= " "
      end
      number_word_son+= (self.%(1000000000)).num_to_words()
    elsif self.<(1000000000000)
      number_word_son = (self.-(self.%(1000000000))./(1000000000)).num_to_words() + " billion"
      if self.%(1000000000) != 0
        number_word_son+= " "
      end
      number_word_son+= (self.%(1000000000)).num_to_words()
    end
  end
end
