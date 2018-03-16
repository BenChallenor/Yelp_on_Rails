# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Examples:

restaurants = Restaurant.create([{ name: "Dan's kitchen", description: 'Yum yum in my tum tum' }, { name: 'The Shed of Marcus', description: 'Michelin star toilet tablets' },
                                 { name: 'Gourmet Kitchen by S Hath-hath', description: 'Peng food in ya face' }, { name: "Ben's Den", description: 'Grub, worms and all things wiggly' }])
restaurants[0].reviews.create(rating: '3', comment: 'Sick food, mega sick, yaaaaa BOI')
restaurants[1].reviews.create(rating: '5', comment: 'Really home-garden cooking, I love sheds')
restaurants[2].reviews.create(rating: '2', comment: "My face was absolutely peng'd, did not enjoy")
restaurants[3].reviews.create(rating: '5', comment: 'This was the wormiest, wiggliest, wobbliest experience I have ever experienced in my experiences')
