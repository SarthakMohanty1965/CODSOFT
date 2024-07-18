import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeDetailsPage extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailsPage({required this.recipe, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: const Icon(Icons.chevron_left,color: Colors.white,size: 30,),),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        title: Text(recipe.title,style: const TextStyle(color: Colors.white),),
      ),
      backgroundColor: Colors.brown.shade500,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(120.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.6),
                        blurRadius: 22,
                        spreadRadius: 12,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(120.0),child: Image.network(recipe.image)),
                ),
              ),
              const SizedBox(height: 18,),
              Text(recipe.description,style:GoogleFonts.ubuntu(textStyle: const TextStyle(color: Colors.white), ), ),
              const SizedBox(height: 18,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('INGREDIENTS: \n  \t${recipe.ingredients}',style: GoogleFonts.ubuntu(textStyle: const TextStyle(color: Colors.white), ), ),
                  Text('INSTRUCTIONS: \n  \t${recipe.instructions}',style: GoogleFonts.ubuntu(textStyle: const TextStyle(color: Colors.white), ), ),
                ],
              ),
              const SizedBox(height: 18,),
              Text('Cooking Time: ${recipe.cookingTime}',style: GoogleFonts.ubuntu(textStyle: const TextStyle(color: Colors.white), ), ),
              Text('Servings: ${recipe.servings}',style: GoogleFonts.ubuntu(textStyle: const TextStyle(color: Colors.white), ), ),
              Text('Difficulty: ${recipe.difficulty}',style:GoogleFonts.ubuntu(textStyle: const TextStyle(color: Colors.white), ), ),
              Text('Category: ${recipe.category}',style: GoogleFonts.ubuntu(textStyle: const TextStyle(color: Colors.white), ), ),
            ],
          ),
        ),
      ),
    );
  }
}
class Recipe {
  int id;
  String title;
  String description;
  String ingredients;
  String instructions;
  String cookingTime;
  String servings;
  String difficulty;
  String category;
  String image;

  Recipe({
    required this.id,
    required this.title,
    required this.description,
    required this.ingredients,
    required this.instructions,
    required this.cookingTime,
    required this.servings,
    required this.difficulty,
    required this.category,
    required this.image,
  });
}