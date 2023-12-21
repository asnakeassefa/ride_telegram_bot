import 'dart:convert';

import '../domain/schema_settings_model.dart';

/// statusDescription : "success"
/// catalogue : [{"template":"most_popular","catalogueType":"catalogueType","display_name":"Most Popular","items":[{"mobileImage":"","unique_name":"mobile_phones","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1668091712639_271.png","name":"Mobile Phones","parentCategoryId":1,"sectionDescription":"Mobile Phones","id":1,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1668171246377_537.jpg","sectionType":"Category","categoryId":1},{"mobileImage":"","unique_name":"girls_fashion","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1657889812426_739.png","name":"Girls Fashion","parentCategoryId":4,"sectionDescription":"Girls Fashion","id":18,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1657889812441_564.png","sectionType":"Category","categoryId":18},{"mobileImage":"","unique_name":"womens_wear","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1668088249377_132.png","name":"Womens Wear","parentCategoryId":2,"sectionDescription":"Womens Wear","id":6,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1668088249671_652.png","sectionType":"Category","categoryId":6},{"mobileImage":"","unique_name":"mens_wear","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1668087597222_123.png","name":"Mens Wear","parentCategoryId":2,"sectionDescription":"Mens Wear","id":5,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1668087596921_610.png","sectionType":"Category","categoryId":5},{"mobileImage":"","unique_name":"sports_and_fitness","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1668091679471_514.png","name":"Sports and Fitness","parentCategoryId":6,"sectionDescription":"Sports and Fitness","id":27,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1668091679487_843.png","sectionType":"Category","categoryId":27},{"mobileImage":"","unique_name":"beauty,_health_and_personal_care","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1659007751050_705.png","name":"Beauty, Health and Personal Care","parentCategoryId":6,"sectionDescription":"Beauty, Health and Personal Care","id":26,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1659007750997_933.png","sectionType":"Category","categoryId":26},{"mobileImage":"","unique_name":"home_furniture","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1668092258376_368.png","name":"Home Furniture","parentCategoryId":3,"sectionDescription":"Home Furniture","id":12,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1668092258407_618.png","sectionType":"Category","categoryId":12},{"mobileImage":"","unique_name":"groceries","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1659008666743_682.png","name":"Groceries","parentCategoryId":6,"sectionDescription":"Groceries","id":25,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1659008666790_503.png","sectionType":"Category","categoryId":25}],"key":"most_popular"},{"template":"categories","catalogueType":"catalogueType","display_name":"Categories","items":[{"mobileImage":"","unique_name":"smart_tvs","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1668091030129_954.png","name":"Smart TVs","sectionDescription":"Smart TVs","id":5,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1668091030198_731.png","sectionType":"SubCategory","categoryId":2},{"mobileImage":"","unique_name":"smart_phones","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1668090716374_360.png","name":"Smart Phones","sectionDescription":"Smart Phones","id":1,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1668090716459_503.png","sectionType":"SubCategory","categoryId":1},{"mobileImage":"","unique_name":"laptops","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1668090517972_435.png","name":"Laptops","sectionDescription":"Laptops","id":12,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1668090518019_339.png","sectionType":"SubCategory","categoryId":4},{"mobileImage":"","unique_name":"casual_shoes","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1668091433263_874.png","name":"Casual Shoes","sectionDescription":"Casual Shoes","id":33,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1668173435362_850.png","sectionType":"SubCategory","categoryId":7},{"mobileImage":"","unique_name":"watches","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1654690408267_281.png","name":"Watches","sectionDescription":"Watches","id":39,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1654690408283_940.png","sectionType":"SubCategory","categoryId":9},{"mobileImage":"","unique_name":"bags_and_purses","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1654766569232_823.jpg","name":"Bags and Purses","sectionDescription":"Bags and Purses","id":48,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1668175742139_769.png","sectionType":"SubCategory","categoryId":10},{"mobileImage":"","unique_name":"diapers_and_wipes","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1657891092777_729.png","name":"Diapers and Wipes","sectionDescription":"Diapers and Wipes","id":90,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1657891092074_815.png","sectionType":"SubCategory","categoryId":15},{"mobileImage":"","unique_name":"board_games","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1657893021853_945.png","name":"Board Games","sectionDescription":"Board Games","id":94,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1657893023186_967.png","sectionType":"SubCategory","categoryId":16},{"mobileImage":"","unique_name":"engine_parts","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1668090145669_351.png","name":"Engine Parts","sectionDescription":"Engine Parts","id":116,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1668090145716_764.png","sectionType":"SubCategory","categoryId":20},{"mobileImage":"","unique_name":"engine_oils","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1668168597987_149.png","name":"Engine Oils","sectionDescription":"Engine Oils","id":139,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1668168597987_656.png","sectionType":"SubCategory","categoryId":24},{"mobileImage":"","unique_name":"spices","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1668093578241_643.jpg","name":"Spices","sectionDescription":"Spices","id":142,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1668172000045_607.png","sectionType":"SubCategory","categoryId":25},{"mobileImage":"","unique_name":"fertilizers","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1668091127718_728.png","name":"Fertilizers","sectionDescription":"Fertilizers","id":157,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1668091127718_166.png","sectionType":"SubCategory","categoryId":28},{"mobileImage":"","unique_name":"ceramics","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1668093491857_723.jpg","name":"Ceramics","sectionDescription":"Ceramics","id":170,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1668173078984_671.png","sectionType":"SubCategory","categoryId":31},{"mobileImage":"","unique_name":"iron","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1659011444422_931.png","name":"Iron","sectionDescription":"Iron","id":176,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1659011443921_343.png","sectionType":"SubCategory","categoryId":32},{"mobileImage":"","unique_name":"steel","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1668093250496_367.png","name":"Steel","sectionDescription":"Steel","id":184,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1668093250496_580.png","sectionType":"SubCategory","categoryId":31},{"mobileImage":"","unique_name":"drugs","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1668092589513_968.png","name":"Drugs","sectionDescription":"Drugs","id":188,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1668174857753_602.png","sectionType":"SubCategory","categoryId":26}],"key":"categories"},{"template":"collections","catalogueType":"catalogueType","display_name":"Collections","items":[{"mobileImage":"","unique_name":"bags_and_purses","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1654766569232_823.jpg","name":"Bags and Purses","sectionDescription":"Bags for Her","id":48,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1668175742139_769.png","sectionType":"SubCategory","categoryId":10},{"mobileImage":"","unique_name":"teddy_bears","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1658910180830_414.png","name":"Teddy Bears","sectionDescription":"Toys for Infants","id":97,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1658910179874_808.png","sectionType":"SubCategory","categoryId":16},{"mobileImage":"","unique_name":"jewellery","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1654767291452_514.jpg","name":"Jewellery","sectionDescription":"Wedding Gifts","id":50,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1654767291768_268.jpg","sectionType":"SubCategory","categoryId":10},{"mobileImage":"","unique_name":"photography","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1668092916475_547.png","name":"Photography","sectionDescription":"Photography","id":198,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1668092916798_655.png","sectionType":"SubCategory","categoryId":4},{"mobileImage":"","unique_name":"puzzles","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1668175458020_846.png","name":"Puzzles","sectionDescription":"Birthday Giveaways","id":95,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1668175458051_389.png","sectionType":"SubCategory","categoryId":16},{"mobileImage":"","unique_name":"makeup_and_skin_care","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1668092828096_777.png","name":"Makeup and Skin Care","sectionDescription":"Parties","id":146,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1668092828134_249.png","sectionType":"SubCategory","categoryId":26},{"mobileImage":"","unique_name":"formal_shoes","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1654688063713_335.png","name":"Formal Shoes","sectionDescription":"Formal Shoes","id":32,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1654688064059_320.png","sectionType":"SubCategory","categoryId":7},{"mobileImage":"","unique_name":"heels","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1654689333043_809.jpg","name":"Heels","sectionDescription":"Heels","id":35,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1668175281103_571.png","sectionType":"SubCategory","categoryId":8}],"key":"collections"},{"template":"deals_expiring_soon","catalogueType":"catalogueType","display_name":"Deals Expiring Soon","items":[],"key":"deals_expiring_soon"},{"template":"top_brands","catalogueType":"catalogueType","display_name":"Top Brands","items":[{"mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/brand_1655559049715_684.png","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/brand_1659080460383_799.png","name":"LG","parentCategoryId":1,"sectionDescription":"LG","id":3,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/brand_1659080460383_234.png","sectionType":"Brand"},{"mobileImage":"","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/brand_1668093493093_422.png","name":"Toyota","parentCategoryId":5,"sectionDescription":"TOYOTA","id":26,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/brand_1668093493109_903.png","sectionType":"Brand"},{"mobileImage":"","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/brand_1668089967084_784.png","name":"Nike","parentCategoryId":2,"sectionDescription":"NIKE","id":28,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/brand_1668089967138_184.png","sectionType":"Brand"},{"mobileImage":"","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/brand_1668090129491_475.png","name":"Adidas","parentCategoryId":2,"sectionDescription":"ADIDAS","id":29,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/brand_1668090129507_352.png","sectionType":"Brand"},{"mobileImage":"","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/brand_1671275890176_968.jpeg","name":"MILANO","parentCategoryId":2,"sectionDescription":"MILANO","id":31,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/brand_1671275890214_200.jpeg","sectionType":"Brand"},{"mobileImage":"","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/brand_1668093157683_984.png","name":"Samsung","parentCategoryId":1,"sectionDescription":"SAMSUNG","id":2,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/brand_1668093157683_862.png","sectionType":"Brand"},{"mobileImage":"","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/brand_1659080612521_684.png","name":"LENOVO","parentCategoryId":1,"sectionDescription":"LENOVO","id":15,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/brand_1659080612552_860.png","sectionType":"Brand"},{"mobileImage":"","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/brand_1668089754675_706.png","name":"Suzuki","parentCategoryId":5,"sectionDescription":"SUZUKI","id":27,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/brand_1668089754691_822.png","sectionType":"Brand"}],"key":"top_brands"},{"template":"under_1000","catalogueType":"catalogueType","display_name":"Under 1000","items":[{"unitPrice":"809.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1669882153049_372.png","isDiscounted":"1","unique_id":"MTIzNA==","offerPrice":809,"actualPrice":"809.00","ProductId":1234,"sectionDescription":"Samsung Galaxy A02 farm glass","ratingCount":30,"primarySubProduct":1421,"productName":"Samsung galaxy A02 farm glass","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1669882152989_500.png","webThumbnail":"","DiscountType":"FIXED","maxOrder":"100","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"600.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1669187041396_899.png","isDiscounted":"1","unique_id":"MTE4Ng==","offerPrice":600,"actualPrice":"600.00","ProductId":1186,"sectionDescription":"Sandals for Girls","ratingCount":30,"primarySubProduct":1372,"productName":"Girls Shoes","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1669187041264_847.png","webThumbnail":"","DiscountType":"FIXED","maxOrder":"1","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"630.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1669191724678_910.png","isDiscounted":"0","unique_id":"MTA3MA==","offerPrice":630,"actualPrice":"630.00","ProductId":1070,"sectionDescription":"Women of Africa","ratingCount":30,"primarySubProduct":1255,"productName":"Baby girls shoes","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1669191724609_250.png","webThumbnail":"","DiscountType":"NotDiscounted","maxOrder":"1","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"700.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1668579952266_666.png","isDiscounted":"1","unique_id":"MTAxNA==","offerPrice":700,"actualPrice":"700.00","ProductId":1014,"sectionDescription":"True Love Perfume","ratingCount":30,"primarySubProduct":1193,"productName":"TRUE LOVE PERFUME","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1668579951418_486.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1667377379325_500.jpg","DiscountType":"FIXED","maxOrder":"5","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"750.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1668579871878_998.png","isDiscounted":"1","unique_id":"MTAxMw==","offerPrice":750,"actualPrice":"750.00","ProductId":1013,"sectionDescription":"Sultan Alquloob Perfume","ratingCount":30,"primarySubProduct":1192,"productName":"SULTAN ALQULOOB PERFUME","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1668579871863_741.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1667377104012_878.jpg","DiscountType":"FIXED","maxOrder":"5","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"500.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1668579688906_255.png","isDiscounted":"0","unique_id":"MTAxMQ==","offerPrice":500,"actualPrice":"500.00","ProductId":1011,"sectionDescription":"Maysoon Khalta Perfume","ratingCount":30,"primarySubProduct":1190,"productName":"MAYSOON KHALTA PERFUME","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1668579689191_376.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1667376488530_912.jpg","DiscountType":"NotDiscounted","maxOrder":"5","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"950.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1668170842862_316.png","isDiscounted":"0","unique_id":"ODg3","offerPrice":950,"actualPrice":"950.00","ProductId":887,"sectionDescription":"Electric Lunch Box","ratingCount":30,"primarySubProduct":1060,"productName":"Electric Lunch Box","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1668170842847_350.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1663661397024_710.png","DiscountType":"NotDiscounted","maxOrder":"1","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"4450.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1663593116626_857.png","isDiscounted":"0","unique_id":"ODY5","offerPrice":4450,"actualPrice":"4450.00","ProductId":869,"sectionDescription":"Kids school bags","ratingCount":30,"primarySubProduct":1040,"productName":"Kids school bags","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1663593116911_181.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1663593116911_181.png","DiscountType":"NotDiscounted","maxOrder":"1","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"550.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1663577015640_132.png","isDiscounted":"0","unique_id":"ODU1","offerPrice":550,"actualPrice":"550.00","ProductId":855,"sectionDescription":"Water jar holder with valve","ratingCount":30,"primarySubProduct":1026,"productName":"Water jar holder with valve","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1663577015624_599.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1663577015624_599.png","DiscountType":"NotDiscounted","maxOrder":"1","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"400.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1668171651801_899.png","isDiscounted":"1","unique_id":"NzM5","offerPrice":400,"actualPrice":"400.00","ProductId":739,"sectionDescription":"Baby Feeding Bottle Spoon with Container Baby Food","ratingCount":30,"primarySubProduct":906,"productName":"Baby Feeding Bottle Spoon with Container Baby Food","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1668171651786_751.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660828393265_766.png","DiscountType":"FIXED","maxOrder":"1","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"600.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1660826359729_468.png","isDiscounted":"0","unique_id":"NzMy","offerPrice":600,"actualPrice":"600.00","ProductId":732,"sectionDescription":"Baby care kit","ratingCount":30,"primarySubProduct":899,"productName":"Baby care kit","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660826359745_126.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660826359745_126.png","DiscountType":"NotDiscounted","maxOrder":"1","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"630.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1660819243580_405.png","isDiscounted":"0","unique_id":"NzI0","offerPrice":630,"actualPrice":"630.00","ProductId":724,"sectionDescription":"Girls Shoes","ratingCount":30,"primarySubProduct":889,"productName":"Girls Shoes","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660819243381_697.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660819243381_697.png","DiscountType":"NotDiscounted","maxOrder":"1","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"750.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1660807649443_962.png","isDiscounted":"0","unique_id":"Njg2","offerPrice":750,"actualPrice":"750.00","ProductId":686,"sectionDescription":"knee pad","ratingCount":30,"primarySubProduct":847,"productName":"knee pad","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660807649510_329.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660807649510_329.png","DiscountType":"NotDiscounted","maxOrder":"1","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"200.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1660804371769_104.png","isDiscounted":"0","unique_id":"Njc2","offerPrice":200,"actualPrice":"200.00","ProductId":676,"sectionDescription":"Hair Shield","ratingCount":30,"primarySubProduct":837,"productName":"Hair Shield","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660804371769_603.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660804371769_603.png","DiscountType":"NotDiscounted","maxOrder":"1","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"350.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1660739929175_494.png","isDiscounted":"0","unique_id":"NjUy","offerPrice":350,"actualPrice":"350.00","ProductId":652,"sectionDescription":"Burger Press","ratingCount":30,"primarySubProduct":813,"productName":"Burger press ","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660739928891_449.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660739928891_449.png","DiscountType":"NotDiscounted","maxOrder":"1","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"700.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1660731137306_684.png","isDiscounted":"0","unique_id":"NjI0","offerPrice":700,"actualPrice":"700.00","ProductId":624,"sectionDescription":"Necklace","ratingCount":30,"primarySubProduct":780,"productName":"Necklace","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660731137053_543.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660731137053_543.png","DiscountType":"NotDiscounted","maxOrder":"1","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"500.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1660726997281_163.png","isDiscounted":"0","unique_id":"NjIz","offerPrice":500,"actualPrice":"500.00","ProductId":623,"sectionDescription":"Rings","ratingCount":30,"primarySubProduct":779,"productName":"Rings","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660726997222_150.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660726997222_150.png","DiscountType":"NotDiscounted","maxOrder":"1","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"199.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1668176337393_694.png","isDiscounted":"0","unique_id":"NTg5","offerPrice":199,"actualPrice":"199.00","ProductId":589,"sectionDescription":"Socks","ratingCount":30,"primarySubProduct":745,"productName":"Socks","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660719725266_470.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660719725266_470.png","DiscountType":"NotDiscounted","maxOrder":"10","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"170.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1660306603462_609.png","isDiscounted":"0","unique_id":"NDM2","offerPrice":170,"actualPrice":"170.00","ProductId":436,"sectionDescription":"Baby girl bow decor socks","ratingCount":30,"primarySubProduct":570,"productName":"Baby girl bow decor socks","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660306602483_763.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660306602483_763.png","DiscountType":"NotDiscounted","maxOrder":"10","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"800.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1660203449760_392.png","isDiscounted":"0","unique_id":"MzM4","offerPrice":800,"actualPrice":"800.00","ProductId":338,"sectionDescription":"Jacket","ratingCount":30,"primarySubProduct":468,"productName":"Jacket","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660203449876_665.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1660203449876_665.png","DiscountType":"NotDiscounted","maxOrder":"1","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"35.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1659941996503_869.png","isDiscounted":"0","unique_id":"MjA4","offerPrice":35,"actualPrice":"35.00","ProductId":208,"sectionDescription":"clobetasol cream","ratingCount":30,"primarySubProduct":334,"productName":"clobetasol cream","minOrder":"100","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1659941996032_354.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1659941996032_354.png","DiscountType":"NotDiscounted","maxOrder":"100","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"550.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1659702366513_897.png","isDiscounted":"0","unique_id":"MTk4","offerPrice":550,"actualPrice":"550.00","ProductId":198,"sectionDescription":"Sweater","ratingCount":30,"primarySubProduct":324,"productName":"Sweater","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1659702366409_450.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1659702366409_450.png","DiscountType":"NotDiscounted","maxOrder":"1","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"450.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1659699623771_720.png","isDiscounted":"0","unique_id":"MTk0","offerPrice":450,"actualPrice":"450.00","ProductId":194,"sectionDescription":"Top","ratingCount":30,"primarySubProduct":320,"productName":"Top","minOrder":"1","DiscountAmount":0,"manufacturer":"7","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1659699623771_807.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1659699623771_807.png","DiscountType":"NotDiscounted","maxOrder":"1","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"},{"unitPrice":"850.00","mobileImage":"https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Images/product_1665405938590_435.png","isDiscounted":"0","unique_id":"OTk=","offerPrice":850,"actualPrice":"850.00","ProductId":99,"sectionDescription":"Jeans","ratingCount":30,"primarySubProduct":130,"productName":"Jeans","minOrder":"1","DiscountAmount":0,"manufacturer":"6","webImage":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1665405938575_708.png","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/Web/Images/product_1665405938575_708.png","DiscountType":"NotDiscounted","maxOrder":"1","currency":"ETB","mobileThumbnail":"","DiscountValue":0,"productRating":4.2,"sectionType":"Product","discountDescription":"0.00 ETB"}],"key":"under_1000"}]
/// statusMessage : "Request Successful"
/// statusCode : "000"

