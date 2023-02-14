class User
    attr_reader :name, :address, :email
    def initialize(name, address, email)
        @name = name
        @address = address
        @email = email
    end

    def profile
        "#{name}(#{address})"
    end
end

class MyClass
    def method1
        @number = 100
    end

    def method2
        @number
    end
end

class Person
    def initialize(money)
        @money = money
    end

    # 億万長者か？
    def billionaire?
        money > 10000000000
    end

    private

    def money
        @money
    end
end

module PriceHolder
    def total_price
        price * Tax.rate
    end
end

class Product
    include PriceHolder

    attr_accessor :price
end

class OrderedItem
    include PriceHolder

    attr_accessor :unit_price, :volume

    def price
        unit_price * volume
    end
end

class Tax
    def self.rate
        1.08
    end
end

