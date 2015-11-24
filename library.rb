class Library
  attr_reader :name, :books, :people

  def initialize(name)
    @name = name
    @books = {}
    @people = {}
  end

  def add_book(book)
    @books[book.title] = book
  end

  def list_books
    if @books.empty?
      "There are no books in the library at present"
    else
      book_strings = @books.map do |key, book|
        book.pretty_string
      end
    end
    book_strings.join("\n")
  end

  def add_person(person)
    @people[person.name] = person
  end

  def list_people
    if @people.empty?
      "No people here"
    else
      people_strings = @people.map do |key, person|
        person.pretty_string
      end
    end
    people_strings.join("\n")
  end

  def lend(person_name, book_title)
    person = @people[person_name]
    book = @books.delete(book_title)
    person.borrow(book)
  end

  def receive_book(person_name, book_title)
    person = @people[person_name]
    book = person.return_book(book_title)
    add_book(book)
  end

  def list_all_borrowed_books
    all_books = []
    @people.each do |key, person|
      person.books 
      all_books.push(person.books) if (person.books != {})
    end
    puts "All borrowed books: #{all_books}"
  end

end
