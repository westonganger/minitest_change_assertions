#!/usr/bin/env ruby -w

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'minitest'
require 'minitest/autorun'

require 'minitest_change_assertions'

class AssertionsTest < MiniTest::Test
  def setup
  end

  def teardown
  end

  def test_assert_changed
    assert_changed 'user.name' do
      user.name = 'Bob'
    end

    assert_changed -> { user.name } do
      user.name = 'Bob'
    end

    ### OR with optional :to argument

    assert_changed 'user.name', to: 'Bob' do
      user.name = 'Bob'
    end

    assert_changed -> { user.name }, to: 'Bob' do
      user.name = 'Bob'
    end
  end

  def test_assert_not_changed
    assert_not_changed 'user.name' do
      user.update(attrs)
    end

    assert_not_changed -> { user.name } do
      user.update(attrs)
    end

    ### OR with optional :to argument

    assert_not_changed 'user.name', to: 'Allen' do
      user.name = 'Bob'
    end

    assert_not_changed -> { user.name }, to: 'Allen' do
      user.name = 'Bob'
    end
  end

end
