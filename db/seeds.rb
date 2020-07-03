# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
User.reset_pk_sequence
Book.destroy_all
Book.reset_pk_sequence
Genre.destroy_all
Genre.reset_pk_sequence
Club.destroy_all
Club.reset_pk_sequence
ClubMembership.destroy_all
ClubMembership.reset_pk_sequence

u1 = User.create(username: "nicole08", first_name: "Nicole", last_name: "Wang", password_digest: BCrypt::Password.create('flatiron'))
u2 = User.create(username: "ac19", first_name: "Annabeth", last_name: "Chase", password_digest: BCrypt::Password.create('flatiron'))
u3 = User.create(username: "sussie", first_name: "Susan", last_name: "Colins", password_digest: BCrypt::Password.create('flatiron'))
u4 = User.create(username: "coffeedad", first_name: "Mac", last_name: "Donald", password_digest: BCrypt::Password.create('flatiron'))
u5 = User.create(username: "lightning", first_name: "Harry", last_name: "Potter", password_digest: BCrypt::Password.create('flatiron'))
u6 = User.create(username: "zoehart", first_name: "Zoe", last_name: "Hart", password_digest: BCrypt::Password.create('flatiron'))
u7 = User.create(username: "wadekinsella", first_name: "Wade", last_name: "Kinsella", password_digest: BCrypt::Password.create('flatiron'))
u8 = User.create(username: "ts1989", first_name: "Taylor", last_name: "Swift", password_digest: BCrypt::Password.create('flatiron'))
u9 = User.create(username: "demigod", first_name: "Percy", last_name: "Jackson", password_digest: BCrypt::Password.create('flatiron'))
u10 = User.create(username: "siddo", first_name: "Sid", last_name: "Hirschman", password_digest: BCrypt::Password.create('flatiron'))
u11 = User.create(username: "ruby", first_name: "Ruby", last_name: "Rails", password_digest: BCrypt::Password.create('flatiron'))
u12 = User.create(username: "prybabies", first_name: "Rails", last_name: "Ruby", password_digest: BCrypt::Password.create('flatiron'))
u13 = User.create(username: "flowersforever", first_name: "Chloe", last_name: "Jensen", password_digest: BCrypt::Password.create('flatiron'))
u14 = User.create(username: "pikachoo", first_name: "Mark", last_name: "Phillip", password_digest: BCrypt::Password.create('flatiron'))
u15 = User.create(username: "gossipgirl", first_name: "Ben", last_name: "Fisher", password_digest: BCrypt::Password.create('flatiron'))
u16 = User.create(username: "z00m", first_name: "Jacob", last_name: "Adams", password_digest: BCrypt::Password.create('flatiron'))
u17 = User.create(username: "bernice02", first_name: "Bernice", last_name: "Wang", password_digest: BCrypt::Password.create('flatiron'))

b1 = Book.create(title: "Harry Potter and the Order of the Phoenix", author_name: "J.K. Rowling", img_url: "https://images-na.ssl-images-amazon.com/images/I/91TpLHDnuFL.jpg")
b2 = Book.create(title: "The Hate You Give", author_name: "Angie Thomas", img_url: "https://images-na.ssl-images-amazon.com/images/I/71HZHHDbarL.jpg")
b3 = Book.create(title: "Children of Blood and Bone", author_name: "Tomi Adeyemi", img_url: "https://prodimage.images-bn.com/pimages/9781250170972_p0_v5_s1200x630.jpg")
b4 = Book.create(title: "To Kill a Mockingbird", author_name: "Harper Lee", img_url: "https://upload.wikimedia.org/wikipedia/commons/4/4f/To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg")
b5 = Book.create(title: "Becoming", author_name: "Michelle Obama", img_url: "https://images-na.ssl-images-amazon.com/images/I/81h2gWPTYJL.jpg")
b6 = Book.create(title: "Ruby on Rails", author_name: "Michael Hartl", img_url: "https://softcover.s3.amazonaws.com/636/ruby_on_rails_tutorial_4th_edition/images/cover-web.png")

c1 = Club.create(name: "Quarenteens", description: "For everyone teenager bored during quarantine", leader_id: u1.id, book_id: b2.id)
c2 = Club.create(name: "Platform 9 3/4", description: "For everyone who loves a good fantasy", leader_id: u10.id, book_id: b1.id)
c3 = Club.create(name: "Books on Empowerment", description: "Learn to become your best self with self-help books!", leader_id: u2.id, book_id: b5.id)
c4 = Club.create(name: "Pry Babies!", description: "Learn new skills", leader_id: u12.id, book_id: b6.id)
c5 = Club.create(name: "Pick Me Up", description: "For anyone who hates sad endings", leader_id: u17.id, book_id: b3.id)
c6 = Club.create(name: "Through the Lens of History", description: "Whisking you away to the past", leader_id: u11.id, book_id: b4.id)

g1 = Genre.create(name: "Fiction")
g2 = Genre.create(name: "Drama")
g3 = Genre.create(name: "Non-Fiction")
g4 = Genre.create(name: "Fantasy")

BookGenre.create(book_id: 1, genre_id: 4)
BookGenre.create(book_id: 2, genre_id: 1)
BookGenre.create(book_id: 3, genre_id: 4)
BookGenre.create(book_id: 4, genre_id: 2)
BookGenre.create(book_id: 5, genre_id: 3)
BookGenre.create(book_id: 6, genre_id: 3)

c1.add_user(1)
c1.add_user(2)
c1.add_user(3)
c1.add_user(12)
c1.add_user(4)
c1.add_user(10)

c2.add_user(1)
c2.add_user(4)
c2.add_user(5)
c2.add_user(11)
c2.add_user(7)
c2.add_user(8)
c2.add_user(9)
c2.add_user(10)

c3.add_user(10)
c3.add_user(13)
c3.add_user(14)

c4.add_user(11)
c4.add_user(12)
c4.add_user(15)
c4.add_user(16)

c5.add_user(17)
c5.add_user(6)
c5.add_user(7)
c5.add_user(8)
c5.add_user(9)

c6.add_user(10)
c6.add_user(2)
c6.add_user(4)
c6.add_user(11)
c6.add_user(12)
c6.add_user(15)