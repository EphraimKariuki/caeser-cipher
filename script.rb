def caesar_cipher(string, shift)
    result = ""
    string.each_char do |char|
        #check if character is an alphabet
        if char.match(/[a-zA-Z]/)
            #return the index of the character from the alphabets using ASCII code
            base = char =~ /[a-z]/ ? 'a' : 'A'
            char_index = char.ord - base.ord

            #return the a shifted index with a 'z' to 'a' wrap
            new_char_index = (char_index + shift) % 26
            new_char_ord = base.ord + new_char_index

            #return a new character using the shifted index
            new_char = new_char_ord.chr

            #Return a string that adds new character to the result string
            result += new_char
        else 
            #adds the character to the result string
            result += char
        end     
    end 

    return result      
end  

#Example usage:
plaintext = "Hello, World"
shift_value = 5

encrypted_text = caesar_cipher(plaintext, shift_value)
puts "Encrypted: #{encrypted_text}"

decrypted_text = caesar_cipher(encrypted_text, -shift_value)
puts "Decrypted: #{decrypted_text}"