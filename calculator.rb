class Calculator
  class << self
    def add(a,b)
      a + b
    end

    def subtract(a,b)
      a - b
    end

    def multiply(a,b)
      a * b
    end

    def divide(a,b)
      raise 'Cannot divide or be divided by zero' if a == 0 || b == 0
      a / b
    end

    def calc(a, args = nil)
      if args.nil? 
        a 
      else
        raise 'Invalid arguments, calc requires a number and an array containing calculation'\
              ' symbol and the second number' unless args.length == 2
        Calculator.send(args[0], a, args[1])
      end
    end
  end
end

# Number funtions
def one(args = nil)
  Calculator.calc(1, args)
end

def two(args = nil)
  Calculator.calc(2, args)
end

def three(args = nil)
  Calculator.calc(3, args)
end

def four(args = nil)
  Calculator.calc(4, args)
end

def five(args = nil)
  Calculator.calc(5, args)
end

def six(args = nil)
  Calculator.calc(6, args)
end

def seven(args = nil)
  Calculator.calc(7, args)
end

def eight(args = nil)
  Calculator.calc(8, args)
end

def nine(args = nil)
  Calculator.calc(9, args)
end

def zero(args = nil)
  Calculator.calc(0, args)
end


#Operator functions
def plus(b)
  [:add, b]
end

def minus(b)
  [:subtract, b]
end

def times(b)
  [:multiply, b]
end

def divided_by(b)
  [:divide, b]
end