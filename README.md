# Minitest Change Assertions

<a href="https://badge.fury.io/rb/minitest_change_assertions" target="_blank"><img height="21" style='border:0px;height:21px;' border='0' src="https://badge.fury.io/rb/minitest_change_assertions.svg" alt="Gem Version"></a>
<a href='https://github.com/westonganger/minitest_change_assertions/actions' target='_blank'><img src="https://github.com/westonganger/minitest_change_assertions/workflows/Tests/badge.svg" style="max-width:100%;" height='21' style='border:0px;height:21px;' border='0' alt="CI Status"></a>
<a href='https://rubygems.org/gems/minitest_change_assertions' target='_blank'><img height='21' style='border:0px;height:21px;' src='https://ruby-gem-downloads-badge.herokuapp.com/minitest_change_assertions?label=rubygems&type=total&total_label=downloads&color=brightgreen' border='0' alt='RubyGems Downloads' /></a>
<a href='https://ko-fi.com/A5071NK' target='_blank'><img height='22' style='border:0px;height:22px;' src='https://az743702.vo.msecnd.net/cdn/kofi1.png?v=a' border='0' alt='Buy Me a Coffee' /></a> 

Provides assertions for your Minitest suite to determine if an object has been changed.

# Install

```ruby
gem 'minitest_change_assertions'
```

# Usage

## `assert_changed`

```ruby
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
```

## `assert_not_changed`

```ruby
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
```

# Credits
Created by [Weston Ganger](https://westonganger.com) - [@westonganger](https://github.com/westonganger)

For any consulting or contract work please contact me via my company website: [Solid Foundation Web Development](https://solidfoundationwebdev.com)
