def roman_numeral(n):
  if n > 12:
    result = 'bad number'
  elif n < 1:
    result = 'bad number'
  else:
    result = chr(8543 + n)

  return result

if __name__ == '__main__':
  print(roman_numeral(1))
  print(roman_numeral(2))
  print(roman_numeral(10))
  print(roman_numeral(13))

  # Add your own testing after this.
  