MobileCatalogueDto mobileCatalogueDtoFromJson(String str) =>
    MobileCatalogueDto.fromJson(json.decode(str));

String mobileCatalogueDtoToJson(MobileCatalogueDto data) =>
    json.encode(data.toJson());

class MobileCatalogueDto {
  MobileCatalogueDto({
    String? statusDescription,
    List<Catalogue>? catalogue,
    String? statusMessage,
    String? statusCode,
  }) {
    _statusDescription = statusDescription;
    _catalogue = catalogue;
    _statusMessage = statusMessage;
    _statusCode = statusCode;
  }

  MobileCatalogueDto.fromJson(dynamic json) {
    _statusDescription = json['statusDescription'];
    if (json['catalogue'] != null) {
      _catalogue = [];
      json['catalogue'].forEach((v) {
        _catalogue?.add(Catalogue.fromJson(v));
      });
    }
    _statusMessage = json['statusMessage'];
    _statusCode = json['statusCode'];
  }

  String? _statusDescription;
  List<Catalogue>? _catalogue;
  String? _statusMessage;
  String? _statusCode;

  MobileCatalogueDto copyWith({
    String? statusDescription,
    List<Catalogue>? catalogue,
    String? statusMessage,
    String? statusCode,
  }) =>
      MobileCatalogueDto(
        statusDescription: statusDescription ?? _statusDescription,
        catalogue: catalogue ?? _catalogue,
        statusMessage: statusMessage ?? _statusMessage,
        statusCode: statusCode ?? _statusCode,
      );

