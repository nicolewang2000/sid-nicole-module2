# BOOKCLUB!

BOOKCLUB! is a simple web-based platform for creating and joining book clubs.

## Setup

* BOOKCLUB! runs on Ruby 2.6.1 and Rails 6.0.3.2.

* If you would like to run this on your local Rails server: fork/clone, `bundle install`, `rails db:seed` to seed the database with some sample users and groups, then `rails s` to start the local server.

## What's in the box

When you first encounter the site, it shows a slideshow of covers of books that have been read in BC! clubs.

![BOOKCLUB! home page](https://i.imgur.com/jOQ2wMG.png)

Anyone can view clubs, but only logged-in users can join and create them, and only members of a group can leave comments.
The leader of a group can edit the group, and which book it's reading currently.

![BOOKCLUB! club page](https://i.imgur.com/w5VQjMw.png)

On creating a book club with an assigned book, you can provide a direct link to an image of the cover - or you can simply enter the title and author and BOOKCLUB! will get the cover for you using magic (Google Books API magic). You can also view individual users' pages, a whole-site analytics page, and a directory of all clubs.


#### BOOKCLUB! uses the [Tufte CSS](https://github.com/edwardtufte/tufte-css) stylesheet.
