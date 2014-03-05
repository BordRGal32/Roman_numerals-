require("rspec")
require("roman_numerals")

describe("roman_numerals") do
    it('returns IV when given 4, or the corect roman numeral when given a digit from one to five') do
      roman_numerals("4").should(eq("IV"))
    end
    it('it returns the correct roman numeral up until 99') do
      roman_numerals("13").should(eq("XIII"))
    end 
    it("returns the correct roman numeral up to 999") do
      roman_numerals("234").should(eq("CCXXXIV"))
    end
    it('returns the correct roman numeral up to 4,999') do
      roman_numerals("1234").should(eq("MCCXXXIV"))
    end 
end
