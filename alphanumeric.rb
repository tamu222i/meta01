
def to_alphanumeric(s)
  s.gsub /[^\w\s]/, ''
end

class String
  def to_alphanumeric
    gsub /[^\w\s]/, ''
  end
end

if $0 == __FILE__
  require 'test/unit'
  class ToAlphanumericTest < Test::Unit::TestCase
    def test_strips_non_alphanumeric_characters
      assert_equal '3 the Magic Number', to_alphanumeric('#3, the *Magic, Number*?')
    end
  end
  class StringExtensionsTest < Test::Unit::TestCase
    def test_strips_non_alphanumeric_characters
      assert_equal '3 the Magic Number', '#3, the *Magic, Number*?'.to_alphanumeric
    end
  end
end

