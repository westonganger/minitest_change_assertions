Minitest::Assertions.module_eval do
  def assert_changed(expression, opts={}, &block)
    if expression.respond_to?(:call)
      e = expression
    else
      e = lambda{ block.binding.eval(expression) }
    end

    if opts.key?(:to)
      expected = opts[:to]
    elsif opts.key?('to')
      expected = opts['to']
    else
      expected = e.call
    end

    block.call

    refute_equal expected, e.call
  end

  def assert_not_changed(expression, opts={}, &block)
    if expression.respond_to?(:call)
      e = expression
    else
      e = lambda{ block.binding.eval(expression) }
    end

    if opts.key?(:to)
      expected = opts[:to]
    elsif opts.key?('to')
      expected = opts['to']
    else
      expected = e.call
    end

    block.call

    assert_equal expected, e.call
  end
end
