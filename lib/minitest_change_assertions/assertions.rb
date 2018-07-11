Minitest::Assertions.module_eval do
  def assert_changed(expression, opts={}, &block)
    if expression.respond_to?(:call)
      e = expression
    else
      e = lambda{ block.binding.eval(expression) }
    end

    if opts.key?(:to)
      to = opts[:to]
    elsif opts.key?('to')
      to = opts['to']
    else
      expected = e.call
    end

    block.call


    if to
      assert_equal to, e.call
    else
      refute_equal expected, e.call
    end
  end

  def assert_not_changed(expression, opts={}, &block)
    if expression.respond_to?(:call)
      e = expression
    else
      e = lambda{ block.binding.eval(expression) }
    end

    if opts.key?(:to)
      to = opts[:to]
    elsif opts.key?('to')
      to = opts['to']
    else
      expected = e.call
    end

    block.call

    if to
      refute_equal to, e.call
    else
      assert_equal expected, e.call
    end
  end
end
