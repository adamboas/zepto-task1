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
      a / b
    end
  end
end

# Number funtions
def one(args = nil)
  if args.nil? 
    1 
  else
    raise Error('Invalid arguments') unless args.length == 2
    Calculator.send(args[0], 1, args[1])
  end
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