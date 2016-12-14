module Pets exposing (..)


type alias Pet =
    { id : Int
    , name : String
    , distance : Int
    , text : String
    , photoUrl : String
    }


nextPets : List Pet
nextPets =
    [ babyChicken, burt, bluebell, missPoes, cricket, mrFuzz, lady, grumpy, bobby ]


princess : Pet
princess =
    { id = 1
    , name = "Princess"
    , distance = 25
    , text = "Watch out, boys, because Princess is here and she’s got baby fever like you wouldn’t believe. Princess is all set up to be in a family way; she’s got her very own nest, it’s feathered, and she sits on it 23 and half hours a day. Golf balls, rocks, other chickens – if she can sit on it and it sort of fits under her, then it’s her baby. Princess is a natural leader when it comes to socializing in the flock, and you can always count on her to call the other girls over to a tasty treat. Are you also longing to hear the pitter patter of little talons in the coop? Do you also looooove tomatoes? Then swipe right on Princess, roosters and hentlemen. Serious inquiries only! Princess has got no time for head games, no siree."
    , photoUrl = "http://localhost:3000/profiles/princess.jpg"
    }


babyChicken : Pet
babyChicken =
    { id = 2
    , name = "Baby Chicken"
    , distance = 25
    , text = "Meet Baby Chicken. She’s got a whole lot of personality packed into a mere 500 feathered grams. When she lays an egg, she’s putting out a whopping 10% of her body weight. That’s hardcore! Because she’s so tiny and round as a meatball, Baby Chicken has got that whole ‘I’m so little and cute’ thing going on. But don’t let that fool you. You see that evil glint in her eye? You might mistake it for RBF – Resting Bok Face, but it’s really just the cruel indifference of nature packaged into a chirping fluffball. That’s right. Baby Chicken would peck the eyeballs out of your skull if she liked the way it felt. Don’t wait; set up your date with Baby today!"
    , photoUrl = "http://localhost:3000/profiles/babychicken.jpg"
    }


bluebell : Pet
bluebell =
    { id = 3
    , name = "Bluebell"
    , distance = 25
    , text = "Look at this face. Is this not the derpiest face you have ever seen? This is Bluebell, the chicken who acts like a dog and thinks she’s people. Bluebell’s you’re in the backyard relaxing in your lounge chair, you can count on Bluebell to be nearby, napping in the grass at your feet."
    , photoUrl = "http://localhost:3000/profiles/bluebell1.jpg"
    }


cricket : Pet
cricket =
    { id = 4
    , name = "Cricket"
    , distance = 25
    , text = "Cricket is a happy-go-lucky chicken if there ever was one. She’s like your quiet friend who doesn’t say too much while you’re hanging out, but it doesn’t matter because she’s got this sunny attitude that feels really good to be around. The eternal optimist, Cricket still hasn’t given up on the SEEDS?"
    , photoUrl = "http://localhost:3000/profiles/cricket.jpg"
    }


mrFuzz : Pet
mrFuzz =
    { id = 5
    , name = "MrFuzz"
    , photoUrl = "http://localhost:3000/profiles/cat1.jpg"
    , text = "MrFuzz loves belly rubs, and likes playing with pieces of string"
    , distance = 11
    }


burt : Pet
burt =
    { id = 6
    , name = "Burt"
    , photoUrl = "http://localhost:3000/profiles/dog1.jpg"
    , text = "Burt looks cute, but is in reality a though guy. Secretly wants to work for the FBI"
    , distance = 15
    }


missPoes : Pet
missPoes =
    { id = 7
    , name = "MissPoes"
    , photoUrl = "http://localhost:3000/profiles/cat2.jpg"
    , text = "MissPoes is a classy lady who appreciates gentle pets"
    , distance = 12
    }


lady : Pet
lady =
    { id = 8
    , name = "Lady"
    , photoUrl = "http://localhost:3000/profiles/dog2.jpg"
    , text = "Lady isn't always very lady-like. She loves rolling in the mud and barking at naughty squirrels"
    , distance = 33
    }


grumpy : Pet
grumpy =
    { id = 9
    , name = "Grumpy"
    , photoUrl = "http://localhost:3000/profiles/cat3.jpg"
    , text = "Grumpy basically hates everything, especially dogs. He does looove lasagne though"
    , distance = 5
    }


bobby : Pet
bobby =
    { id = 10
    , name = "Bobby"
    , photoUrl = "http://localhost:3000/profiles/dog3.jpg"
    , text = "Bobby loves to fetch balls and chase rabbits. Great with kids"
    , distance = 2
    }
