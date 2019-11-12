require "pp"
class Library

  def initialize(books)
    @book_details = books
  end

  def get_first_book_details
    return @book_details[0]
  end

  def search_book_details(book_name)
    for book in @book_details
      if book.has_value?(book_name)
        return book
      end
    end
    return false
  end

  def search_rental_details(book_name)
    for book in @book_details
      if book.has_value?(book_name)
        return book[:rental_details]
      end
    end
    return false
  end

  def add_new_book(book_name)
    @book_details.push({
      title: book_name,
      rental_details: {
        student_name: "",
        date: ""}})
    return search_book_details("The Fall")
  end

  def change_rental_details(book_name, student, date)
    for book in @book_details
      if book.has_value?(book_name)
        book = {
          title: book_name,
          rental_details: {
            student_name: student,
            date: date}}
            return book
      end
    end
    return false
  end

end
