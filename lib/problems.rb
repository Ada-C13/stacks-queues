require_relative './stack.rb'

# Time Complexity: O(n)
# Space Complexity: O(n)

def balanced(string)
  # reference https://www.youtube.com/watch?v=0OJdfXyuapc
  stack = Stack.new
  parens = string.split('')
  i = 0

  while i < parens.length
    if (parens[i] == "(" || parens[i] == "{" || parens[i] == "[")
      stack.push(parens[i])
    elsif (parens[i] == ")" || parens[i] == "}" || parens[i] == "]")
      value = stack.pop
      
      case parens[i]
      when ")"
        if (value == "{" || value == "[")
          return false
        end
      when "}"
        if (value == "(" || value == "[")
          return false
        end
      when "]"
        if (value == "(" || value == "{")
          return false
        end
      end
    end
    i += 1
  end
  return stack.empty? ? true : false
end

  # keeps giving 5 erros :(
  # open_parens = [ '(', '[', '{' ]
  # close_parens = [')', ']', '}' ]

  # check if string length
  # if string.length % 2 != 0
  #   return false
  #   # check if string is empty
  # elsif string.length == 0
  #   return true
  # else
  #   # check if string starts with a close paren or ends with an open paren (unbalanced)
  #   if (close_parens.include? string[0]) || (open_parens.include? string[-1])
  #     return false
  #   else
  #     stack = Stack.new
  #   end
  # end  

  # string.each_char do |paren|
  #   if open_parens.include? paren
  #     stack.push(paren)
  #     # if paren is a close paren, remove last open paren in stack and check to ensure it's a match for the close paren paren.
  #   elsif close_parens.include? paren
  #     last_in_stack = stack.pop()
  #     if last_in_stack != open_parens[close_parens.index(paren)]
  #       return false
  #     end
  #   end
  # end
  # return stack.empty?
