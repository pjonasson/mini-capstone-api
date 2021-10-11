# Supplier.create(name: "Percy Jonasson", email: "pjonasson@outlook.com", phone_number: "254-368-8525")
# Supplier.create(name: "Gentry McManus", email: "gmcmanus@yahoo.com", phone_number: "713-529-9700")
# Supplier.create(name: "Percy Jonasson", email: "pjonasson@outlook.com", phone_number: "832-526-4616")

# Product.create!(name: "Air Jordan 1 High Retro OG 'Polen'", price: 247, description: "The Air Jordan 1 High Retro OG ‘Pollen’ showcases color blocking that mirrors another basketball silhouette released back in 1985. Recalling the OG ‘Iowa’ Dunk colorway, the leather upper pairs a solid black base with contrasting overlays in Pollen yellow. Traditional branding elements include a Jordan Wings logo imprinted on the lateral collar flap and a woven Nike tag atop the nylon tongue. The high-top rides on a standard rubber cupsole, enhanced with a polyurethane wedge and encapsulated Air-sole cushioning under the heel.", quantity: 1, supplier_id: 2)
# Product.create!(name: "Air Jordan 1 High Retro OG 'University Blue'", price: 405, description: "The Air Jordan 1 Retro High OG ‘University Blue’ makes use of a familiar palette that gives the nod to Michael Jordan’s UNC alma mater. The all-leather upper features a white base with powder blue overlays and a black signature Swoosh. Matching black accents make their way to the collar, tongue tag and printed Wings logo on the lateral collar flap. A brighter shade of blue is applied to the standard AJ1 outsole, featuring multi-directional traction and a pivot point under the forefoot.", quantity: 1, supplier_id: 3)
# Product.create!(name: "Air Jordan 1 Retro High OG 'Shadow 2.0'", price: 275, description: "As its moniker suggests, the Air Jordan 1 Retro High OG ‘Shadow 2.0’ utilizes the same neutral palette featured on the original Black/Grey colorway from 1985. This pair makes use of a black leather upper with grey suede overlays at the toe and heel. A matching grey Swoosh is joined by traditional branding elements that include a Nike Air tongue tag and a Jordan Wings logo stamped on the lateral collar. A rubber cupsole with encapsulated Air cushioning delivers a smooth ride.", quantity: 1, supplier_id: 1)
# Product.create!(name: "Air Jordan 1 High High OG 'Hyper Royal'", price: 392, description: "The Air Jordan 1 Retro High OG ‘Hyper Royal’ takes on a weathered aesthetic, highlighted by a white leather upper with faded blue suede overlays. Contrasting neutral grey hits land on the Swoosh and padded collar, adding to the sneaker’s understated palette. OG branding elements include a Jordan Wings logo on the lateral collar flap and a woven Nike tongue tag. The high-top is mounted on a standard AJ1 rubber cupsole, featuring encapsulated Nike Air cushioning in the heel.", quantity: 1, supplier_id: 1)

# Image.create!(url: "https://sneakernews.com/wp-content/uploads/2020/11/Air-Jordan-1-Retro-High-OG-Pollen-555088-701.jpg", product_id: 1)
# Image.create!(url: "https://sneakernews.com/wp-content/uploads/2020/05/air-jordan-1-retro-high-og-555088-134.jpg", product_id: 2)
# Image.create!(url: "https://sneakernews.com/wp-content/uploads/2021/04/Air-Jordan-1-Shadow-2.0-555088-035-2.jpg", product_id: 3)
# Image.create!(url: "https://sneakernews.com/wp-content/uploads/2021/01/air-jordan-1-retro-high-og-hyper-royal-555088-402-release-date-7.jpg", product_id: 4)
# Image.create!(url: "https://selectabisso.com/wp-content/uploads/2021/04/DSC06764.jpg", product_id: 4)

User.create!(name: "Peter", email: "peter@email.com", password: "password", admin: true)
User.create!(name: "Test", email: "test@email.com", password: "password")

Supplier.create!(name: "Amazon", email: "amazon@test.com", phone_number: "4232343234")
Supplier.create!(name: "ThinkGeek", email: "thinkgeek@test.com", phone_number: "6232343234")

Product.create!(supplier_id: 1, name: "WNYX Mug", price: 2, description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape")
Product.create!(supplier_id: 2, name: "Hitchhiker's Guide to the Galaxy", price: 42, description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects.")
Product.create!(supplier_id: 1, name: "Lightsaber", price: 270, description: "Part laser, part samurai sword, all awesome. The lightsaber is an elegant weapon for a more civilized age, not nearly as clumsy as a blaster")
Product.create!(supplier_id: 1, name: "Space Cowboy Laser Gun", price: 170, description: "This weapon has no other description than, Shiney!")
Product.create!(supplier_id: 2, name: "DnD Dice set", price: 57, description: "Take down mighty dragons with this timeless set of 20 sided wonders")
Product.create!(supplier_id: 1, name: "Sonic Screwdriver", price: 9, description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood")
Product.create!(supplier_id: 1, name: "Yoda sleeping bag", price: 40, description: "For real")

Image.create!(product_id: 1, url: "https://i.pinimg.com/236x/14/4a/0b/144a0bffe37f29f414e2dae2bd0141cf.jpg")
Image.create!(product_id: 2, url: "http://www.notcot.com/images/guide.gif")
Image.create!(product_id: 3, url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif")
Image.create!(product_id: 3, url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif")
Image.create!(product_id: 3, url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif")
Image.create!(product_id: 3, url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif")
Image.create!(product_id: 4, url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776")
Image.create!(product_id: 5, url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg")
Image.create!(product_id: 6, url: "https://dyn0.media.forbiddenplanet.com/products/28577492.jpg")
Image.create!(product_id: 7, url: "https://staticdelivery.nexusmods.com/mods/1151/images/12353-0-1461721930.png")
