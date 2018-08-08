class Inventory
    attr_accessor :inventory

    def initialize
        @inventory = {}
    end 

    def add_inventory(item)
        @inventory[item.name] = item
    end 

    def add_cookie(cookie)
        @cookies[cookie.name] = cookie
    end 

    def self.all_items
        @inventory.keys
    end 

    def find_category_for_item(name_of_bakery, item_name, category)

        name_of_bakery.self[item_name].category 
    end 

    def reflect
        self
    end
    
    def get_info(name)
        @inventory[name]
    end 

    def specific_info(name, category)
        @inventory[name][category]
    end 

    # def self.all_properties
    #     @inventory
    # end 
    
end 






class Pastry

    attr_accessor :name, :price, :description, :arr_of_tags, :type, :img_src

    def initialize (name, price, description, arr_of_tags, type, img_src)
        @name = name
        @price = price 
        @description = description
        @arr_of_tags = arr_of_tags
        @type = type
        @img_src = img_src
    end
end

class Cookie < Pastry
end 

class Cake < Pastry
end

class Muffin < Pastry
end 

# choclate_chip = Pastry.new("Choclate Chip", 4.99, "GREATEST. COOKIE. EVER", ["choclate chip", "cookie"])

# black_and_white = Pastry.new("Black & White", 2.99, "CLASSIC.", ["black & White", "cookie"])

# peanut_butter_choclate_chip = Pastry.new("Peanut Butter Choclate Chip", 2.99, "CLASSIC.", ["peanut butter", "cookie"])

# choclate_cake = Pastry.new("Choclate Cake", 2.99, "CLASSIC.", ["choclate", "cake"])




# bakery = Inventory.new 


# inventory.push(cookie1)
# inventory.push(cookie2)

# bakery.add_inventory(choclate_chip)
# bakery.add_inventory(black_and_white)
# bakery.add_inventory(peanut_butter_choclate_chip)
# bakery.add_inventory(choclate_cake)

# pp bakery.inventory

# pp bakery.get_info("Choclate Chip")

# p bakery.inventory["Choclate Chip"].price

#  bakery.inventory.each do |item|
#      item[1].arr_of_tags.each do |tag|
#         if tag == "peanut butter"
#         arr = [item[1].price, item[1].name]
#         p arr
#          end 
#      end 
        
# end 

# p 'Hey'
 

# pp bakery.specific_info("Choclate Chip", price)




# inventory.inventory.each do |name|
#     # p name[1].price 
#     p "#{name[1].name}: $#{name[1].price}"  
# end 

# p bakery.inventory["Choclate Chip"].price 

# p bakery.find_category_for_item(bakery, "Choclate Chip", price )

# inventory.inventory.find_category_for_item("Choclate Chip")

# inventory.find_category_for_item("Choclate Chip", price)

# p inventory.inventory["Choclate Chip"]

# p baked_goods[0].name 

# def get_all_for_category(category)
#     baked_goods.each do |cookie|
#         p cookie.category  
#     end 
# end 

# inventory.each do |all_items|
#     p all_items
# end 
    



# get_all_for_category("name")

