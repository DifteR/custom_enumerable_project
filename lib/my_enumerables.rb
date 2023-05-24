module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each()
    i = 0
    while i < self.length
      yield(self[i])
      i += 1
    end
    return self
  end

  def my_each_with_index()
    i = 0
    while i < self.length
      yield(self[i], i)
      i += 1
    end
    return self
  end

  def my_select()
    newArray = Array.new()
    i = 0
    while i < self.length
      if yield(self[i]) == true
        newArray << self[i]
      end
    i += 1
    end
    return newArray
  end

  def my_all?
    passed = true
    i = 0
    while i < self.length
      if yield(self[i]) == false
        passed =  false
      end
      i += 1
    end
    return passed
  end

  def my_any?
    i = 0
    failed = false
    while i < self.length
      if yield(self[i])
        failed = true
      end
      i += 1
    end
    return failed
  end

  def my_none?
    i = 0
    none = true
    while i < self.length
      if yield(self[i])
        none = false
      end
      i += 1
    end
    return none
  end

end
