class PigLatinizer
    attr_reader :text

    def piglatinize(text)
        text.split(" ").map do |word|
           vowel_index = word.split("").find_index{|char| ["a", "e", "i", "o", "u"].include?(char.downcase)}
            if  vowel_index > 0
                first_constens = text.slice(0...vowel_index) 
                the_rest = text.slice(vowel_index..-1)
                pig_word = the_rest + first_constens + "ay"
               return pig_word
            else 
                text + "way"
            end            
        end.join(" ")
        # split the text into words then for each word do this
        # if it starts with a vowel then add way at the end of the word
        # else find the postion of first vowel
        # then move however many letters are infrount of it and move them to the back and add "ay"
        # join the words back together
    end
end