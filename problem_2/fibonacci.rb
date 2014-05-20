def fibonacci(max_number)
  @fib_array = [1,2]
  @even_array = [2]
  i = 1

  while i <= max_number
    fib = @fib_array[0] + @fib_array[1]
    @fib_array << fib
    if fib % 2 == 0
      @even_array << fib
    end
    @fib_array.shift
    i = fib
  end

  return @even_array.inject{|sum, number| sum + number}

end