  String? get statusDescription => _statusDescription;

  List<Catalogue>? get catalogue => _catalogue;

  String? get statusMessage => _statusMessage;

  String? get statusCode => _statusCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statusDescription'] = _statusDescription;
    if (_catalogue != null) {
      map['catalogue'] = _catalogue?.map((v) => v.toJson()).toList();
    }
    map['statusMessage'] = _statusMessage;
    map['statusCode'] = _statusCode;
    return map;
  }
}

/// template : "most_popular"
/// catalogueType : "catalogueType"
/// display_name : "Most Popular"
/// items : [{"mobileImage":"","unique_name":"mobile_phones","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1668091712639_271.png","name":"Mobile Phones","parentCategoryId":1,"sectionDescription":"Mobile Phones","id":1,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1668171246377_537.jpg","sectionType":"Category","categoryId":1},{"mobileImage":"","unique_name":"girls_fashion","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1657889812426_739.png","name":"Girls Fashion","parentCategoryId":4,"sectionDescription":"Girls Fashion","id":18,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1657889812441_564.png","sectionType":"Category","categoryId":18},{"mobileImage":"","unique_name":"womens_wear","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1668088249377_132.png","name":"Womens Wear","parentCategoryId":2,"sectionDescription":"Womens Wear","id":6,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1668088249671_652.png","sectionType":"Category","categoryId":6},{"mobileImage":"","unique_name":"mens_wear","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1668087597222_123.png","name":"Mens Wear","parentCategoryId":2,"sectionDescription":"Mens Wear","id":5,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1668087596921_610.png","sectionType":"Category","categoryId":5},{"mobileImage":"","unique_name":"sports_and_fitness","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1668091679471_514.png","name":"Sports and Fitness","parentCategoryId":6,"sectionDescription":"Sports and Fitness","id":27,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1668091679487_843.png","sectionType":"Category","categoryId":27},{"mobileImage":"","unique_name":"beauty,_health_and_personal_care","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1659007751050_705.png","name":"Beauty, Health and Personal Care","parentCategoryId":6,"sectionDescription":"Beauty, Health and Personal Care","id":26,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1659007750997_933.png","sectionType":"Category","categoryId":26},{"mobileImage":"","unique_name":"home_furniture","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1668092258376_368.png","name":"Home Furniture","parentCategoryId":3,"sectionDescription":"Home Furniture","id":12,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1668092258407_618.png","sectionType":"Category","categoryId":12},{"mobileImage":"","unique_name":"groceries","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1659008666743_682.png","name":"Groceries","parentCategoryId":6,"sectionDescription":"Groceries","id":25,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1659008666790_503.png","sectionType":"Category","categoryId":25}]
/// key : "most_popular"

