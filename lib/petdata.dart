enum Category { CAT, DOG, HAMSTER }

class Pet {

  String name;
  String location;
  String distance;
  Category category;
  String imageUrl;
  bool favorite;
  bool newest;
  //const optional
  Pet(this.name, this.location, this.distance, this.category, this.imageUrl, this.favorite, this.newest);

}

List<Pet> getPetList(){
  return <Pet>[
    Pet("Abyssinian Cats", "California", "2.5", Category.CAT, "assets/images/cats/cat_1.jpg", true, true),
    Pet("Scottish Fold", "New Jersey", "1.2", Category.CAT, "assets/images/cats/cat_2.jpg", false, false),
    Pet("Ragdoll", "Miami", "1.2",  Category.CAT, "assets/images/cats/cat_3.jpg", false, false),
    Pet("Burmés", "Chicago", "1.2", Category.CAT, "assets/images/cats/cat_4.jpg", true, true),
    Pet("American Shorthair", "Washintong", "1.2", Category.CAT, "assets/images/cats/cat_5.jpg", true, false),
    Pet("British Shorthair", "New York", "1.9",  Category.CAT, "assets/images/cats/cat_6.jpg", false, false),
    Pet("Abyssinian Cats", "California", "2.5", Category.CAT, "assets/images/cats/cat_7.jpg", true, false),
    Pet("Scottish Fold", "New Jersey", "1.2",  Category.CAT, "assets/images/cats/cat_8.jpg", false, false),
    Pet("Ragdoll", "Miami", "1.2",  Category.CAT, "assets/images/cats/cat_9.jpg", false, true),

    Pet("Roborowski", "California", "2.5", Category.HAMSTER, "assets/images/hamsters/hamster_1.jpg", true, true),
    Pet("Ruso", "New Jersey", "2.5", Category.HAMSTER, "assets/images/hamsters/hamster_2.jpg", false, false),
    Pet("Golden", "Miami", "2.5", Category.HAMSTER, "assets/images/hamsters/hamster_3.jpg", false, false),
    Pet("Chinese", "Chicago", "2.5", Category.HAMSTER, "assets/images/hamsters/hamster_4.jpg", true, true),
    Pet("Dwarf Campbell", "New York", "2.5", Category.HAMSTER, "assets/images/hamsters/hamster_5.jpg", true, false),
    Pet("Syrian", "California", "2.5", Category.HAMSTER, "assets/images/hamsters/hamster_6.jpg", false, false),
    Pet("Dwarf Winter", "Miami", "2.5", Category.HAMSTER, "assets/images/hamsters/hamster_7.jpg", true, false),

    Pet("Shepherd Dog", "Chicago", "2.5",  Category.DOG, "assets/images/dogs/dog_4.jpg", true, true),
    Pet("Affenpinscher", "California", "2.5", Category.DOG, "assets/images/dogs/dog_1.jpg", true, true),
    Pet("Akita Shepherd", "New Jersey", "2.5", Category.DOG, "assets/images/dogs/dog_2.jpg", false, false),
    Pet("American Foxhound", "Miami", "2.5", Category.DOG, "assets/images/dogs/dog_3.jpg", false, false),
    Pet("Australian Terrier", "New York", "2.5", Category.DOG, "assets/images/dogs/dog_5.jpg", true, false),
    Pet("Bearded Collie", "California", "2.5", Category.DOG, "assets/images/dogs/dog_6.jpg", false, false),
    Pet("Belgian Sheepdog", "Miami", "2.5", Category.DOG, "assets/images/dogs/dog_7.jpg", true, false),
    Pet("Bloodhound", "California", "2.5", Category.DOG, "assets/images/dogs/dog_8.jpg", true, true),
    Pet("Boston Terrier", "California", "2.5", Category.DOG, "assets/images/dogs/dog_9.jpg", true, true),
    Pet("Chinese Shar-Pei", "New Jersey", "2.5", Category.DOG, "assets/images/dogs/dog_10.jpg", false, false),
    Pet("Border Collie", "Miami", "2.5", Category.DOG, "assets/images/dogs/dog_11.jpg", false, false),
    Pet("Chow Chow", "Chicago", "2.5", Category.DOG, "assets/images/dogs/dog_12.jpg", true, true),
  ];
}