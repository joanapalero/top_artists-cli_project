class TopArtists::Artists 
  attr_accessor :name, :songs
  
  def self.list 
    # Scrape for data from site and return deals based on the data.
    
    self.scrape_artists
  end
  
  def self.scrape_artists
    
    artists = []
    
    artists << self.scrape_ranker1
    artists << self.scrape_ranker2
    artists << self.scrape_ranker3
    
  #Go to ranker 
  #Extract the properties
  #Instantiate artists 
      
    artists
  end
      
  def self.scrape_ranker1
    doc = Nokogiri::HTML(open("https://www.ranker.com/list/best-rap-albums-2018/ranker-music?ref=gnrtednxtlst&pos=1&ltype=l&l=2657569&g=2&a=0"))
    
    artist = self.new
    artist.name = doc.search("span.listItem__properties")[5].text.strip
    artist.songs = doc.search("span.listItem__blather")[5].text.gsub(/"/) {|s| " "}.strip
    artist
  end
  
  def self.scrape_ranker2
    doc = Nokogiri::HTML(open("https://www.ranker.com/list/best-rap-albums-2018/ranker-music?ref=gnrtednxtlst&pos=1&ltype=l&l=2657569&g=2&a=0"))
    
    artist = self.new
    artist.name = doc.search("span.listItem__properties")[9].text.strip
    artist.songs = doc.search("span.listItem__blather")[9].text.gsub(/"/) {|s| " "}.strip
    artist
  end
  
    def self.scrape_ranker3
      doc = Nokogiri::HTML(open("https://www.ranker.com/list/best-rap-albums-2018/ranker-music?ref=gnrtednxtlst&pos=1&ltype=l&l=2657569&g=2&a=0"))
      
      artist = self.new
      artist.name = doc.search("span.listItem__properties")[35].text.strip
      artist.songs = doc.search("span.listItem__blather")[35].text.gsub(/"/) {|s| " "}.strip
      artist
  end
end