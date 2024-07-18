import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task05_recipe_app/recipedetailpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.dark(),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Recipe> _recipes = [
    Recipe(
      id: 1,
      title: 'Chicken Fajitas',
      description: 'A classic Mexican dish',
      ingredients: 'chicken breast, bell peppers, onions, tortillas',
      instructions: 'Cook chicken and vegetables, serve with tortillas',
      cookingTime: '30 minutes',
      servings: '4-6 people',
      difficulty: 'Easy',
      category: 'Dinner',
      image:
          'https://lh3.googleusercontent.com/XlbjCs4bBvEfNpLyB7U63WYbIXMWAksD6cC-6fna91QYfdYcqG-ZAhJWqaNo4fJL4hsKjTLyyUMZDA6JXcdzqA=w220-h220-c-rw-v1-e365',
    ),
    Recipe(
      id: 2,
      title: 'Vegetable Soup',
      description: 'A hearty and healthy soup',
      ingredients: 'vegetables, broth, tomatoes',
      instructions: 'Saute vegetables, add broth and simmer',
      cookingTime: '45 minutes',
      servings: '6-8 people',
      difficulty: 'Easy',
      category: 'Lunch',
      image:
          'https://lh4.ggpht.com/ChlMAu8v6iAOpCCWo9sUL6rQEqSWB3ZlQYp29foGXfjutCUUY2omY53eO-KuZsQQRXg_PXpawfofUygwRXaM=w220-h220-c-rw-v1-e365',
    ),
    Recipe(
      id: 3,
      title: 'Chocolate Cake',
      description: 'A rich and decadent dessert',
      ingredients: 'flour, sugar, eggs, chocolate',
      instructions: 'Mix ingredients, bake and frost',
      cookingTime: '1 hour',
      servings: '8-10 people',
      difficulty: 'Medium',
      category: 'Dessert',
      image:
          'https://lh3.googleusercontent.com/6TFjvju2IQZ-38y7C6jicNvZMqt1QXJW6JgMRJ6x0ZYs9XXZmFaKpS_fBP994Uhe38jmxSyWG4f0_YHF4Z3X=w220-h220-c-rw-v1-e365',
    ),
    Recipe(
      id: 4,
      title: 'Grilled Cheese Sandwich',
      description: 'A classic comfort food',
      ingredients: 'bread, cheese, butter',
      instructions: 'Butter bread, place cheese in between, grill',
      cookingTime: '5 minutes',
      servings: '1-2 people',
      difficulty: 'Easy',
      category: 'Lunch',
      image:"https://lh3.googleusercontent.com/guzVTr6DqdCGryAspiLciEjzBX-4IdydX5tCU7n8YBekhMhfemRQ3lm-7SzzV6Zrkqex-vsA81DSHHRJONt0Cw=w220-h220-c-rw-v1-e365"),
    Recipe(
      id: 5,
      title: 'Spaghetti Bolognese',
      description: 'A classic Italian dish',
      ingredients: 'spaghetti, ground beef, tomato sauce',
      instructions: 'Cook spaghetti, make bolognese sauce, combine',
      cookingTime: '45 minutes',
      servings: '4-6 people',
      difficulty: 'Medium',
      category: 'Dinner',
      image:
      'https://lh3.googleusercontent.com/13ICwzW60eY4sH9Lt0XrPy12bVMZS4EIeti2oJ7cZ6N3o7WXoHDAhIhyHvDSq3Gjro7ALrEn42C3kGa6CLLyog=w220-h220-c-rw-v1-e365',
    ),
    Recipe(
      id: 6,
      title: 'Fried Chicken Wings',
      description: 'Crispy and spicy wings',
      ingredients: 'chicken wings, flour, eggs, hot sauce',
      instructions: 'Dredge wings in flour, fry, toss in hot sauce',
      cookingTime: '30 minutes',
      servings: '4-6 people',
      difficulty: 'Medium',
      category: 'Snack',
      image:
      'https://lh3.googleusercontent.com/JBNU_T6Lb6ZbhSFMHd1t313ACWIwlZQDtnw2kIV9FmsruviCn2Z0Php6Rszx-c6-LgwiGx54JS-xgZgVu_VqbhI=w220-h220-c-rw-v1-e365',
    ),
    Recipe(
      id: 7,
      title: 'Greek Salad',
      description: 'A refreshing and healthy salad',
      ingredients: 'lettuce, tomatoes, cucumbers, feta cheese, olives',
      instructions: 'Combine ingredients, drizzle with dressing',
      cookingTime: '15 minutes',
      servings: '4-6 people',
      difficulty: 'Easy',
      category: 'Lunch',
      image:
      'https://lh3.googleusercontent.com/7OVghwen1JYng5dXhNW6QnLjKYYLKgp3gKuZkEILLpryaah8XCHlvtaY8d_VVheA1m9bnYGccm0NxnkqOIEYH-I=w220-h220-c-rw-v1-e365',
    ),
    Recipe(
      id: 8,
      title: 'Chicken Masala',
      description: 'A flavorful and spicy Indian dish',
      ingredients: 'Chiken Leg piece, potatoes, tomatoes, cheese,spices,onion,salt',
      instructions: 'Cook chicken pieces with potatoes, fry onions and tomatoes,cut those cooked potatoes,add salt per taste, serve with toppings',
      cookingTime: '30 minutes',
      servings: '4-6 people',
      difficulty: 'Medium',
      category: 'lunch cum Diner',
      image:
      'https://lh3.googleusercontent.com/N86q-O3s2cBLu8kv3WNF0Wo7sk5z-ocvgFdRNMmjwMHb7GBXRHLe3RL77nohs-nBPREFo7kG0GnuaGtTfCCD5u0=w220-h220-c-rw-v1-e365',
    ),
    Recipe(
      id: 9,
      title: 'Chicken Quesadillas',
      description: 'A crispy and cheesy Mexican dish',
      ingredients: 'chicken breast, tortillas, cheese, onions, peppers',
      instructions: 'Shred chicken, assemble quesadillas, cook and serve',
      cookingTime: '25 minutes',
      servings: '4-6 people',
      difficulty: 'Medium',
      category: 'Dinner',
      image:
      'https://lh3.googleusercontent.com/UT175KK8xX7EuoIsUirlVtWBw7gEh1olf92bmUHUFBnO6xYh_1ix9Kev4EChszojrrcfpSSIeFLoGBdBukLpCko=w220-h220-c-rw-v1-e365',
    ),
    Recipe(
      id: 10,
      title: 'Baked Salmon',
      description: 'A healthy and flavorful fish dish',
      ingredients: 'salmon fillets, lemon, garlic, herbs',
      instructions: 'Season salmon, bake in oven, serve with sides',
      cookingTime: '20 minutes',
      servings: '4-6 people',
      difficulty: 'Easy',
      category: 'Dinner',
      image:
      'https://lh3.googleusercontent.com/BP1c1nJFTVCw57gd-3Ie8_BE0TwsikBL9JZk5s_r5nBNSN-7YHt9_tnWea1uGAugID7FsRXCMFbz8J2SA7masy4=w220-h220-c-rw-v1-e365',
    ),
    Recipe(
      id: 11,
      title: 'Vegetable Stir Fry',
      description: 'A quick and easy Asian-inspired dish',
      ingredients: 'vegetables, soy sauce, garlic, ginger',
      instructions: 'Stir-fry vegetables, serve with rice or noodles',
      cookingTime: '20 minutes',
      servings: '4-6 people',
      difficulty: 'Easy',
      category: 'Lunch',
      image:
      'https://lh3.googleusercontent.com/EJ5DAxgH6C2gOLvvDUab_lUfLqvdwUwcjddjRy-Ha2xCupa9CuMZxo39yuZPSpJDWJmcYwNv-dJlpV34E5Z7=w220-h220-c-rw-v1-e365',
    ),
    Recipe(
      id: 12,
      title: 'Meatball Subs',
      description: 'A hearty and flavorful Italian-American dish',
      ingredients: 'meatballs, sub rolls, marinara sauce, melted mozzarella',
      instructions: 'Cook meatballs, assemble subs, serve with sides',
      cookingTime: '30 minutes',
      servings: '4-6 people',
      difficulty: 'Medium',
      category: 'Dinner',
      image:
      'https://lh3.googleusercontent.com/CHap_nYfSpkwQzwgFbAxkkopZsZHiFWBKnfWwMV_xFS35UC_FRdTOJLuSU0CCybW-3b1_qNLaG2uJnVJmXAj=w220-h220-c-rw-v1-e365',
    ),
    Recipe(
      id: 13,
      title: 'Chicken Caesar Salad',
      description: 'A classic and refreshing salad',
      ingredients: 'chicken breast, romaine lettuce, croutons, parmesan cheese',
      instructions: 'Grill chicken, assemble salad, drizzle with Caesar dressing',
      cookingTime: '25 minutes',
      servings: '4-6 people',
      difficulty: 'Easy',
      category: 'Lunch',
      image:
      'https://lh3.googleusercontent.com/ydm3zvBYWSGZoPv5mhj--iLDZ0f2FxVzAt0G8VcsBbtI-1qXe0FHhttJ4PEl-9IscgQMywgHjtwIBmNWuar0ng=w220-h220-c-rw-v1-e365',
    ),
    Recipe(
      id: 14,
      title: 'Breakfast Burrito',
      description: 'A filling and flavorful breakfast dish',
      ingredients: 'scrambled eggs, sausage, cheese, tortilla',
      instructions: 'Scramble eggs, cook sausage, assemble burrito',
      cookingTime: '20 minutes',
      servings: '1-2 people',
      difficulty: 'Easy',
      category: 'Breakfast',
      image:
      'https://lh3.googleusercontent.com/8zTCqTehoSfkj2Bb-Pd44zAwf3du-sX3mLXrphbdC8kzWjBt0uqjXjcYpgHKesuindxZx4_qhszFY7cn9UWdAbQ=w220-h220-c-rw-v1-e365',
    ),
    Recipe(
      id: 15,
      title: 'Chicken Tikka Masala',
      description: 'A popular Indian-inspired dish',
      ingredients: 'chicken breast, yogurt, lemon juice, garam masala, cumin, coriander, cayenne pepper, tomato sauce, heavy cream',
      instructions: 'Marinate chicken, grill and simmer in tomato sauce, serve with basmati rice',
      cookingTime: '45 minutes',
      servings: '4-6 people',
      difficulty: 'Medium',
      category: 'Dinner',
      image:
      'https://lh3.googleusercontent.com/fJPZAQfPtRl87od3equbvEuj9swtG49nMFoakotQC6uQ6OnN0y3azVhaF8luyFQFGmPB1C0O_ySc73BMBPT0=w220-h220-c-rw-v1-e365',
    ),
    Recipe(
      id: 16,
      title: 'Palak Paneer',
      description: 'A creamy spinach curry with Indian cheese',
      ingredients: 'paneer, spinach, garlic, ginger, garam masala, cumin, coriander, heavy cream',
      instructions: 'Blend spinach with spices, sauté with paneer and cream, serve with naan or rice',
      cookingTime: '30 minutes',
      servings: '4-6 people',
      difficulty: 'Easy',
      category: 'Lunch',
      image:
      'https://lh3.googleusercontent.com/Obr3789R5jqd8PzvmBVYtUWD8zE2XkSyIeh5LQtKGcSekMltmhVLfThwV6gzStlv5nfSEYze4rzeLm06PCB1SA=w220-h220-c-rw-v1-e365',
    ),
    Recipe(
      id: 17,
      title: 'Samosas',
      description: 'Crispy fried or baked pastries filled with spiced potatoes',
      ingredients: 'potatoes, peas, onions, garam masala, cumin, coriander, all-purpose flour, oil',
      instructions: 'Mix filling, assemble samosas, fry or bake until crispy, serve with chutney',
      cookingTime: '30 minutes',
      servings: '4-6 people',
      difficulty: 'Medium',
      category: 'Snack',
      image:
      'https://lh3.googleusercontent.com/kuiusr7bXYS3pl1CyZTLlUOZTZXedq4iWzzhChtTZ6FQD_aqkz9uRCAJOP9ib6G3WlipViQ11cBOafbC519UGDI=w220-h220-c-rw-v1-e365',
    ),
    Recipe(
      id: 18,
      title: 'Butter Chicken',
      description: 'A rich and creamy tomato-based curry with marinated chicken',
      ingredients: 'chicken breast, yogurt, lemon juice, garam masala, cumin, coriander, cayenne pepper, tomato sauce, butter',
      instructions: 'Marinate chicken, grill and simmer in tomato sauce, serve with basmati rice',
      cookingTime: '45 minutes',
      servings: '4-6 people',
      difficulty: 'Medium',
      category: 'Dinner',
      image:
      'https://lh3.googleusercontent.com/dwQZUPziNUZIe0Y0D4HL50Iqs4HGvwjPgfEUgZfR9C0AqE10rL9lIOPHiovLMBg23qDZeu1Ato1wyWkreVWbzg=w220-h220-c-rw-v1-e365',
    ),

    Recipe(
      id: 19,
      title: 'Gulab Jamun',
      description: 'Deep-fried dumplings soaked in sweet syrup',
      ingredients: 'milk powder, all-purpose flour, ghee, sugar, water, rose water, cardamom',
      instructions: 'Mix dough, fry dumplings, soak in syrup, serve warm',
      cookingTime: '30 minutes',
      servings: '4-6 people',
      difficulty: 'Easy',
      category: 'Dessert',
      image:
      'https://lh3.googleusercontent.com/-ovRC0XhDSzN9RwmlM7pkZjq-v3opq9YaZyCfsSRWR9Fl5Yr6GndINZUy1WsyRnlEN0U-1qzYk24CK1gHNB_=w220-h220-c-rw-v1-e365',
    ),
    Recipe(
        id: 20,
        title: 'Chicken Biryani',
        description: 'A flavorful and aromatic Indian rice dish',
        ingredients: 'basmati rice, chicken breast, onions, garlic, ginger, cumin, coriander, turmeric, red chili powder',
        instructions: 'Marinate chicken, cook rice and chicken together, serve with raita',
        cookingTime: '45 minutes',
        servings: '4-6 people',
        difficulty: 'Medium',
        category: 'Dinner',
        image: 'https://lh3.googleusercontent.com/9DWGxZM5UHY7m3Bi8BLVutCePAPojwNMfKqwpv5BbdSPXuO0Du1YwmQyTeJsAxmJobRxJMTeSUITOpewS_8cDkg=w220-h220-c-rw-v1-e365'
    ),

    Recipe(
        id: 21,
        title: 'Fish Tacos',
        description: 'A fresh and flavorful Mexican dish',
        ingredients: 'fish fillets, lime juice, cumin, coriander, chili powder, tortillas, lettuce, tomatoes, avocado',
        instructions: 'Marinate fish, grill and serve in tacos with toppings',
        cookingTime: '30 minutes',
        servings: '4-6 people',
        difficulty: 'Easy',
        category: 'Lunch',
        image: 'https://lh3.googleusercontent.com/RCiXKEvNJND7t3Pcr0qHeBFtCt5f4GP8l4WWRivMPsK_ZL03hri1JzOQ83odWwMaYCU1W3EoDh9lNtOQd3a3=w220-h220-c-rw-v1-e365'
    ),

    Recipe(
        id: 22,
        title: 'Beef Stroganoff',
        description: 'A classic Russian dish with sautéed beef and mushrooms',
        ingredients: 'beef strips, mushrooms, onions, garlic, all-purpose flour, beef broth, sour cream, Dijon mustard',
        instructions: 'Sauté beef and mushrooms, serve with egg noodles and sour cream',
        cookingTime: '40 minutes',
        servings: '4-6 people',
        difficulty: 'Medium',
        category: 'Dinner',
        image: 'https://lh3.googleusercontent.com/QsxbCWAuD5lPf93Rs-VGjEfKZowwxZYnVAXyB8fiwZcEmCuydAW2OWdSsNVq7C-TYqrruhhtjQA-B7KwBudH=w220-h220-c-rw-v1-e365'
    ),

    Recipe(
        id: 23,
        title: 'Roasted Vegetables',
        description: 'A healthy and flavorful side dish',
        ingredients: 'assorted vegetables (carrots, broccoli, cauliflower, Brussels sprouts), olive oil, salt, pepper',
        instructions: 'Toss vegetables with oil and seasonings, roast in oven until tender',
        cookingTime: '30 minutes',
        servings: '4-6 people',
        difficulty: 'Easy',
        category: 'Side Dish',
        image: 'https://lh3.googleusercontent.com/N4o8o_tioUq1KMA5f6P8mtLa_3UlfeLShMj-iruTuC43VYESPHQGAiz0Un3wIsvxuFQFOv380f-QbNOHJ0ZtFg=w220-h220-c-rw-v1-e365'
    ),

    Recipe(
        id: 24,
        title: 'Chicken Fajita Wrap',
        description: 'A flavorful and easy Mexican-inspired wrap',
        ingredients: 'chicken breast, bell peppers, onions, tortilla, sour cream, salsa, avocado',
        instructions: 'Sauté chicken and vegetables, serve in wrap with toppings',
        cookingTime: '25 minutes',
        servings: '1-2 people',
        difficulty: 'Easy',
        category: 'Lunch',
        image: 'https://lh3.googleusercontent.com/0qJzto2VUF9M2dPnZnWtDxQdxijdQROzmRd7F49xd0NcAChrtiy__KcyyjqqKnlhTIRRe4zneyagb3_wKbnT5-Q=w220-h220-c-rw-v1-e365'
    ),

    Recipe(
        id: 25,
        title: 'Egg Fried Rice',
        description: 'A simple and satisfying Chinese-inspired dish',
        ingredients: 'cooked rice, eggs, vegetables (carrots, peas, onions), soy sauce, olive oil',
        instructions: 'Scramble eggs, add vegetables and cooked rice, season with soy sauce',
        cookingTime: '20 minutes',
        servings: '4-6 people',
        difficulty: 'Easy',
        category: 'Lunch',
        image: 'https://lh3.googleusercontent.com/NXsexMDhb6OScFw_0EZA1r4HFKnQ33hdtYonW1B1fSn3ik0O23zrL2Dpjs2P-qnV4A8rACxquxNUtTxOHR21hYs=w220-h220-c-rw-v1-e365'
    ),
  ];
  String _searchQuery = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.menu_rounded)),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 4.0),
            child: SearchBar(
              leading: const Icon(Icons.search),
              surfaceTintColor: MaterialStateProperty.all(Colors.white),
              backgroundColor: MaterialStateProperty.all(Colors.black),
              hintText: 'Search Recipes Here',
              onChanged: (value) {
                  setState(() {
                    _searchQuery = value.toLowerCase();
                  });
                },
            ),
          ))
        ],
      ),
      body: ListView.builder(
        itemCount: _searchQuery.isEmpty ? _recipes.length : _recipes.where((recipe) => recipe.title.toLowerCase().contains(_searchQuery)).length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 2.0),
            child: Card(
              surfaceTintColor: Colors.black,
              color: Colors.blue.shade300,
              elevation: 12.0,
              child: ListTile(
                leading: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.black,
                      blurRadius: 8,
                      offset: Offset(2,4)
                    )]
                  ),
                  height: 150,
                  width: 50, // adjust the width to your liking
                  child: Image.network(_searchQuery.isEmpty ? _recipes[index].image : _recipes.where((recipe) => recipe.title.toLowerCase().contains(_searchQuery)).elementAt(index).image),
                ),
                title: Text(_searchQuery.isEmpty ? _recipes[index].title : _recipes.where((recipe) => recipe.title.toLowerCase().contains(_searchQuery)).elementAt(index).title,style: GoogleFonts.ubuntu(textStyle: const TextStyle(fontSize: 16,)),),
                subtitle: Text(_searchQuery.isEmpty ? _recipes[index].description : _recipes.where((recipe) => recipe.title.toLowerCase().contains(_searchQuery)).elementAt(index).description),
                onTap: () {
                  // Navigate to recipe details page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          RecipeDetailsPage(recipe: _searchQuery.isEmpty ? _recipes[index] : _recipes.where((recipe) => recipe.title.toLowerCase().contains(_searchQuery)).elementAt(index)),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
