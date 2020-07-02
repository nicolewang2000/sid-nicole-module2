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

u1 = User.create(username: "nicolewang", first_name: "Nicole", last_name: "Wang", password_digest: BCrypt::Password.create('iam19'))
u2 = User.create(username: "ac19", first_name: "Annabeth", last_name: "Chase", password_digest: BCrypt::Password.create('apassword123'))
u3 = User.create(username: "bernicew", first_name: "Bernice", last_name: "Wang", password_digest: BCrypt::Password.create('password'))
u4 = User.create(username: "coffeedad", first_name: "Mac", last_name: "Donald", password_digest: BCrypt::Password.create('mmmcoffee'))
u5 = User.create(username: "lightning", first_name: "Harry", last_name: "Potter", password_digest: BCrypt::Password.create('theboywholived'))
u6 = User.create(username: "zoehart", first_name: "Zoe", last_name: "Hart", password_digest: BCrypt::Password.create('6xtremenacho6'))
u7 = User.create(username: "wadekinsella", first_name: "Wade", last_name: "Kinsella", password_digest: BCrypt::Password.create('94070'))
u8 = User.create(username: "ts1989", first_name: "Taylor", last_name: "Swift", password_digest: BCrypt::Password.create('tswift1989'))
u9 = User.create(username: "demigod", first_name: "Percy", last_name: "Jackson", password_digest: BCrypt::Password.create('lightningthief'))
u10 = User.create(username: "siddo", first_name: "Sid", last_name: "Hirschman", password_digest: BCrypt::Password.create('sidpassword'))
u11 = User.create(username: "ruby", first_name: "Ruby", last_name: "Rails", password_digest: BCrypt::Password.create('coding'))
u11 = User.create(username: "prybabies", first_name: "Rails", last_name: "Ruby", password_digest: BCrypt::Password.create('flatiron'))


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
c4 = Club.create(name: "Old Books", description: "Anything written before 2000s", book_id: b4.id, leader_id: u11.id)


c1.add_user(1)
c1.add_user(2)
c1.add_user(3)
c1.add_user(12)
c1.add_user(4)
c2.add_user(1)
c2.add_user(4)
c2.add_user(5)
c2.add_user(11)
c2.add_user(7)
c2.add_user(8)
c2.add_user(9)
c1.add_user(10)
c2.add_user(10)
c3.add_user(10)
c4.add_user(11)
c4.add_user(12)