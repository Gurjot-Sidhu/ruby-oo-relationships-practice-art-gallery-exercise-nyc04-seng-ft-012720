require_relative '../config/environment.rb'

graham = Artist.new("Graham", 29)
georgia = Artist.new("Georgia O'Keefe", 59)
frida = Artist.new("Frida Kahlo", 30)
jemy = Artist.new("Jemy Chen", 99)

phyllis_kind_gallery = Gallery.new("Phyllis Kind Gallery", "Chicago, IL")
met = Gallery.new("Teh Met", "NYC, NY")

cat = Painting.new("cat", 2000, graham, met)
scream = Painting.new("Scream", 87_000, jemy, met)
scream_2 = Painting.new("Scream 2", 187_000, jemy, met)
starry_night = Painting.new("Starry Night", 7_000, frida, phyllis_kind_gallery)
flower = Painting.new("Flower", 1_000_000, georgia, phyllis_kind_gallery)


#p jemy.paintings
#p jemy.galleries
#p jemy.cities
#p Artist.total_expierience
#p graham.create_painting("cash", 2000, met)
#p Painting.total_price
#p Artist.most_prolific

#p met.paintings
#p met.artists
#p met.artist_names

p met.most_expensive_painting