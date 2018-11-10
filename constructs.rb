class FooBar < BasicObject
    def self.gun
    end
    #==
    class << self
        def gun
        end
    end   
end

def foo_bar
end

lambda do
end

if
elsif
end

case
when
end

1 * 1 == 1.*(1)

def foo(*vars)
  a, b = vars  # 'n' number of arguments can be placed here. eg. a, b, c, d,.., = vars
