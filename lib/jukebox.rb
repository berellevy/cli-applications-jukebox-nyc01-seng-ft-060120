require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# help
def help
  puts "I accept the following commands:"
  puts " - help : displays this help message"
  puts " - list : displays a list of songs you can play"
  puts " - play : lets you choose a song to play"
  puts " - exit : exits this program"

end


# play
def play(songs_array)
  puts "Please enter a song name or number:"
  response = gets.strip
  # binding.pry
  if response.to_i > 0 && songs_array[response.to_i-1]
    puts songs_array[response.to_i-1]
  elsif songs_array.any?(response)
    puts response
  else
    puts "Invalid input, please try again"
  end

end

# list
def list(songs_array)
  songs_array.each_with_index do |val, index|
    puts "#{index+1}. #{val}"
  end

end


# exit
def exit_jukebox

  puts "Goodbye"
end
