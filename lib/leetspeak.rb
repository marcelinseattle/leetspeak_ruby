
class String
  define_method(:leetspeak) do
    split = self.split("")
    answer = []

    split.each_with_index() do |character, i|
      if character.==('e')
        answer.push('3')
      elsif character.==('o')
        answer.push('0')
      elsif character.==('I')
        answer.push('1')
      elsif character.==('s') && i.!=(0) && split[i-1].!=(' ')
        answer.push('z')
      elsif character.!=('.')
        answer.push(character)
      end
    end

    answer.join("")
  end
end
