class String
define_method(:scrabble) do
scores = { 1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
2 => ["D", "G"],
3 => ["B", "C", "M", "P"],
4 => ["F", "H", "V", "W", "Y"],
5 => ["K"],
8 => ["J", "X"],
10 => ["Q", "Z"] }
keys = [1,2,3,4,5,8,10]
final_score = 0
self_up = self.upcase()
self_split = self_up.split("")
self_split.each() do |s_letter|
keys.each() do |key|
if (scores[key].include?(s_letter))
final_score = final_score.+(key)
end
end
end
final_score
end
end