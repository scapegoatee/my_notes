class FooBar < BasicObject
    def self.gun
    end
    # ==
    class << self
        def gun
        end
    end   
end

def foo_bar
end

-> x { puts x }     # == proc { |x| puts x }

def foo(&blk) # & converts do..end into proc objects.
    x = 'foo'
    blk.call # => 'bar'
end

def bar
    x = 'bar'
    foo do
        puts x # This will be executed in bar's context, not in foo's.
    end
end

# 0 arity means that the function takes no arguments.
# & can be used as a shorthand for 0 arity functions responding to the given variable.
[1, 2, 3].map { |x| x.even? }
[1, 2, 3].map(&:even?)

# The following cant be shorthanded because they are not 0 arity.
[1, 2, 3].map { |x| x.equal?(4) }

# The following cant be shorthanded because they do not respond to given variable,
# i.e. They dont follow the object.function pattern for a given variable x.

[1, 2, 3].map { |x| x * 2 }

if
elsif
end

case
when
end


1 * 1 == 1.*(1)

def foo(*vars)
  a, b,..,n = vars  # 'n' number of arguments can be placed here. eg. a, b, c, d,.., = vars. This auto-assigns vars into an array.
end