basketball_players = [
  { first_name: "Jill", last_name: "Huang", team: "Gators" },
  { first_name: "Janko", last_name: "Barton", team: "Sharks" },
  { first_name: "Wanda", last_name: "Vakulskas", team: "Sharks" },
  { first_name: "Jill", last_name: "Moloney", team: "Gators" },
  { first_name: "Luuk", last_name: "Watkins", team: "Gators" }
]

football_players = [
  { first_name: "Hanzla", last_name: "Radosti", team: "32ers" },
  { first_name: "Tina", last_name: "Watkins", team: "Barleycorns" },
  { first_name: "Alex", last_name: "Patel", team: "32ers" },
  { first_name: "Jill", last_name: "Huang", team: "Barleycorns" },
  { first_name: "Wanda", last_name: "Vakulskas", team: "Barleycorns" }
]

# An O(N + M) time complexity method to collect and return the full names of
# those athletes who play both sports.
def dual_athletes(basketball_players, football_players) # rubocop:disable Metrics/MethodLength
  hash = {}
  array = []

  basketball_players.each do |player|
    full_name = "#{player[:first_name]} #{player[:last_name]}"
    hash[full_name] = true
  end

  football_players.each do |player|
    full_name = "#{player[:first_name]} #{player[:last_name]}"
    array << full_name if hash[full_name]
  end

  array
end

p dual_athletes(basketball_players, football_players) # => ["Jill Huang", "Wanda Vakulskas"]
