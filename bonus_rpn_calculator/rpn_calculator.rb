class RPNCalculator
  def initialize
    @input = []
  end
  def push(value)
    @input << value
  end

  def plus
    raise 'calculator is empty' unless sufficent_values?
    @input << :+
  end

  def minus
    raise 'calculator is empty' unless sufficent_values?
    @input << :-
  end

  def divide
    raise 'calculator is empty' unless sufficent_values?
    @input << :/
  end

  def times
    raise 'calculator is empty' unless sufficent_values?
    @input << :*
  end

  def value(*input)
    calculation_stack = []
    if input.empty?
      input_copy = @input.reverse
    else
      input_copy = input.first.reverse
    end
    until input_copy.empty?
      next_value = input_copy.pop

      case next_value
        when :+
          calculation_stack.push(calculation_stack.pop + calculation_stack.pop)
        when :-
          first_value = calculation_stack.pop
          second_value = calculation_stack.pop
          calculation_stack.push(second_value - first_value)
        when :/
          first_value = calculation_stack.pop
          second_value = calculation_stack.pop
          calculation_stack.push(second_value.to_f / first_value.to_f)
        when :*
          first_value = calculation_stack.pop
          second_value = calculation_stack.pop
          calculation_stack.push(second_value.to_f * first_value.to_f)
        else
          calculation_stack.push(next_value)
      end
    end
    calculation_stack.last
  end

  def tokens(string)
    token_array = string.split(' ')
    token_array.map! { |value|
      case value
        when '+'
          :+
        when '-'
          :-
        when '*'
          :*
        when '/'
          :/
        else
          value.to_i
      end
    }
    token_array
  end

  private_methods

  def sufficent_values?
    @input.count >= 2
  end

  def evaluate(string)
    value(tokens(string))
  end
end