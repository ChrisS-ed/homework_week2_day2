require "pry-byebug"
require_relative "library"
require_relative "book"
require_relative "person"

# todo: create library
library = Library.new "Code Clan library"

# todo: create book
book_1 = Book.new({title: "Errand", genre: "Fantasy"})
library.add_book(book_1)
library.add_book(Book.new(title: "The Hobbit", genre: "Fantasy"))
library.add_book(Book.new(title: "Feersum Endjinn", genre: "Science Fiction"))
library.add_book(Book.new(title: "Histories", genre: "History"))
library.add_book(Book.new(title: "To Kill a Mockingbird", genre: "Fiction"))
library.add_book(Book.new(title: "A Brief History of Time", genre: "Non-Fiction"))

# todo: list books
puts "All books: #{library.list_books}"

# todo: create person
person_1 = Person.new("Jane")
library.add_person(person_1)
library.add_person(Person.new('Fred'))
library.add_person(Person.new('Wilma'))
library.add_person(Person.new('Barney'))
library.add_person(Person.new('Betty'))

# todo: list people
puts "All people: #{library.list_people}"

# todo: lend book
person_name = "Wilma"
book_title = "The Hobbit"
library.lend(person_name, book_title)
puts "All books: #{library.list_books}"
puts "All people: #{library.list_people}"

# todo: return book
person_name = "Wilma"
book_title = "The Hobbit"
library.receive_book(person_name, book_title)
puts "All people: #{library.list_people}"

# todo: list borrowed books
library.lend("Wilma", "The Hobbit")
library.lend("Wilma", "Feersum Endjinn")
library.lend("Fred", "Histories")
library.list_all_borrowed_books

#binding.pry; ' '