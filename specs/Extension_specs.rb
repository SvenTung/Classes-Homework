require('minitest/autorun')
require('minitest/rg')
require_relative('../Extension.rb')

class TestBankAccount < MiniTest::Test

  def test_get_book_details
    lord_of_the_rings = Library.new("Lord of the Rings", "Ben", "23/10/19")
    result = lord_of_the_rings.get_book_details
    assert_equal({
    title: "Lord of the Rings",
      rental_details:
      {student_name: "Ben",
        date: "23/10/19"}
    }, result)
  end

  def test_search_book_details
    lord_of_the_rings = Library.new("Lord of the Rings", "Ben", "23/10/19")
    result = lord_of_the_rings.search_book_details("Lord of the Rings")
    assert_equal({
    title: "Lord of the Rings",
      rental_details:
      {student_name: "Ben",
        date: "23/10/19"}
    }, result)
  end

  def test_search_rental_details
    lord_of_the_rings = Library.new("Lord of the Rings", "Ben", "23/10/19")
    result = lord_of_the_rings.search_rental_details("Lord of the Rings")
    assert_equal(
      {student_name: "Ben",
        date: "23/10/19"}, result)
  end

  def test_add_new_book
    lord_of_the_rings = Library.new("Lord of the Rings", "Ben", "23/10/19")
    result = lord_of_the_rings.add_new_book("Mister Monday")
    assert_equal({
    title: "Mister Monday",
      rental_details:
      {student_name: "",
        date: ""}
    } ,result)
  end

  def test_change_rental_details
    lord_of_the_rings = Library.new("Lord of the Rings", "Ben", "23/10/19")
    lord_of_the_rings.change_rental_details("Lord of the Rings", "Laurie", "30/11/19")
    result = lord_of_the_rings.search_book_details("Lord of the Rings")
    assert_equal({
    title: "Lord of the Rings",
      rental_details:
      {student_name: "Laurie",
        date: "30/11/19"}
    } ,result)
  end
end
