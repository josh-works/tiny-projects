# questions: How do I add md5 hashing? "require blahblahblah".
# Seemed to be a big step up in complexity.
#
# Do I really have to type e = Encryptor.new everytime I loaded
# this file in IRB?

class Encryptor
  # hash = -137084545012930971
  # password = ""
  # while password.hash != hash
  #   puts "password required to continue: > "
  #   password = gets.chomp
  #   puts password
  #   puts password.hash
  # end

  def cipher(rotation)
    # characters = (' '..'z').to_a
    characters = ('A'..'z').to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end

  def text_transform(letter,rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[letter]
  end

  def encrypt(string, rotation)
    letters = string.split('').to_a
    encrypt_a = letters.collect do |encrypted|
      text_transform(encrypted, rotation)
    end
    encrypt_a.join
  end

  def decrypt(string, rotation)
    letters = string.split('').to_a
    decrypt_a = letters.collect do |decrypted|
      text_transform(decrypted, - rotation)
    end
    decrypt_a.join
  end

  def encrypt_file(filename, rotation)

    # create file handle to the input file
    file = File.open(filename, "r")

    # read text of input file
    message_to_encrypt = file.read
    encrypted_message = encrypt(message_to_encrypt, rotation)
    output = File.open("#{filename}.#{rotation}.encrypted", "w")
    output.write(encrypted_message)
    output.close
    puts "#{encrypted_message} | written to new file"
  end

  def decrypt_file(filename, rotation)
      file = File.open(filename, "r")
      message_to_decrypt = file.read
      decrypted_message = decrypt(message_to_decrypt, rotation)
      output = File.open("#{filename.gsub("encrypted", "decrypted")}", "w")
      output.write(decrypted_message)
      output.close
  end

  def crack(message)
    alphabet = (' '..'z').to_a
    alphabet.length.times do |attempt|
      puts decrypt(message,attempt)
    end
  end

end


# e = Encryptor.new
# puts "what do you want to encrypt? > "
# user_input = gets.chomp
