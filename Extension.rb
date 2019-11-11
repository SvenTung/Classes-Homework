class Library

  def initialize(input_title, input_student_name, input_date)
    @title = input_title
    @student_name = input_student_name
    @date = input_date

    @book_details = {
      title: @title,
      rental_details: {
        student_name: @student_name,
        date: @date
      },
    }
  end

  def get_book_details
    return @book_details
  end

  def search_book_details(book_name)
    if @book_details.has_value?(book_name)
      return @book_details
    else
      return false
    end
  end

  def search_rental_details(book_name)
    if @book_details.has_value?(book_name)
      return @book_details[:rental_details]
    else
      return false
    end
  end

  def add_new_book(book_name)
    @book_details = {
      title: book_name,
      rental_details: {
        student_name: "",
        date: ""}}
  end

  def change_rental_details(book_name, student, date)
    if @book_details.has_value?(book_name)
      @book_details = {
        title: @title,
        rental_details: {
          student_name: student,
          date: date}}
    else
      return false
    end
  end

end
