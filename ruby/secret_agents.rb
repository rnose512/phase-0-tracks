#encrypt method will take a string as a parameter and loop through each index of the string, and change it to the next letter. If there is a "z", it will change it to "aa". We'll create an if statement which will delete one of the "a".
def encrypt(string)
  i = 0
  while i < string.length

    if string[i] == "z"
        string[i] = "a"
    else
      string[i] = string[i].next
    end
  i += 1
  end
  puts string
end

encrypt("abc")
encrypt("zed")

#decrypt method will take a string as a parameter and loop through each index, and change it to the previous letter of the alphabet. In order to do so, we'll declare a string for the alphabet and replace each index of the string with the previous index of the alphabet.
def decrypt(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  i = 0
  while i < string.length
    string[i] = alphabet[alphabet.index(string[i])-1]
    i += 1
  end
  puts string
end

decrypt("bcd")
decrypt("afe")

decrypt(encrypt("swordfish"))