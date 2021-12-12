# Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
# Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
# Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
# Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
require 'open-uri'

List.destroy_all
Movie.destroy_all
Bookmark.destroy_all

puts "clean db"

list1image1 = URI.open("https://res.cloudinary.com/dwmodx0pe/image/upload/v1639063724/dominik-vanyi-5Fxuo7x-eyg-unsplash_twquvh.jpg")
list1 = List.create(name: "Comedy")
list1.photo.attach(io: list1image1, filename: 'dominik-vanyi-5Fxuo7x-eyg-unsplash_twquvh.jpg', content_type: 'image/jpg')

puts "list 1 created"

list2image2 = URI.open("https://res.cloudinary.com/dwmodx0pe/image/upload/v1639063720/alexander-popov-H-FjwCHavfo-unsplash_wfqlgd.jpg")
list2 = List.create(name: "Romance")
list2.photo.attach(io: list2image2, filename: 'alexander-popov-H-FjwCHavfo-unsplash_wfqlgd.jpg', content_type: 'image/jpg')

puts "list 2 created"

list3image3 = URI.open("https://res.cloudinary.com/dwmodx0pe/image/upload/v1639063711/santosh-313-I-YUITHQPCY-unsplash_uzkozh.jpg")
list3 = List.create(name: "Action")
list3.photo.attach(io: list3image3, filename: 'santosh-313-I-YUITHQPCY-unsplash_uzkozh.jpg', content_type: 'image/jpg')

puts "list 3 created"

list4image4 = URI.open("https://res.cloudinary.com/dwmodx0pe/image/upload/v1639063696/elia-pellegrini-CrEpcul4DZ0-unsplash_eq6i5f.jpg")
list4 = List.create(name: "Sci-Fi")
list4.photo.attach(io: list4image4, filename: 'elia-pellegrini-CrEpcul4DZ0-unsplash_eq6i5f.jpg', content_type: 'image/jpg')

puts "list 4 created"

puts "Seeding complete"
