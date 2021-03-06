require File.dirname(__FILE__) + '/../test_helper'

class SanityTest < Test::Unit::TestCase
  def test_is_sane
    assert true
  end

  should "be true" do
    assert true
  end

  should "mixin ObjectDaddy" do
    assert User.included_modules.include?(ObjectDaddy)
  end

  should "connect to database" do
    assert_equal 0, User.count(:all, :conditions => {:firstname => 'Testing connection'})
  end
end
