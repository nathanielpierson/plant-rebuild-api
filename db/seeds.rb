# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


User.create(name: "Nathaniel", email: "nathaniel@email.com", password_digest: "password", image_url: "https://scontent-iad3-1.xx.fbcdn.net/v/t39.30808-6/427971800_1102841000846756_6910868494923997282_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=ibHF3yXDygsQ7kNvwHeRoLE&_nc_oc=AdkZAW0GEH3CD00nOrpNN4_M9DKJisE9i8BK9pDzU9PeCx36Mou2N7Lb_4dDXoJnu5yzqO0GLu5VH_coSoyqeiIJ&_nc_zt=23&_nc_ht=scontent-iad3-1.xx&_nc_gid=r6KeWxMTPuLsCvY62CD6Pw&oh=00_AYHKtVAhDthVNFEhaZOf3sDXMhKxkO7-BoJK1BTrxGBgpA&oe=67F4D53C")

Plant.create([
  {
    name: "Snake Plant",
    description: "A hardy, low-maintenance houseplant with upright, sword-like leaves. Great for beginners and air purification.",
    amount_of_sun: 70,
    days_to_water: 14,
    growth_req: 4,
    image_url: "https://dengarden.com/.image/w_3840,q_auto:good,c_fill,ar_4:3/MTc0MzU0ODA0MDQ1MzI1OTU4/the-snake-plant-incredibly-easy-to-grow.jpg"
  },
  {
    name: "Peace Lily",
    description: "Elegant indoor plant with glossy green leaves and white flowers. Prefers indirect light and moist soil.",
    amount_of_sun: 50,
    days_to_water: 7,
    growth_req: 5,
    image_url: "https://rougenlove.com/cdn/shop/articles/peace-lily-Spathiphyllum-care-guide-rougenlove.jpg?v=1635677870"
  },
  {
    name: "Aloe Vera",
    description: "Succulent plant known for its medicinal gel. Requires minimal watering and bright, indirect sunlight.",
    amount_of_sun: 85,
    days_to_water: 21,
    growth_req: 3,
    image_url: "https://media.post.rvohealth.io/wp-content/uploads/sites/3/2025/04/aloe-vera-GettyImages-1473547826-Thumb.jpg"
  },
  {
    name: "Spider Plant",
    description: "Fast-growing houseplant with long, arching leaves and baby offshoots. Ideal for hanging baskets.",
    amount_of_sun: 60,
    days_to_water: 7,
    growth_req: 4,
    image_url: "https://needhamsnursery.com/cdn/shop/products/spider.webp?v=1649012780"
  },
  {
    name: "Fiddle Leaf Fig",
    description: "Large, glossy leaves and a bold structure make this plant a popular indoor centerpiece.",
    amount_of_sun: 90,
    days_to_water: 10,
    growth_req: 6,
    image_url: "https://d3gkbidvk2xej.cloudfront.net/images/products/feda972b-ba57-4627-b47f-745e49d7989c/s/fiddle-leaf-fig-tree.jpeg?version=1698088390.04590019800&fm=jpeg&w=449&h=598&fit=crop"
  },
  {
    name: "Pothos",
    description: "Vining plant with heart-shaped leaves. Thrives in low light and is easy to propagate.",
    amount_of_sun: 40,
    days_to_water: 5,
    growth_req: 5,
    image_url: "https://www.plantvine.com/plants/Jade-Pothos-3G-HB-Variation-800x1000.jpg"
  },
  {
    name: "Monstera Deliciosa",
    description: "Famous for its split leaves, this tropical plant adds drama and requires moderate care.",
    amount_of_sun: 65,
    days_to_water: 10,
    growth_req: 6,
    image_url: "https://www.foodrepublic.com/img/gallery/meet-the-monstera-deliciosa-the-russian-roulette-of-fruit/intro-1691768296.jpg"
  },
  {
    name: "Boston Fern",
    description: "Lush and feathery foliage that thrives in humid environments with consistent watering.",
    amount_of_sun: 50,
    days_to_water: 3,
    growth_req: 7,
    image_url: "https://gardengoodsdirect.com/cdn/shop/files/boston-fern-7851535925312_x560.progressive.jpg?v=1715970756"
  },
  {
    name: "Lavender",
    description: "Fragrant purple flowers on woody stems. Loves full sun and well-drained soil.",
    amount_of_sun: 95,
    days_to_water: 6,
    growth_req: 5,
    image_url: "https://www.whiteflowerfarm.com/mas_assets/cache/image/5/2/d/4/21204.Jpg"
  },
  {
    name: "Rose",
    description: "Classic flowering shrub with countless varieties. Requires sun, pruning, and regular watering.",
    amount_of_sun: 90,
    days_to_water: 3,
    growth_req: 7,
    image_url: "https://bouqs.com/blog/wp-content/uploads/2018/08/shutterstock_1662182848-min.jpg"
  },
  {
    name: "Mint",
    description: "Fast-spreading herb with aromatic leaves. Grows well in partial sun with regular watering.",
    amount_of_sun: 60,
    days_to_water: 3,
    growth_req: 4,
    image_url: "https://cdn11.bigcommerce.com/s-tevsl/images/stencil/1280x1280/products/3286/5220/1873_Mint_-_Common_Herb_V4__09722.1696535503.jpg?c=2"
  },
  {
    name: "Sunflower",
    description: "Tall annual plant with large yellow blooms that follow the sun. Needs full sun and water.",
    amount_of_sun: 100,
    days_to_water: 4,
    growth_req: 6,
    image_url: "https://www.gardenia.net/wp-content/uploads/2024/01/shutterstock_2084235901-800x533.jpg"
  },
  {
    name: "Bamboo Palm",
    description: "Indoor palm that adds tropical flair. Prefers indirect light and moist soil.",
    amount_of_sun: 55,
    days_to_water: 6,
    growth_req: 5,
    image_url: "https://i.etsystatic.com/27743352/r/il/730bce/3771167159/il_570xN.3771167159_tt5o.jpg"
  },
  {
    name: "English Ivy",
    description: "Climbing vine with elegant leaves. Grows well indoors with moderate sunlight and moisture.",
    amount_of_sun: 45,
    days_to_water: 4,
    growth_req: 5,
    image_url: "https://waterlandlife.org/wp-content/uploads/2021/06/WPC_GIAG_Twitter-Thumbnail_English-Ivy.jpg"
  },
  {
    name: "Jade Plant",
    description: "Slow-growing succulent with thick, oval leaves. Needs bright light and infrequent watering.",
    amount_of_sun: 80,
    days_to_water: 14,
    growth_req: 4,
    image_url: "https://www.bhg.com/thmb/kTjA4BxwEU3QQcrYBn4kVTRzejA=/1245x0/filters:no_upscale():strip_icc()/jade-plant-moss-accent-table-c503ce13-9538bbfb99874b278a195fb5de4fee1a.jpg"
  },
  {
    name: "Rubber Plant",
    description: "Large-leaved indoor tree that purifies air. Prefers bright, filtered light and light watering.",
    amount_of_sun: 70,
    days_to_water: 7,
    growth_req: 6,
    image_url: "https://cdn.shopify.com/s/files/1/0062/8532/8445/products/Rubber_Tree_BB.jpg?v=1666970708"
  },
  {
    name: "Calathea",
    description: "Colorful foliage and a reputation for movement with light. Thrives in shade and humidity.",
    amount_of_sun: 30,
    days_to_water: 4,
    growth_req: 5,
    image_url: "https://www.gardenia.net/wp-content/uploads/2024/02/shutterstock_2221039849.jpg"
  },
  {
    name: "ZZ Plant",
    description: "Tolerant of neglect and low light, the ZZ plant is perfect for low-maintenance spaces.",
    amount_of_sun: 25,
    days_to_water: 14,
    growth_req: 4,
    image_url: "https://hips.hearstapps.com/hmg-prod/images/how-to-care-for-a-zz-plant-1643045463.jpeg"
  },
  {
    name: "Cactus",
    description: "Desert plant with spines and water-retaining stems. Requires full sun and rare watering.",
    amount_of_sun: 100,
    days_to_water: 30,
    growth_req: 3,
    image_url: "https://www.parkseed.com/media/catalog/product/2/9/29377.jpg?optimize=medium&bg-color=255,255,255&fit=bounds&height=740&width=740&canvas=740:740"
  },
  {
    name: "Cucumber",
    description: "A vining plant that produces crisp, refreshing fruits. Thrives in full sun and moist soil.",
    amount_of_sun: 90,
    days_to_water: 2,
    growth_req: 6,
    image_url: "https://i.ytimg.com/vi/OYZbTFXfuz4/maxresdefault.jpg"
  },
  {
    name: "Carrot",
    description: "A root vegetable grown for its sweet, crunchy taproot. Needs loose soil and consistent moisture.",
    amount_of_sun: 80,
    days_to_water: 3,
    growth_req: 7,
    image_url: "https://i1.wp.com/blog.backtotheroots.com/wp-content/uploads/2021/02/image1-3.png?fit=1999%2C1274&ssl=1"
  },
  {
    name: "Tomato",
    description: "A sun-loving fruit that's a staple in many gardens. Requires support and regular watering.",
    amount_of_sun: 95,
    days_to_water: 2,
    growth_req: 6,
    image_url: "https://bittmanproject.com/wp-content/uploads/engin-akyurt-HrCatSbULFY-unsplash-scaled.jpg"
  },
  {
    name: "Lettuce",
    description: "Fast-growing leafy green that prefers cooler temperatures and frequent watering.",
    amount_of_sun: 60,
    days_to_water: 2,
    growth_req: 4,
    image_url: "https://i0.wp.com/post.healthline.com/wp-content/uploads/2020/03/romaine-lettuce-1296x728-body.jpg?w=1155&h=1528"
  },
  {
    name: "Bell Pepper",
    description: "Crunchy and sweet fruit that comes in various colors. Requires warm temperatures and sun.",
    amount_of_sun: 85,
    days_to_water: 3,
    growth_req: 6,
    image_url: "https://healthyfamilyproject.com/wp-content/uploads/2020/05/Bell-Peppers-background.jpg"
  },
  {
    name: "Spinach",
    description: "Leafy green packed with nutrients. Grows quickly in cooler climates with moist soil.",
    amount_of_sun: 65,
    days_to_water: 3,
    growth_req: 4,
    image_url: "https://post.healthline.com/wp-content/uploads/2019/05/spinach-1296x728-header.jpg"
  },
  {
    name: "Zucchini",
    description: "A fast-growing summer squash with mild flavor. Needs space, sun, and regular water.",
    amount_of_sun: 90,
    days_to_water: 3,
    growth_req: 5,
    image_url: "https://snaped.fns.usda.gov/sites/default/files/styles/crop_ratio_7_5/public/seasonal-produce/2018-05/zucchini.jpg.webp?itok=PH0PxpG4"
  },
  {
    name: "Strawberry",
    description: "A popular berry with sweet, juicy fruits. Grows well in sunny spots with frequent watering.",
    amount_of_sun: 85,
    days_to_water: 2,
    growth_req: 5,
    image_url: "https://cdn.britannica.com/22/75922-050-D3982BD0/flowers-fruits-garden-strawberry-plant-species.jpg"
  },
  {
    name: "Basil",
    description: "A fragrant herb often used in cooking. Thrives in warm weather and regular watering.",
    amount_of_sun: 80,
    days_to_water: 3,
    growth_req: 3,
    image_url: "https://cdn.shopify.com/s/files/1/0586/9374/6850/files/Basil_Italian_2-min_480x480.jpg?v=1676385479"
  },
  {
    name: "Green Onion",
    description: "Easy-to-grow plant used for its edible shoots and bulbs. Quick harvest and minimal care.",
    amount_of_sun: 70,
    days_to_water: 4,
    growth_req: 4,
    image_url: "https://www.foodandwine.com/thmb/g15c66LBVlkickty5gDSID7K8T0=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/The-Difference-Between-Green-Onions-FT-4-BLOG0622-517221fbc44c42cd876524c1c291de4f.jpg"
  }
])
