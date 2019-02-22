# def hello_world name=''
#   return name == '' ? "Hello, World!" : "Hello, #{name}!"
# end

# ruby optional positional argument name=''

# another way to do it:
def hello_world name=''
  name = 'World' if name == '' 
  return "Hello, #{name}!"
end
