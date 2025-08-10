require 'minitest/autorun'
require_relative '../contacts'
require_relative '../contact_book'

class ContactBookTest < Minitest::Test
  def setup
    @book = ContactBook.new
  end

  def test_add_and_view_contacts
    contact = Contact.new("Aswini", "1234567890", "aswini@example.com")
    @book.instance_variable_get(:@contact_book) << contact
    
    contacts = @book.instance_variable_get(:@contact_book)
    assert_includes contacts, contact

    # Capture output of view_contacts
    output = capture_io { @book.send(:view_contacts) }.first
    assert_match /Aswini/, output
    assert_match /1234567890/, output
    assert_match /aswini@example.com/, output
  end
  def capture_io
    out, err = StringIO.new, StringIO.new
    $stdout = out
    $stderr = err
    yield
    [out.string, err.string]
  ensure
    $stdout = STDOUT
    $stderr = STDERR
  end
end
