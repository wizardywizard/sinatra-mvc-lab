class PigLatinizer
    attr_reader :text

    def piglatinize(text)
        if  text.split(" ").length == 1
            vowel_index = text.split("").find_index{|char| ["a", "e", "i", "o", "u"].include?(char.downcase)}
            if  vowel_index > 0
                first_constens = text.slice(0...vowel_index) 
                the_rest = text.slice(vowel_index..-1)
                pig_word = the_rest + first_constens + "ay"
               return pig_word
            else 
                text + "way"
            end            
        else 
            new_sentence = []
            text.split(" ").each do |word|              
                vowel_index = word.split("").find_index{|char| ["a", "e", "i", "o", "u"].include?(char.downcase)}
                if  vowel_index > 0
                    first_constens = word.slice(0...vowel_index) 
                    the_rest = word.slice(vowel_index..-1)
                    pig_word = the_rest + first_constens + "ay"
                   new_sentence << pig_word   
                else 
                    new_sentence << word + "way"
                end
            end
            new_sentence.join(" ")  
        end
    end
end 