Catalogue catalogueFromJson(String str) => Catalogue.fromJson(json.decode(str));

String catalogueToJson(Catalogue data) => json.encode(data.toJson());

class Catalogue {
  Catalogue({
    String? template,
    String? catalogueType,
    String? displayName,
    List<Items>? items,
    String? key,
  }) {
    _template = template;
    _catalogueType = catalogueType;
    _displayName = displayName;
    _items = items;
    _key = key;
  }

  Catalogue.fromJson(dynamic json) {
    _template = json['template'];
    _catalogueType = json['catalogueType'];
    _displayName = json['display_name'];
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
    _key = json['key'];
  }

  String? _template;
  String? _catalogueType;
  String? _displayName;
  List<Items>? _items;
  String? _key;

  Catalogue copyWith({
    String? template,
    String? catalogueType,
    String? displayName,
    List<Items>? items,
    String? key,
  }) =>
      Catalogue(
        template: template ?? _template,
        catalogueType: catalogueType ?? _catalogueType,
        displayName: displayName ?? _displayName,
        items: items ?? _items,
        key: key ?? _key,
      );

  String? get template => _template;

  String? get catalogueType => _catalogueType;

  String? get displayName => _displayName;

  List<Items>? get items => _items;

  String? get key => _key;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['template'] = _template;
    map['catalogueType'] = _catalogueType;
    map['display_name'] = _displayName;
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    map['key'] = _key;
    return map;
  }
}

