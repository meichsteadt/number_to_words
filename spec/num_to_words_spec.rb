require('rspec')
require('num_to_words')

describe("Fixnum#num_to_words") do
  it('turns a number into the english word equivalent') do
    expect(3.num_to_words()).to(eq("three"))
  end
  it('turns a number into the english word equivalent less than twenty') do
    expect(19.num_to_words()).to(eq("nineteen"))
  end
  it('turns a number into the english word equivalent more than twenty') do
    expect(99.num_to_words()).to(eq("ninety nine"))
  end
  it('turns a number into the english word equivalent more than 100 but less than 1000 divisible by 10') do
    expect(300.num_to_words()).to(eq("three hundred"))
  end
  it('turns a number into the english word equivalent more than 100 but less than 1000') do
    expect(380.num_to_words()).to(eq("three hundred eighty"))
    expect(382.num_to_words()).to(eq("three hundred eighty two"))
  end
  it('turns a number into the english word equivalent more than 1000 but less than 10000') do
    expect(3000.num_to_words()).to(eq("three thousand"))
    expect(3822.num_to_words()).to(eq("three thousand eight hundred twenty two"))
  end
  it('turns a number into the english word equivalent more than 10000 but less than 100000') do
    expect(30000.num_to_words()).to(eq("thirty thousand"))
    expect(31822.num_to_words()).to(eq("thirty one thousand eight hundred twenty two"))
  end
  it('turns a number into the english word equivalent more than 100000 but less than 1000000') do
    expect(118000.num_to_words()).to(eq("one hundred eighteen thousand"))
    expect(300000.num_to_words()).to(eq("three hundred thousand"))
    expect(311822.num_to_words()).to(eq("three hundred eleven thousand eight hundred twenty two"))
    expect(911811.num_to_words()).to(eq("nine hundred eleven thousand eight hundred eleven"))
  end
  it('turns a number into the english word equivalent more than 1,000,000 but less than 10,000,000') do
    expect(1000000.num_to_words()).to(eq("one million"))
    expect(3000000.num_to_words()).to(eq("three million"))
    expect(3118220.num_to_words()).to(eq("three million one hundred eighteen thousand two hundred twenty"))
  end
  it('turns a number into the english word equivalent more than 10,000,000 but less than 1,000,000,000') do
    expect(30000000.num_to_words()).to(eq("thirty million"))
    expect(315182201.num_to_words()).to(eq("three hundred fifteen million one hundred eighty two thousand two hundred one"))
  end
  it('turns a number into the english word equivalent more than 1,000,000,000 but less than 1,000,000,000,000') do
    expect(5000000000.num_to_words()).to(eq("five billion"))
    expect(3518220190.num_to_words()).to(eq("three billion five hundred eighteen million two hundred twenty thousand one hundred ninety"))
    expect(999999999999.num_to_words()).to(eq("nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine"))
  end
end
