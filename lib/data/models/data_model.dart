class CuisineDataModel {
  final String id;
  final String image;
  final String name;

  CuisineDataModel({required this.id, required this.image, required this.name});
}

class HotelDataModel {
  final String id;
  final String image;
  final String name;
  final List<String> type;
  final List<String> cuisineIds;
  final List<DishDataModel> dishes;

  HotelDataModel(
      {required this.id,
      required this.image,
      required this.name,
      required this.type,
      required this.cuisineIds,
      required this.dishes});
}

class DishDataModel {
  final String id;
  final String image;
  final String name;
  final double price;
  final String type;
  final String cuisineId;
  final String hotelId;

  DishDataModel(
      {required this.id,
      required this.image,
      required this.name,
      required this.price,
      required this.type,
      required this.cuisineId,
      required this.hotelId});
}

final List<CuisineDataModel> cuisines = [
  CuisineDataModel(
      id: 'cuisine1',
      name: 'Burger',
      image:
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/v1674029845/PC_Creative%20refresh/3D_bau/banners_new/Burger.png"),
  CuisineDataModel(
      id: 'cuisine2',
      name: 'Pizza',
      image:
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/v1674029856/PC_Creative%20refresh/3D_bau/banners_new/Pizza.png"),
  CuisineDataModel(
      id: 'cuisine3',
      name: 'Biryani',
      image:
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/v1675667625/PC_Creative%20refresh/Biryani_2.png"),
  CuisineDataModel(
      id: 'cuisine4',
      name: 'Chinese',
      image:
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/v1674029848/PC_Creative%20refresh/3D_bau/banners_new/Chinese.png"),
  CuisineDataModel(
      id: 'cuisine5',
      name: 'South Indian',
      image:
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/v1674029850/PC_Creative%20refresh/3D_bau/banners_new/Dosa.png"),
  CuisineDataModel(
      id: 'cuisine6',
      name: 'North Indian',
      image:
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/v1675667625/PC_Creative%20refresh/North_Indian_4.png"),
  CuisineDataModel(
      id: 'cuisine7',
      name: 'Salad',
      image:
      "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/v1674029859/PC_Creative%20refresh/3D_bau/banners_new/Salad.png"),
  CuisineDataModel(
      id: 'cuisine8',
      name: 'Shawarma',
      image:
      "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/v1674029859/PC_Creative%20refresh/3D_bau/banners_new/Shawarma.png"),
  CuisineDataModel(
      id: 'cuisine9',
      name: 'Cakes',
      image:
      "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/v1674029845/PC_Creative%20refresh/3D_bau/banners_new/Cakes.png"),
  CuisineDataModel(
      id: 'cuisine10',
      name: 'Shakes',
      image:
      "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/v1674029858/PC_Creative%20refresh/3D_bau/banners_new/Shakes.png"),
];

final List<HotelDataModel> hotels = [
  HotelDataModel(
      id: 'hotel1',
      name: 'McDonald\'s',
      type: ['Veg', 'Non-Veg'],
      image:
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/bb7ae131544c7d37e10fc5faf76f09d6",
      cuisineIds: ['cuisine1'],
      dishes: [
        DishDataModel(
            id: '101',
            image:
                "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/b13811eeee71e578bc6ca89eca0ec87f",
            name: 'McAloo Tikki Burger',
            price: 69.23,
            type: 'Veg',
            cuisineId: 'cuisine1',
            hotelId: 'hotel1'),
        DishDataModel(
            id: "102",
            image:
                "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/12b045b7fd1d82b15ebde45b778e22b8",
            name: 'McSpicy Chicken Burger',
            price: 210.56,
            type: 'Non-Veg',
            cuisineId: 'cuisine1',
            hotelId: 'hotel1'),
      ]),
  HotelDataModel(
      id: 'hotel2',
      name: 'Spice Paradise',
      type: ['Veg', 'Non-Veg'],
      image:
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/lrgppte2n7lwjamualpo",
      cuisineIds: ['cuisine6', 'cuisine3'],
      dishes: [
        DishDataModel(
            id: '201',
            image:
                "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/fdxukbthpbz9a8yqg7hv",
            name: 'Chicken Tikka Masala',
            price: 407,
            type: 'Non-Veg',
            cuisineId: 'cuisine6',
            hotelId: 'hotel2'),
        DishDataModel(
            id: "202",
            image:
                "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/mv1aj5ljavknms8j0xys",
            name: 'Kadhai Panner',
            price: 356.12,
            type: 'Veg',
            cuisineId: 'cuisine6',
            hotelId: 'hotel2'),
        DishDataModel(
            id: "203",
            image:
                "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/a84ecfc659853a4146e100a85efcd9db",
            name: 'Butter Roti',
            price: 43,
            type: 'Veg',
            cuisineId: 'cuisine6',
            hotelId: 'hotel2'),
        DishDataModel(
            id: "204",
            image:
                "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/tpwumyfexdmlznkveqbk",
            name: 'Chicken Biryani',
            price: 325.56,
            type: 'Non-Veg',
            cuisineId: 'cuisine3',
            hotelId: 'hotel2'),
      ]),
  HotelDataModel(
      id: 'hotel3',
      name: 'Golden Dragon',
      type: ['Veg', 'Non-Veg'],
      image:
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/bsfamknqlyurys2u84xe",
      cuisineIds: ['cuisine4'],
      dishes: [
        DishDataModel(
            id: "301",
            image:
                "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/beeeobqo8fgelawxetpa",
            name: 'Veg Hakka Noodles',
            price: 180,
            type: 'Veg',
            cuisineId: 'cuisine4',
            hotelId: 'hotel3'),
        DishDataModel(
            id: "302",
            image:
                "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/dvjre5vszligh1guxcaw",
            name: 'Chicken Schezwan Fried Noodles',
            price: 219,
            type: 'Non-Veg',
            cuisineId: 'cuisine4',
            hotelId: 'hotel3'),
      ]),
  HotelDataModel(
      id: 'hotel4',
      name: 'Pizza Hut',
      type: ['Veg', 'Non-Veg'],
      image:
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/de4630ada7bbe10ea3a952fe2925df49",
      cuisineIds: ['cuisine2'],
      dishes: [
        DishDataModel(
            id: "401",
            image:
                "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/b7d1f56df6414f8b6e49001af95e259a",
            name: 'Veggie Supreme',
            price: 275,
            type: 'Veg',
            cuisineId: 'cuisine2',
            hotelId: 'hotel4'),
        DishDataModel(
            id: "402",
            image:
                "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/gdz44c9hirco09bdafoq",
            name: 'Chicken Pepperoni',
            price: 369,
            type: 'Non-Veg',
            cuisineId: 'cuisine2',
            hotelId: 'hotel4'),
      ]),
  HotelDataModel(
      id: 'hotel5',
      name: 'Biryani By Kilo',
      type: ['Veg', 'Non-Veg'],
      image:
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/bf9be1c6b9d796850f426281559cb2d2",
      cuisineIds: ['cuisine3', 'cuisine6'],
      dishes: [
        DishDataModel(
            id: "501",
            image:
                "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/du6khho1fxgofwqkhmgx",
            name: 'Chicken Hyderabadi Dum Biryani 1KG',
            price: 854,
            type: 'Non-Veg',
            cuisineId: 'cuisine3',
            hotelId: 'hotel5'),
        DishDataModel(
            id: "501",
            image:
                "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/fjuahmkmqwqarxzt98jp",
            name: 'Panner Dum Biryani 1/2 KG',
            price: 854,
            type: 'Veg',
            cuisineId: 'cuisine3',
            hotelId: 'hotel5'),
      ]),
  HotelDataModel(
      id: 'hotel6',
      name: 'Mankar Dosa',
      type: ['Veg'],
      image:
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/az1misfx7qbgicvjrivo",
      cuisineIds: ['cuisine5'],
      dishes: [
        DishDataModel(
            id: "601",
            image:
                "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/ltsjod6x2zpaohwqhp6n",
            name: 'Masala Dosa',
            price: 90,
            type: 'Veg',
            cuisineId: 'cuisine5',
            hotelId: 'hotel6'),
        DishDataModel(
            id: "602",
            image:
                "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/xr7czn60j020elheqp5j",
            name: 'Onion Uttapam',
            price: 100,
            type: 'Veg',
            cuisineId: 'cuisine5',
            hotelId: 'hotel6'),
        DishDataModel(
            id: "603",
            image:
                "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/fedeeftvashnzcfzoukp",
            name: 'Butter Sponge Dosa',
            price: 96,
            type: 'Veg',
            cuisineId: 'cuisine5',
            hotelId: 'hotel6'),
      ]),
];

/*
final List<Dish> dishes = [
  Dish(id: 'menu1', name: 'Veggie Burger', price: 5.99, cuisineId: 'cuisine1', hotelId: 'hotel1'),
  Dish(id: 'menu2', name: 'Margherita Pizza', price: 8.99, cuisineId: 'cuisine2', hotelId: 'hotel1'),
  Dish(id: 'menu3', name: 'Masala Dosa', price: 6.49, cuisineId: 'cuisine3', hotelId: 'hotel1'),
  Dish(id: 'menu4', name: 'Paneer Pizza', price: 9.49, cuisineId: 'cuisine2', hotelId: 'hotel2'),
  Dish(id: 'menu5', name: 'Onion Dosa', price: 5.99, cuisineId: 'cuisine3', hotelId: 'hotel2'),
];
 */