/// mobileImage : ""
/// unique_name : "mobile_phones"
/// webImage : ""
/// webThumbnail : "https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1668091712639_271.png"
/// name : "Mobile Phones"
/// parentCategoryId : 1
/// sectionDescription : "Mobile Phones"
/// id : 1
/// mobileThumbnail : "https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1668171246377_537.jpg"
/// sectionType : "Category"
/// categoryId : 1

Items itemsFromJson(String str) => Items.fromJson(json.decode(str));

String itemsToJson(Items data) => json.encode(data.toJson());

class Items {
  Items(
      {String? mobileImage,
      String? uniqueName,
      String? webImage,
      String? webThumbnail,
      String? name,
      num? parentCategoryId,
      String? sectionDescription,
      num? id,
      String? mobileThumbnail,
      String? sectionType,
      num? categoryId,
      num? offerPrice}) {
    _mobileImage = mobileImage;
    _uniqueName = uniqueName;
    _webImage = webImage;
    _webThumbnail = webThumbnail;
    _name = name;
    _parentCategoryId = parentCategoryId;
    _sectionDescription = sectionDescription;
    _id = id;
    _mobileThumbnail = mobileThumbnail;
    _sectionType = sectionType;
    _categoryId = categoryId;
    _offerPrice = offerPrice;
  }

