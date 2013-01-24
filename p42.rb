def replace(array, from, to)
  array.each_with_index do |e, i|
    array[i] = to if e == from
  end
end

class Array
  def replace(from, to)
    each_with_index do |e, i|
      self[i] = to if e == from
    end
  end
end

if $0 == __FILE__
  require 'test/unit'
  class TestReplace < Test::Unit::TestCase
    def test_replace
      book_topics = ['html', 'java', 'css']
      replace(book_topics, 'java', 'ruby')
      expected = ['html', 'ruby', 'css']
      assert_equal expected, book_topics
    end

    def test_replace2
      book_topics = ['html', 'java', 'css']
      book_topics.replace('java', 'ruby')
      expected = ['html', 'ruby', 'css']
      assert_equal expected, book_topics
    end
  end
end
