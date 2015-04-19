class MadLibs
def initialize

end

def run
puts 'Welcome to the game: enter nouns, verbs, and adjectives as prompted'

print 'Name: '
name = gets.chomp.downcase.capitalize

print 'adjective: '
adjective1 = gets.chomp.downcase

print 'verb (past-tense): '
verb1 = gets.chomp.downcase

print 'noun: '
noun1 = gets.chomp.downcase

print 'adjective: '
adjective2 = gets.chomp.downcase

print name + ' was a very ' + adjective1 + ' person. '
print 'One day, ' + name + ' ' + verb1 + ' to the store to buy a ' + noun1
puts '. This ' + noun1 + ' broke all over him and made his pants smell '
print adjective2 + '. ' + name + ' never went back to that store again. TE'
end
end