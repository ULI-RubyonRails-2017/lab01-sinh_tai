# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MenuItem.delete_all

# Breakfast
MenuItem.create(name: 'Cơm Sườn', description: 'Cơm tấm ăn với một miếng sườn lớn.', price: 23000, section: 'breakfast', image_url: 'http://foodsvietnamese.com/wp-content/uploads/2016/10/com-suon-nuong.jpg')
MenuItem.create(name: 'Bánh Ướt', description: 'Bánh ướt là món ăn Việt Name được ăn với nước mắm', price: 17000, section: 'breakfast', image_url: 'http://lambanh365.com/wp-content/uploads/2015/06/cach-lam-banh-uot-ngon-me-ly-1-e1434598404566.jpg')
MenuItem.create(name: 'Bánh cuốn', description: 'Bánh ướt là món ăn Việt Name được ăn với nước mắm', price: 18000, section: 'breakfast', image_url: 'https://vietnamtravel.guide/wp-content/uploads/2016/03/cach-lam-banh-cuon.jpg')
MenuItem.create(name: 'Bì cuốn', description: 'Bì cuốn là một món khai vị. Mỗi cuốn 5000 VND', price: 15000, section: 'breakfast', image_url: 'http://znews-photo-td.zadn.vn/w660/Uploaded/Ohunoaa/2016_08_05/Bi_cuon.jpg')
MenuItem.create(name: 'Bánh Mì', description: 'Bành mì thịt nguội', price: 14000, section: 'breakfast', image_url: 'http://baomoi-photo-1.zadn.vn/16/09/10/244/20293629/8_157119.jpg')

# Lunch
MenuItem.create(name: 'Cơm Chiên Trứng', description: 'Cơm chiên trứng giá bình dân', price: 25000, section: 'lunch', image_url: 'http://media.phunutoday.vn/files/upload_images/2015/11/25/cach-lam-com-chien-trung-thom-ngon-2-phunutoday_vn.jpg')
MenuItem.create(name: 'Bún Bò Huế', description: 'Món bún bò ngon bổ rẻ', price: 20000, section: 'lunch', image_url: 'http://danangfoodie.com/wp-content/uploads/2014/03/bh-7.jpg')
MenuItem.create(name: 'Bánh Ướt Trưa', description: 'Món bánh ướt được bán vào lúc trưa', price: 25000, section: 'lunch', image_url: 'http://lambanh365.com/wp-content/uploads/2015/06/cach-lam-banh-uot-ngon-me-ly-1-e1434598404566.jpg')
MenuItem.create(name: 'Bánh Cuốn Trưa', description: 'Món bánh cuốn được bán vào lúc trưa', price: 25000, section: 'lunch', image_url: 'https://vietnamtravel.guide/wp-content/uploads/2016/03/cach-lam-banh-cuon.jpg')
MenuItem.create(name: 'Bún Mắm', description: 'Bún mắm đặc sản Việt Nam', price: 15000, section: 'lunch', image_url: 'https://yesyourtrip.com/wp-content/uploads/2017/04/bun-mam-4-800x494.jpg')

# Dinner
MenuItem.create(name: 'Hủ Tiếu Nam Vang', description: 'Một món ăn ngon', price: 30000, section: 'dinner', image_url: 'http://nosafood.com/data/image/hu%20tieu.jpg')
MenuItem.create(name: 'Bún Riêu Cua', description: 'Bún riêu cua được nấu với thịt cua tươi sống', price: 25000, section: 'dinner', image_url: 'http://www.hanoistreetfoodtour.com/Photo/Bu-rieu-cua/hanoi_street_food_tour_bun_rieu_cua2.jpg')
MenuItem.create(name: 'Bánh Canh Cua', description: 'Bánh canh cua với thịt cua tươi ngon', price: 100000, section: 'dinner', image_url: 'https://media.foody.vn/res/g64/633963/s/foody-banh-canh-cua-633963-532-636227636750185298.jpg')
MenuItem.create(name: 'Cơm Sườn Cây', description: 'Cơm với sườn cây nướng khá ngon', price: 45000, section: 'dinner', image_url: 'http://www.amthucgiadinh.vn/wp-content/uploads/2013/10/10.3.jpg')
MenuItem.create(name: 'Bún Chả Cá', description: 'Một món ăn bình dân', price: 20000, section: 'dinner', image_url: 'https://media.foody.vn/res/g1/5742/prof/s576x330/foody-mobile-foody-bun-cha-ca-ngu-335-635896777195091193.jpg')

# Drinks
MenuItem.create(name: 'Cocacola', description: 'Một loại nước ngon có ga', price: 10000, section: 'drinks', image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Flasche_Coca-Cola_0%2C2_Liter.jpg/220px-Flasche_Coca-Cola_0%2C2_Liter.jpg')
MenuItem.create(name: 'Pepsi', description: 'Một loại nước ngon có ga', price: 10000, section: 'drinks', image_url: 'https://secure.footprint.net/cupages/pepsi/Shashank/3_cans.png')
MenuItem.create(name: 'Cà Phê', description: 'Cà phê Trung Nguyên', price: 8000, section: 'drinks', image_url: 'http://conlatatca.vn/wp-content/uploads/2016/03/uong-ca-phe-co-anh-huong-den-tinh-trung-hay-khong3.jpg')
MenuItem.create(name: 'Trà Đá', description: 'Trà + đá', price: 1000, section: 'drinks', image_url: 'http://media.phunutoday.vn/files/van.anh/2016/10/12/suc-khoe-phunutodayvn-2323.jpg')
MenuItem.create(name: 'Nước Khoáng', description: 'Nước khoáng đóng chai', price: 5000, section: 'drinks', image_url: 'http://bizweb.dktcdn.net/100/015/572/products/product-1403236338.jpg?v=1445583374450')
