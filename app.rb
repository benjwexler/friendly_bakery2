require 'sinatra'
require './structure.rb'

choclate_chip = Cookie.new("Choclate Chip", 4.99, "GREATEST. COOKIE. EVER", ["choclate chip", "cookie"], "cookie", "https://sugarspunrun.com/wp-content/uploads/2017/05/Chocolate-Chip-Cookie-Recipe-1-of-1.jpg")

peanut_butter_choclate_chip = Cookie.new("Peanut Butter Choclate Chip", 2.99, "Gooey", ["peanut butter", "cookie"], "cookie", "http://i1.wp.com/www.abajillianrecipes.com/wp-content/uploads/2017/01/Ultimate-Peanut-Butter-Cookies-19.jpg?w=2490")

oatmeal_rasin = Cookie.new("Oatmeal Raisin", 2.99, "Just Like Grandmas", ["oatmeal", "raisin"], "cookie", "https://www.bakerbettie.com/wp-content/uploads/2013/08/easy-oatmeal-raisin-cookies-2.jpg")

eminem_cookie = Cookie.new("Eminem Cookie", 2.99, "M&Ms", ["m&m", "cookie"], "cookie", "https://i.ytimg.com/vi/PszBtsAL-w8/maxresdefault.jpg")



muff_daddy = Muffin.new("Muff Daddy", 2.99, "Muffy", ["muffin", "choclate"], "muffin", "https://images.media-allrecipes.com/userphotos/560x315/1104633.jpg")

peanut_butter_muffin = Muffin.new("Peanut Butter Choclate Chip Muffin", 3.99, "Gooey", ["muffin", "choclate"], "muffin", "https://images-gmi-pmc.edge-generalmills.com/f5fbde66-983f-4119-9c7c-4a111ac8177b.jpg")

blueberry_muffin = Muffin.new("Blueberry Muffin", 3.99, "fruity", ["muffin", "blueberry"], "muffin","https://www.wellplated.com/wp-content/uploads/2017/04/Healthy-Whole-Wheat-Blueberry-Muffins.jpg")

raspberry_muffin = Muffin.new("Raspberry Muffin", 3.99, "fruity", ["muffin", "raspberry"], "muffin","https://img.sndimg.com/food/image/upload/w_896,h_504,c_fill,fl_progressive,q_80/v1/img/recipes/23/18/9/VLPNVQPtT8eNojiBBF58-rasp_buttermilk_muffins1.jpg")

choclate_cake = Cake.new("Choclate Cake", 2.99, "CLASSIC.", ["choclate", "cake"], "cake", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfDpwjSni78DmsELD_E2GYW6slOJHxzVWN7ZALCda0lq2w_tLI")

devils_food_cake = Cake.new("Marshmallow Devil's Food Cake", 3.99, "Better than Entemann's", ["choclate", "cake", "marshmallow"], "cake", "http://farm9.staticflickr.com/8042/7940787524_4f10841c51_o.jpg")

oreo_cheescake = Cake.new("Oreo Cheescake", 2.99, "CLASSIC.", ["Oreo", "cake", "cheesecake"], "cake", "https://bakerbynature.com/wp-content/uploads/2018/01/OreoCheesecake3-1-of-1-2.jpg")

confetti_cake = Cake.new("Confetti Cake", 2.99, "CLASSIC.", ["Oreo", "cake", "cheesecake"], "cake", "https://truffle-assets.imgix.net/pxqrocxwsjcc_1HGFW24hxOCWOowI4kSgsy_vanilla-funfetti-cake_landscapeThumbnail_en-US.jpeg")

bakery = Inventory.new 

bakery.add_inventory(choclate_chip)
bakery.add_inventory(peanut_butter_choclate_chip)
bakery.add_inventory(oatmeal_rasin)
bakery.add_inventory(eminem_cookie)

bakery.add_inventory(muff_daddy)
bakery.add_inventory(peanut_butter_muffin)
bakery.add_inventory(blueberry_muffin)
bakery.add_inventory(raspberry_muffin)

bakery.add_inventory(choclate_cake)
bakery.add_inventory(oreo_cheescake)
bakery.add_inventory(confetti_cake)
bakery.add_inventory(devils_food_cake)

set :port, 9495

get '/' do
    erb :homepage 
  end

get '/cookies' do

    @arr = []

    bakery.inventory.each do |item|
        if item[1].type == "cookie"
           @arr.push([item[1].name, item[1].price, item[1].description, item[1].img_src]) 
        end  
   end 

    erb :new_cookies, :layout => :layout2
end 

get '/cakes' do

    @arr = []

    bakery.inventory.each do |item|
        if item[1].type == "cake"
           @arr.push([item[1].name, item[1].price, item[1].description, item[1].img_src]) 
        end  
   end 

    erb :new_cakes, :layout => :layout2
end 

get '/muffins' do

    @arr = []

    bakery.inventory.each do |item|
        if item[1].type == "muffin"
           @arr.push([item[1].name, item[1].price, item[1].description, item[1].img_src]) 
        end  
   end 

    erb :new_muffins, :layout => :layout2
end 

post '/search_results' do
    @results = params
    @arr = []

    bakery.inventory.each do |item|
        item[1].arr_of_tags.each do |tag|
           if tag == params[:search].downcase
            @arr.push([item[1].name, item[1].price, item[1].description, item[1].img_src]) 
          
            end 
        end 
           
   end 
        @arr 
   erb :homepage, :layout => :layout2
end

get '/:type' do
    redirect '/'
  end