Item.destroy_all
Category.destroy_all
puts "==========================="
puts "Seed destroyed !!!"
puts "==========================="

# Categories
puts "==========================="
puts "Creating Categories"
puts "==========================="

cate1 = Category.new(name: "Bijoux", image: "https://p2.piqsels.com/preview/114/817/305/glass-copper-sterling-silver-earrings-stone.jpg")
cate2 = Category.new(name: "Poignée", image: "https://www.publicdomainpictures.net/pictures/300000/nahled/door-handle-in-brass.jpg")
cate3 = Category.new(name: "Décoration", image: "lampe.jpg")

cate1.save!
cate2.save!
cate3.save!

# Items
puts "==========================="
puts "Creating Items"
puts "==========================="

item1 = Item.new(name:"Boucle d'oreille", category: cate1, price: 12, description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, inventore. Adipisci maxime sit voluptates quibusdam assumenda perferendis impedit distinctio similique et necessitatibus quas veritatis ducimus aperiam, sunt consequuntur repudiandae quos.", image: "https://p2.piqsels.com/preview/114/817/305/glass-copper-sterling-silver-earrings-stone.jpg", photo2:"https://www.juliendorcel.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/0/1005029-1.jpg", photo3:"https://www.djula.fr/5882-large_default/bracelet-chaine-etoile-de-david.jpg")

item2 = Item.new(name:"Bracelet", category: cate1, price: 50, description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, inventore. Adipisci maxime sit voluptates quibusdam assumenda perferendis impedit distinctio similique et necessitatibus quas veritatis ducimus aperiam, sunt consequuntur repudiandae quos.", image: "https://upload.wikimedia.org/wikipedia/commons/b/b9/Bracelet_de_survie_-_Blaze_Bar.png", photo2:"https://www.oh-myshop.com/wp-content/uploads/2017/07/BC1663Fbis-b.jpg", photo3:"https://www.bijourama.com/media/produits/pandora-bijoux/img/bracelet-pandora-moments-de-vie-590719-bracelet-coeur-argent-femme590719_1200x1200.jpg")

item3 = Item.new(name:"Poignée de commode", category: cate2, price: 26, description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, inventore. Adipisci maxime sit voluptates quibusdam assumenda perferendis impedit distinctio similique et necessitatibus quas veritatis ducimus aperiam, sunt consequuntur repudiandae quos.", image: "https://www.publicdomainpictures.net/pictures/300000/nahled/door-handle-in-brass.jpg")

item4 = Item.new(name:"Lampe bois flottant", category: cate3, price: 26, description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, inventore. Adipisci maxime sit voluptates quibusdam assumenda perferendis impedit distinctio similique et necessitatibus quas veritatis ducimus aperiam, sunt consequuntur repudiandae quos.", image: "https://www.cdiscount.com/pdt2/1/1/7/1/300x300/auc6288324752117/rw/suspension-design-triangle-en-bois-42cm-110-220v.jpg", photo2:"https://www.boudoirdumonde.com/boutique/images_produits/lampe-bois-naturel-kai-z.jpg", photo3:"https://mobiliernitro.com/33379-big_default/lampe-design-bois-flotte-rayan.jpg")

item1.save!
item2.save!
item3.save!
item4.save!


puts "==========================="
puts "OK OK OK !!!"
puts "==========================="
