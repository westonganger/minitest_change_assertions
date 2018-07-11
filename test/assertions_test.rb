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
    name = 'Allen'

    assert_changed 'name' do
      name = 'Bob'
    end

    assert_changed -> { name } do
      name = 'Greg'
    end

    ### OR with optional :to argument

    assert_changed 'name', to: 'Bob' do
      name = 'Bob'
    end

    assert_changed -> { name }, to: 'Bob' do
      name = 'Bob'
    end

    assert_changed -> { name }, to: 'Greg' do
      name = 'Greg'
    end
  end

  def test_assert_not_changed
    name = 'Allen'

    assert_not_changed 'name' do
      name = 'Allen'
    end

    assert_not_changed -> { name } do
      name = 'Allen'
    end

    ### OR with optional :to argument

    assert_not_changed 'name', to: 'Greg' do
      name = 'Bob'
    end

    assert_not_changed -> { name }, to: 'Greg' do
      name = 'Bob'
    end
  end

end
