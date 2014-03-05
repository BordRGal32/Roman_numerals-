def roman_numerals(number) 
  roman_ones = {"1" => "I", "2" => "II", "3" => "III", "4" => "IV", "5" => "V", "6" => "VI", "7" => "VII", "8" => "VIII", "9" => "IX"}
  number_arrays = number.split("")
  initial_symbols = ["", "", "", ""]
  number_arrays.each { |number_array| initial_symbols << roman_ones[number_array] }
  initial_symbols.reverse!
  output = to_thousands(initial_symbols[3]) + to_hundereds(initial_symbols[2]) + to_tens(initial_symbols[1]) + initial_symbols[0]
end 
def to_tens(roman_array)
  roman_array.gsub!(/[I]/, "X")
  roman_array.gsub!(/[V]/, "L")
  roman_array
end
def to_hundereds(roman_array)
  roman_array.gsub!(/[I]/, "C")
  roman_array.gsub!(/[V]/, "D")
  roman_array
end
def to_thousands(roman_array)
  roman_array.gsub!(/[I]/, "M")
  roman_array.gsub!(/[V]/, "MMM")
  roman_array
end