  Items.fromJson(dynamic json) {
    _mobileImage = json['mobileImage'];
    _uniqueName = json['unique_name'];
    _webImage = json['webImage'];
    _webThumbnail = json['webThumbnail'];
    _name = json['name'];
    _parentCategoryId = json['parentCategoryId'];
    _sectionDescription = json['sectionDescription'];
    _id = json['id'];
    _mobileThumbnail = json['mobileThumbnail'];
    _sectionType = json['sectionType'];
    _categoryId = json['categoryId'];
    _isDiscounted = json['isDiscounted'];
    _productName = json['productName'];
    _unitPrice = json['unitPrice'];
    _currency = json['currency'];
    _actualPrice = json['actualPrice'];
    _prodId = json['ProductId'];
    _offerPrice = json['offerPrice'];
  }

  String? _mobileImage;
  String? _uniqueName;
  String? _webImage;
  String? _webThumbnail;
  String? _name;
  num? _parentCategoryId;
  String? _sectionDescription;
  num? _id;
  String? _mobileThumbnail;
  String? _sectionType;
  num? _categoryId;
  String? _isDiscounted;
  String? _productName;
  String? _unitPrice;
  String? _currency;
  String? _actualPrice;
  num? _prodId;
  num? _offerPrice;

  Items copyWith(
          {String? mobileImage,
          String? uniqueName,
          String? webImage,
          String? webThumbnail,
          String? name,
          num? parentCategoryId,
          String? sectionDescription,
          num? id,
          String? mobileThumbnail,
          String? sectionType,
          num? categoryId,
          num? offerPrice}) =>
      Items(
        mobileImage: mobileImage ?? _mobileImage,
        uniqueName: uniqueName ?? _uniqueName,
        webImage: webImage ?? _webImage,
        webThumbnail: webThumbnail ?? _webThumbnail,
        name: name ?? _name,
        parentCategoryId: parentCategoryId ?? _parentCategoryId,
        sectionDescription: sectionDescription ?? _sectionDescription,
        id: id ?? _id,
        mobileThumbnail: mobileThumbnail ?? _mobileThumbnail,
        sectionType: sectionType ?? _sectionType,
        categoryId: categoryId ?? _categoryId,
        offerPrice: offerPrice ?? _offerPrice,
      );

