
if $0 == __FILE__
require 'test/unit'
class ToAlphanumericTest < Test::Unit::TestCase
  def test_strips_non_alphanumeric_characters
    assert_equal '3 the Magic Number', to_alphanumeric('#3, the *Magic, Number*?')
  end
end
end

def to_alphanumeric(s)
  s.gsub /[^\w\s]/, ''
end
