# Your code goes here!
require 'pry'

class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(array)
        # array.delete_if {|item| item.length != word.length}
        array = array.map do |instance|
            # binding.pry
            if word.split('').sort == instance.split('').sort
                instance
            end
        end
        array.delete_if {|item| item == nil}
    end

end

# this = Anagram.new("this")
# this.match(["sit", "shit", "street"])