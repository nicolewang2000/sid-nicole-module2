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

u1 = User.create(username: "nicolewang", first_name: "Nicole", last_name: "Wang")
u2 = User.create(username: "ac19", first_name: "Annabeth", last_name: "Chase")
u3 = User.create(username: "bernicew", first_name: "Bernice", last_name: "Wang")
u4 = User.create(username: "coffeedad", first_name: "Mac", last_name: "Donald")
u5 = User.create(username: "lightning", first_name: "Harry", last_name: "Potter")
u6 = User.create(username: "zoehart", first_name: "Zoe", last_name: "Hart")
u7 = User.create(username: "wadekinsella", first_name: "Wade", last_name: "Kinsella")
u8 = User.create(username: "ts1989", first_name: "Taylor", last_name: "Swift")
u9 = User.create(username: "demigod", first_name: "Percy", last_name: "Jackson")
u10 = User.create(username: "siddo", first_name: "Sid", last_name: "Hirschman")

b1 = Book.create(title: "Harry Potter and the Order of the Phoenix", author_name: "J.K. Rowling", img_url: "https://images-na.ssl-images-amazon.com/images/I/91TpLHDnuFL.jpg")
b2 = Book.create(title: "The Hate You Give", author_name: "Angie Thomas", img_url: "https://images-na.ssl-images-amazon.com/images/I/71HZHHDbarL.jpg")
b3 = Book.create(title: "Children of Blood and Bone", author_name: "Tomi Adeyemi", img_url: "https://prodimage.images-bn.com/pimages/9781250170972_p0_v5_s1200x630.jpg")
b4 = Book.create(title: "To Kill a Mockingbird", author_name: "Harper Lee", img_url: "https://upload.wikimedia.org/wikipedia/commons/4/4f/To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg")
b5 = Book.create(title: "Becoming", author_name: "Michelle Obama", img_url: "https://images-na.ssl-images-amazon.com/images/I/81h2gWPTYJL.jpg")

g1 = Genre.create(name: "Fiction")
g2 = Genre.create(name: "Biography")
g3 = Genre.create(name: "Non-Fiction")
g4 = Genre.create(name: "Fantasy")

c1 = Club.create(name: "Mindless Reading", description: "For everyone bored during quarantine", book_id: b2.id, leader_id: u1.id)
c2 = Club.create(name: "Platform 9 3/4", description: "For everyone who loves a good fantasy", book_id: b1.id, leader_id: u10.id)
c3 = Club.create(name: "Books on Empowerment", description: "Anything self-help books", book_id: b5.id, leader_id: u10.id)


c1.add_user(1)
c1.add_user(2)
c1.add_user(3)
c1.add_user(4)
c2.add_user(1)
c2.add_user(4)
c2.add_user(5)
c2.add_user(6)
c2.add_user(7)
c2.add_user(8)
c2.add_user(9)
c3.add_user(10)