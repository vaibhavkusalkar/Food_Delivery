/*
class Data {
  static List<Map<String, dynamic>> cusine = [
    {
      'id': 'cuisine1',
      'name': 'Burger',
      'imageUrl':
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/v1674029845/PC_Creative%20refresh/3D_bau/banners_new/Burger.png"
    },
    {
      'id': 'cuisine2',
      'name': 'Pizza',
      'imageUrl':
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/v1674029856/PC_Creative%20refresh/3D_bau/banners_new/Pizza.png"
    },
    {
      'id': 'cuisine3',
      'name': 'Biryani',
      'imageUrl':
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/v1675667625/PC_Creative%20refresh/Biryani_2.png"
    },
    {
      'id': 'cuisine4',
      'name': 'Chinese',
      'imageUrl':
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/v1674029848/PC_Creative%20refresh/3D_bau/banners_new/Chinese.png"
    },
    {
      'id': 'cuisine5',
      'name': 'South Indian',
      'imageUrl':
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/v1674029850/PC_Creative%20refresh/3D_bau/banners_new/Dosa.png"
    },
    {
      'id': 'cuisine6',
      'name': 'North Indian',
      'imageUrl':
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/v1675667625/PC_Creative%20refresh/North_Indian_4.png"
    }
  ];

  static List<Map<String, dynamic>> hotel = [
    {
      'id': 'hotel1',
      'name': 'McDonald\'s',
      'type': ['Veg', 'Non-Veg'],
      'imageUrl':
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/bb7ae131544c7d37e10fc5faf76f09d6",
      'cuisineIds': ['cuisine1'],
      'dishes': [
        {
          'id': '101',
          'imageUrl':
              "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/b13811eeee71e578bc6ca89eca0ec87f",
          'name': 'McAloo Tikki Burger',
          'price': 69.23,
          'type': 'Veg',
          'cuisineId': 'cuisine1',
          'hotelId': 'hotel1'
        },
        {
          'id': "102",
          'imageUrl':
              "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/12b045b7fd1d82b15ebde45b778e22b8",
          'name': 'McSpicy Chicken Burger',
          'price': 210.56,
          'type': 'Non-Veg',
          'cuisineId': 'cuisine1',
          'hotelId': 'hotel1'
        },
      ]
    },
    {
      'id': 'hotel2',
      'name': 'Spice Paradise',
      'type': ['Veg', 'Non-Veg'],
      'imageUrl':
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/lrgppte2n7lwjamualpo",
      'cuisineIds': ['cuisine6', 'cuisine3'],
      'dishes': [
        {
          'id': '201',
          'imageUrl':
              "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/fdxukbthpbz9a8yqg7hv",
          'name': 'Chicken Tikka Masala',
          'price': 407,
          'type': 'Non-Veg',
          'cuisineId': 'cuisine6',
          'hotelId': 'hotel2'
        },
        {
          'id': "202",
          'imageUrl':
              "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/mv1aj5ljavknms8j0xys",
          'name': 'Kadhai Panner',
          'price': 356.12,
          'type': 'Veg',
          'cuisineId': 'cuisine6',
          'hotelId': 'hotel2'
        },
        {
          'id': "203",
          'imageUrl':
              "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/a84ecfc659853a4146e100a85efcd9db",
          'name': 'Butter Roti',
          'price': 43,
          'type': 'Veg',
          'cuisineId': 'cuisine6',
          'hotelId': 'hotel2'
        },
        {
          'id': "204",
          'imageUrl':
              "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/tpwumyfexdmlznkveqbk",
          'name': 'Chicken Biryani',
          'price': 325.56,
          'type': 'Non-Veg',
          'cuisineId': 'cuisine3',
          'hotelId': 'hotel2'
        },
      ]
    },
    {
      'id': 'hotel3',
      'name': 'Golden Dragon',
      'type': ['Veg', 'Non-Veg'],
      'imageUrl':
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/bsfamknqlyurys2u84xe",
      'cuisineIds': ['cuisine4'],
      'dishes': [
        {
          'id': "301",
          'imageUrl':
              "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/beeeobqo8fgelawxetpa",
          'name': 'Veg Hakka Noodles',
          'price': 180,
          'type': 'Veg',
          'cuisineId': 'cuisine4',
          'hotelId': 'hotel3'
        },
        {
          'id': "302",
          'imageUrl':
              "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/dvjre5vszligh1guxcaw",
          'name': 'Chicken Schezwan Fried Noodles',
          'price': 219,
          'type': 'Non-Veg',
          'cuisineId': 'cuisine4',
          'hotelId': 'hotel3'
        },
      ]
    },
    {
      'id': 'hotel4',
      'name': 'Pizza Hut',
      'type': ['Veg', 'Non-Veg'],
      'imageUrl':
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/de4630ada7bbe10ea3a952fe2925df49",
      'cuisineIds': ['cuisine2'],
      'dishes': [
        {
          'id': "401",
          'imageUrl':
              "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/b7d1f56df6414f8b6e49001af95e259a",
          'name': 'Veggie Supreme',
          'price': 275,
          'type': 'Veg',
          'cuisineId': 'cuisine2',
          'hotelId': 'hotel4'
        },
        {
          'id': "402",
          'imageUrl':
              "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/gdz44c9hirco09bdafoq",
          'name': 'Chicken Pepperoni',
          'price': 369,
          'type': 'Non-Veg',
          'cuisineId': 'cuisine2',
          'hotelId': 'hotel4'
        },
      ]
    },
    {
      'id': 'hotel5',
      'name': 'Biryani By Kilo',
      'type': ['Veg', 'Non-Veg'],
      'imageUrl':
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/bf9be1c6b9d796850f426281559cb2d2",
      'cuisineIds': ['cuisine3', 'cuisine6'],
      'dishes': [
        {
          'id': "501",
          'imageUrl':
              "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/du6khho1fxgofwqkhmgx",
          'name': 'Chicken Hyderabadi Dum Biryani 1KG',
          'price': 854,
          'type': 'Non-Veg',
          'cuisineId': 'cuisine3',
          'hotelId': 'hotel5'
        },
        {
          'id': "501",
          'imageUrl':
              "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/fjuahmkmqwqarxzt98jp",
          'name': 'Panner Dum Biryani 1/2 KG',
          'price': 854,
          'type': 'Veg',
          'cuisineId': 'cuisine3',
          'hotelId': 'hotel5'
        },
      ]
    },
    {
      'id': 'hotel6',
      'name': 'Mankar Dosa',
      'type': ['Veg'],
      'imageUrl':
          "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/az1misfx7qbgicvjrivo",
      'cuisineIds': ['cuisine5'],
      'dishes': [
        {
          'id': "601",
          'imageUrl':
              "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/ltsjod6x2zpaohwqhp6n",
          'name': 'Masala Dosa',
          'price': 90,
          'type': 'Veg',
          'cuisineId': 'cuisine5',
          'hotelId': 'hotel6'
        },
        {
          'id': "602",
          'imageUrl':
              "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/xr7czn60j020elheqp5j",
          'name': 'Onion Uttapam',
          'price': 100,
          'type': 'Veg',
          'cuisineId': 'cuisine5',
          'hotelId': 'hotel6'
        },
        {
          'id': "603",
          'imageUrl':
              "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/fedeeftvashnzcfzoukp",
          'name': 'Butter Sponge Dosa',
          'price': 96,
          'type': 'Veg',
          'cuisineId': 'cuisine5',
          'hotelId': 'hotel6'
        },
      ]
    },
  ];
  static List<Map<String, dynamic>> dish = [];
}
 */