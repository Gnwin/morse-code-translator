def decode(str)
  alphabets = %w[a b c d e f g h i j k l m n o p q r s t u
                 v w x y z]
  morse_alphabets = ['.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....', '..', '.---', '-.-', '.-..', '--', '-.',
                     '---', '.--.', '--.-', '.-.', '...', '-', '..-', '...-', '.--', '-..-', '-.--', '--..']

  str.split('   ').map(&:split).map do |a|
    arr = []
    a.each_index do |i|
      morse_alphabets.each_index do |j|
        arr << alphabets[j] if a[i] == morse_alphabets[j]
      end
    end
    arr
  end.map(&:join).join(' ').capitalize
end

p decode('.-')
p decode('-- -.--')
p decode('-- -.--   -. .- -- .')
p decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
