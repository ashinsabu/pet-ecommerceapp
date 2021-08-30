enum Category { CAT, DOG, HAMSTER }
enum howfind { FeralorStray, Adoption, Mating}
class Pet {

  String name;
  String location;
  String distance;
  String condition;
  Category category;
  String imageUrl;
  bool favorite;
  bool newest;
  //const optional
  Pet(this.name, this.location, this.distance,this.condition, this.category, this.imageUrl, this.favorite, this.newest);

}

List<Pet> getPetList(){
  return <Pet>[
    Pet("Abyssinian Cats", "Goregaon", "2.5", "FeralorStray",Category.CAT, "assets/images/cats/cat_1.jpg", true, true),
    Pet("Scottish Fold", "Andheri", "1.2", "FeralorStray", Category.CAT, "assets/images/cats/cat_2.jpg", false, false),
    Pet("Ragdoll", "Borivili", "1.2","Adoption",  Category.CAT, "assets/images/cats/cat_3.jpg", false, false),
    Pet("Burmés", "Santa Cruz", "1.2", "Adoption",Category.CAT, "assets/images/cats/cat_4.jpg", true, true),
    Pet("American Shorthair", "Dadar", "1.2", "FeralorStray", Category.CAT, "assets/images/cats/cat_5.jpg", true, false),
    Pet("British Shorthair", "Malad", "1.9","Adoption",  Category.CAT, "assets/images/cats/cat_6.jpg", false, false),
    Pet("Abyssinian Cats", "Goregaon", "2.5","Mating", Category.CAT, "assets/images/cats/cat_7.jpg", true, false),
    Pet("Scottish Fold", "Andheri", "1.2", "Adoption", Category.CAT, "assets/images/cats/cat_8.jpg", false, false),
    Pet("Ragdoll", "Borivili", "1.2", "FeralorStray",  Category.CAT, "assets/images/cats/cat_9.jpg", false, true),

    Pet("Roborowski", "Goregaon", "2.5","Mating", Category.HAMSTER, "assets/images/hamsters/hamster_1.jpg", true, true),
    Pet("Ruso", "Andheri", "2.5", "FeralorStray", Category.HAMSTER, "assets/images/hamsters/hamster_2.jpg", false, false),
    Pet("Golden", "Borivili", "2.5","Mating", Category.HAMSTER, "assets/images/hamsters/hamster_3.jpg", false, false),
    Pet("Chinese", "Santa Cruz", "2.5", "FeralorStray", Category.HAMSTER, "assets/images/hamsters/hamster_4.jpg", true, true),
    Pet("Dwarf Campbell", "Malad", "2.5", "FeralorStray", Category.HAMSTER, "assets/images/hamsters/hamster_5.jpg", true, false),
    Pet("Syrian", "Goregaon", "2.5","Mating", Category.HAMSTER, "assets/images/hamsters/hamster_6.jpg", false, false),
    Pet("Dwarf Winter", "Borivili", "2.5", "FeralorStray", Category.HAMSTER, "assets/images/hamsters/hamster_7.jpg", true, false),

    Pet("Shepherd Dog", "Santa Cruz", "2.5", "Adoption", Category.DOG, "assets/images/dogs/dog_4.jpg", true, true),
    Pet("Affenpinscher", "Goregaon", "2.5", "Adoption",Category.DOG, "assets/images/dogs/dog_1.jpg", true, true),
    Pet("Akita Shepherd", "Andheri", "2.5","Mating", Category.DOG, "assets/images/dogs/dog_2.jpg", false, false),
    Pet("American Foxhound", "Borivili", "2.5", "Adoption",Category.DOG, "assets/images/dogs/dog_3.jpg", false, false),
    Pet("Australian Terrier", "Malad", "2.5","Adoption", Category.DOG, "assets/images/dogs/dog_5.jpg", true, false),
    Pet("Bearded Collie", "Goregaon", "2.5","Adoption", Category.DOG, "assets/images/dogs/dog_6.jpg", false, false),
    Pet("Belgian Sheepdog", "Borivili", "2.5","Adoption", Category.DOG, "assets/images/dogs/dog_7.jpg", true, false),
    Pet("Bloodhound", "Goregaon", "2.5", "Mating",Category.DOG, "assets/images/dogs/dog_8.jpg", true, true),
    Pet("Boston Terrier", "Goregaon", "2.5", "Adoption",Category.DOG, "assets/images/dogs/dog_9.jpg", true, true),
    Pet("Chinese Shar-Pei", "Andheri", "2.5","Mating", Category.DOG, "assets/images/dogs/dog_10.jpg", false, false),
    Pet("Border Collie", "Borivili", "2.5", "Adoption",Category.DOG, "assets/images/dogs/dog_11.jpg", false, false),
  ];
}