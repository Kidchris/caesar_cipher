def caesar_cipher (message, shift = 1)
    encrypt = String.new
    message.each_char do |i|
        if i.ord.between?(65,90) || i.ord.between?(97,122)
            new = i.ord + shift
            if (new > 90 && i.ord < 90) || new > 122
                new -= 26
            end
            encrypt += new.chr
        else 
            encrypt += i
        end
    end
  puts encrypt
end

caesar_cipher('Default expemple ! ', 2)
