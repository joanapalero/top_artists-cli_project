class TopArtists::Cli 

  def call 
    puts "Welcome to Joana's Favorite Top 3 Artists"
    list_artists
    main_menu
  end
  
  def list_artists
    puts "Here are Joana's favorite top hit artists for Summer 2018:"
    # puts "Enter the number that corresponds to each artist."
    @artists = TopArtists::Artists.list 
    @artists.each.with_index(1) do |artist, i|
      puts "#{i}. #{artist.name}"
    end
  end
  
  def main_menu
    input = nil
    while input != "exit"
    #Get input
      puts "Enter the number that corresponds to each artist."
      puts "Enter 'list' to see a list of artists or 'exit'."
      puts " "
    input = gets.strip.downcase
    
    #logic for input
    #Choosing 4 caused the error
      if input.to_i > 0 && input.to_i < 4
        the_artist = @artists[input.to_i-1]
      puts "#{the_artist.name} Top 3 Songs - #{the_artist.songs}"
        elsif input == "list"
          list_artists
        elsif input == "exit"  
          bye
        else
      puts "Please try again. Type 'list' or 'exit'."
    end
  end
end
  
  def bye
    puts "Thank you for checking out Joana's list. Have a great day."
  end
end