class Song
  
  attr_accessor :title, :artist

  def initialize
    @title = title # String class
    @artist = Artist.new(artist)
  end

  def serialize
    File.open("./tmp/#{@title.gsub(" ","_").downcase}.txt", 'w') { |file| file.write "#{@artist.name} - #{@title}"}
  end

end

=begin
Make two classes, Song and Artist. The Song class should have a method #serialize 
that saves a new file to the tmp folder. For instance, if the artist's name is 
Onerepublic and the song is "Counting Stars", 
the serialize method should save a file called counting_stars.txt to the tmp folder. 
The file should countain the string "Onerepublic - Counting Stars".
INSTRUCTIONS

Implement a song class and an artist class. 
Look at the specs or run your testing suite to see what the classes should look like.
Write a serialize method in the song class that:
Replaces spaces in the song title with underscores and makes every character lower case.
Uses this serialized version of the title as the name of a new temporary text (.txt) file 
and saves it in the tmp/ folder.
Writes the name of the artist then the name of the song separated by spaces and a dash (-) 
in the file.
=end