  String? get mobileImage => _mobileImage;

  String? get uniqueName => _uniqueName;

  String? get webImage => _webImage;

  String? get webThumbnail => _webThumbnail;

  String? get name => _name;

  num? get parentCategoryId => _parentCategoryId;

  String? get sectionDescription => _sectionDescription;

  num? get id => _id;

  String? get mobileThumbnail => _mobileThumbnail;

  String? get sectionType => _sectionType;

  num? get categoryId => _categoryId;

  num? get offerPrice => _offerPrice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mobileImage'] = _mobileImage;
    map['unique_name'] = _uniqueName;
    map['webImage'] = _webImage;
    map['webThumbnail'] = _webThumbnail;
    map['name'] = _name;
    map['parentCategoryId'] = _parentCategoryId;
    map['sectionDescription'] = _sectionDescription;
    map['id'] = _id;
    map['mobileThumbnail'] = _mobileThumbnail;
    map['sectionType'] = _sectionType;
    map['categoryId'] = _categoryId;
    map['isDiscounted'] = _isDiscounted;
    map['productName'] = _productName;
    map['unitPrice'] = _unitPrice;
    map['currency'] = _currency;
    map['actualPrice'] = _actualPrice;
    map['ProductId'] = _prodId;
    map['offerPrice'] = _offerPrice;
    return map;
  }

  SchemaItem toSchemaItem() => SchemaItem(
      mobileImage: mobileImage,
      uniqueName: uniqueName,
      name: name ?? _productName,
      parentCategoryId: parentCategoryId,
      sectionDescription: sectionDescription,
      id: id,
      mobileThumbnail: mobileThumbnail,
      sectionType: sectionType,
      categoryId: categoryId,
      isDiscounted: _isDiscounted,
      unitPrice: _unitPrice,
      currency: _currency,
      actualPrice: _actualPrice,
      offerPrice: _offerPrice,
      prodId: _prodId);
}
