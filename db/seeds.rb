Item.destroy_all
Category.destroy_all
puts "==========================="
puts "Seed destroyed !!!"
puts "==========================="

# Categories
puts "==========================="
puts "Creating Categories"
puts "==========================="

cate1 = Category.new(name: "Bijoux")
cate2 = Category.new(name: "Poignée")
cate3 = Category.new(name: "Décoration")

cate1.save!
cate2.save!
cate3.save!

# Items
puts "==========================="
puts "Creating Items"
puts "==========================="

item1 = Item.new(name:"Boucle d'oreille", category: cate1, price: 12.5, description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, inventore. Adipisci maxime sit voluptates quibusdam assumenda perferendis impedit distinctio similique et necessitatibus quas veritatis ducimus aperiam, sunt consequuntur repudiandae quos.", image: "https://p2.piqsels.com/preview/114/817/305/glass-copper-sterling-silver-earrings-stone.jpg")

item2 = Item.new(name:"Bracelet", category: cate1, price: 50, description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, inventore. Adipisci maxime sit voluptates quibusdam assumenda perferendis impedit distinctio similique et necessitatibus quas veritatis ducimus aperiam, sunt consequuntur repudiandae quos.", image: "https://upload.wikimedia.org/wikipedia/commons/b/b9/Bracelet_de_survie_-_Blaze_Bar.png")

item3 = Item.new(name:"Poignée de commode", category: cate2, price: 26, description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, inventore. Adipisci maxime sit voluptates quibusdam assumenda perferendis impedit distinctio similique et necessitatibus quas veritatis ducimus aperiam, sunt consequuntur repudiandae quos.", image: "https://www.publicdomainpictures.net/pictures/300000/nahled/door-handle-in-brass.jpg")

item4 = Item.new(name:"Lampe bois flottant", category: cate3, price: 26, description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, inventore. Adipisci maxime sit voluptates quibusdam assumenda perferendis impedit distinctio similique et necessitatibus quas veritatis ducimus aperiam, sunt consequuntur repudiandae quos.", image: "https://www.cdiscount.com/pdt2/1/1/7/1/300x300/auc6288324752117/rw/suspension-design-triangle-en-bois-42cm-110-220v.jpg")

item1.save!
item2.save!
item3.save!
item4.save!


puts "==========================="
puts "OK OK OK !!!"
puts "==========================="
