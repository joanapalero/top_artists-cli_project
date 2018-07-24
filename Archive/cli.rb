class TopArtists::Cli 

  def call 
    puts "Welcome to Joana's Favorite Top 3 Artists"
    puts " "
    list_artists
    main_menu
    bye
    # puts "Loading..."
    # TopArtists::Scraper.new("https://www.ranker.com/list/best-rap-albums-2018/ranker-music?ref=gnrtednxtlst&pos=1&ltype=l&l=2657569&g=2&a=0").scrape
    # main_menu
  end
  
  def list_artists
    puts "Here are Joana's favorite top hit artists for Summer 2018:"
    puts <<-DOC.gsub /^\s*/, ''
      1.Kendrick Lamar
      2.Cardi B
      3.Drake
    DOC
    puts " "
    @artist = TopArtists::Artists 
  end
  
  def main_menu
    puts "Type the following to see songs by artist:"
      puts "Type 1 for Kendrick Lamar"
      puts "Type 2 for Cardi B"
      puts "Type 3 for Drake"
      puts "Type exit to exit this program"
      puts " "
    input = nil
    while input != "exit"
      puts "Enter 'list' to see the list of artists or 'exit'."
      puts " "
    input = gets.strip.downcase
      case input
        when "1"
          puts "Kendrick Lamar top songs:"
          puts "1. HUMBLE."
          puts "2. DNA."
          puts "3. LOVE."
          puts " "
        when "2"
          puts "Cardi B top songs:"
          puts "1. Bodak Yellow"
          puts "2. Bartier Cardi"
          puts "3. Be Careful"
          puts " "
        when "3"
          puts "Drake top songs:"
          puts "1. God's Plan"
          puts "2. I'm Upset"
          puts "3. Nice for What"
          puts " "
        when "list"
          list_artists
        else
          puts " "
          puts "Please try again. Type 'list' or 'exit'."
          puts " "
      end
  end
end
  
  def bye
    puts "Thank you for checking out Joana's list. Have a great day."
  end
end