require('minitest/autorun')
require('minitest/rg')
require_relative('../Extension.rb')

class TestBankAccount < MiniTest::Test

  def setup
    books = [
      {title: "Lord of the Rings",
        rental_details: {
          student_name: "Ben",
          date: "23/10/19"}
      },
      {title: "Mister Monday",
        rental_details: {
          student_name: "Sven",
          date: "07/12/19"
      }}
      ]

      @Library = Library.new(books)
  end

  def test_get_first_book_details
    result = @Library.get_first_book_details
    assert_equal({
    title: "Lord of the Rings",
      rental_details:
      {student_name: "Ben",
        date: "23/10/19"}
    }, result)
  end

  def test_search_book_details
    result = @Library.search_book_details("Lord of the Rings")
    assert_equal({
    title: "Lord of the Rings",
      rental_details:
      {student_name: "Ben",
        date: "23/10/19"}
    }, result)
  end

  def test_search_rental_details
    result = @Library.search_rental_details("Lord of the Rings")
    assert_equal(
      {student_name: "Ben",
        date: "23/10/19"}, result)
  end

  def test_add_new_book
    result = @Library.add_new_book("The Fall")
    assert_equal({
    title: "The Fall",
      rental_details:
        {student_name: "",
        date: ""
      }} ,result)
  end

  def test_change_rental_details
    result = @Library.change_rental_details("Lord of the Rings", "Laurie", "30/11/19")
    assert_equal({
    title: "Lord of the Rings",
      rental_details:
      {student_name: "Laurie",
        date: "30/11/19"}
    } ,result)
  end
end
