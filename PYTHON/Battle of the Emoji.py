# Calculate the power of an emoji team
def emoji_power(team):
  power = 0

  for emoji in team:
    unicode_number = ord(emoji)
    power = power + unicode_number

  return power

# Add your code after this.

# 😂😽🙈

# 😖😵😧

t1 = input('Emoji team 1: ')
t2 = input('Emoji team 2: ')

tt1 = emoji_power(t1)
tt2 = emoji_power(t2)

if tt1 >tt2:
  print('Team 1 wins!');
elif tt2 >tt1:
  print('Team 2 wins!');
else:
  print('A tie!')