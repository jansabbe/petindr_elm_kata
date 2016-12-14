const express = require('express');
const _ = require('lodash');
const path = require('path');

const app = express();
const expressWs = require('express-ws')(app);
app.use('/profiles', express.static(path.join(__dirname, 'profiles')))

const pets = [
    {
        id: 1
        , name: "Princess"
        , distance: 25
        , text: "Watch out, boys, because Princess is here and she’s got baby fever like you wouldn’t believe. Princess is all set up to be in a family way; she’s got her very own nest, it’s feathered, and she sits on it 23 and half hours a day. Golf balls, rocks, other chickens – if she can sit on it and it sort of fits under her, then it’s her baby. Princess is a natural leader when it comes to socializing in the flock, and you can always count on her to call the other girls over to a tasty treat. Are you also longing to hear the pitter patter of little talons in the coop? Do you also looooove tomatoes? Then swipe right on Princess, roosters and hentlemen. Serious inquiries only! Princess has got no time for head games, no siree."
        , photoUrl: "profiles/princess.jpg"
        , answers: ["bok", "bok?", "booooook", "bokbok", "bokbokbok :)"]
    }, {
        id: 2
        , name: "Baby Chicken"
        , distance: 25
        , text: "Meet Baby Chicken. She’s got a whole lot of personality packed into a mere 500 feathered grams. When she lays an egg, she’s putting out a whopping 10% of her body weight. That’s hardcore! Because she’s so tiny and round as a meatball, Baby Chicken has got that whole ‘I’m so little and cute’ thing going on. But don’t let that fool you. You see that evil glint in her eye? You might mistake it for RBF – Resting Bok Face, but it’s really just the cruel indifference of nature packaged into a chirping fluffball. That’s right. Baby Chicken would peck the eyeballs out of your skull if she liked the way it felt. Don’t wait; set up your date with Baby today!"
        , photoUrl: "profiles/babychicken.jpg"
        , answers: ["bok", "bok?", "booooook", "bokbok", "bokbokbok :)"]
    }, {
        id: 3
        , name: "Bluebell"
        , distance: 25
        , text: "Look at this face. Is this not the derpiest face you have ever seen? This is Bluebell, the chicken who acts like a dog and thinks she’s people. Bluebell’s idea of a good time involves traipsing through the muddiest parts of the yard and then trying to sneak into the house through the back door. Whatever it is you’re holding in your hand, she won’t let you walk in a straight line until you let her find out for herself that it’s not delicious. Above all, Bluebell just wants to hang out and spend some quality time, because she thinks you are totally awesome. So while you’re in the backyard relaxing in your lounge chair, you can count on Bluebell to be nearby, napping in the grass at your feet."
        , photoUrl: "profiles/bluebell1.jpg"
        , answers: ["bok", "bok?", "booooook", "bokbok", "bokbokbok :)"]
    }, {
        id: 4
        , name: "Cricket"
        , distance: 25
        , text: "Cricket is a happy-go-lucky chicken if there ever was one. She’s like your quiet friend who doesn’t say too much while you’re hanging out, but it doesn’t matter because she’s got this sunny attitude that feels really good to be around. The eternal optimist, Cricket still hasn’t given up on the idea that she can fly, even though her wings are basically vestigial T-Rex arms covered with a layer of furry down. When she gets excited to see you, she goes for a running start and leaps into the air flapping, ever hopeful. Sometimes she gets a second of lift and you find yourself really rooting for her, but inevitably, she comes back to earth. Cricket doesn’t let it get her down, though. She’s actually quite proud when she can show off her flight skills, and she’s content to – OH BOY, IS THAT SEEDS?"
        , photoUrl: "profiles/cricket.jpg"
        , answers: ["bok", "bok?", "booooook", "bokbok", "bokbokbok :)"]
    }, {
        id: 5
        , name: "MrFuzz"
        , photoUrl: "profiles/cat1.jpg"
        , text: "MrFuzz loves belly rubs, and likes playing with pieces of string"
        , distance: 11
        , answers: ["maw", "miaauw", "prrrrrr"]
    }, {
        id: 6
        , name: "Burt"
        , photoUrl: "profiles/dog1.jpg"
        , text: "Burt looks cute, but is in reality a though guy. Secretly wants to work for the FBI"
        , distance: 15
        , answers: ["woof", "WOOF", "woofwoof"]
    },
    {
        id: 7
        , name: "MissPoes"
        , photoUrl: "profiles/cat2.jpg"
        , text: "MissPoes is a classy lady who appreciates gentle pets"
        , distance: 12
        , answers: ["maw", "miaauw", "prrrrrr"]
    },
    {
        id: 8
        , name: "Lady"
        , photoUrl: "profiles/dog2.jpg"
        , text: "Lady isn't always very lady-like. She loves rolling in the mud and barking at naughty squirrels"
        , distance: 33
        , answers: ["woof", "WOOF", "woofwoof"]
    },
    {
        id: 9
        , name: "Grumpy"
        , photoUrl: "profiles/cat3.jpg"
        , text: "Grumpy basically hates everything, especially dogs. He does looove lasagne though"
        , distance: 5
        , answers: ["maw", "miaauw", "kssssssh"]
    }, {
        id: 10
        , name: "Bobby"
        , photoUrl: "profiles/dog3.jpg"
        , text: "Bobby loves to fetch balls and chase rabbits. Great with kids."
        , distance: 2
        , answers: ["woof", "WOOF", "woofwoof"]
    }
]

app.post('/api/pets/:id', (req, res) => {
    res.set('Access-Control-Allow-Origin', '*');
    res.json(Math.random() > 0.6);
})

app.get('/api/pets', (req, res) => {
    res.set('Access-Control-Allow-Origin', '*');
    res.json(pets);
})

app.ws('/api/chat/:id', (ws, req) => {
    let answers = _.find(pets, {id: parseInt(req.params.id)}).answers
    setTimeout(()=> ws.send(_.sample(answers),(x)=>console.log(x)), Math.round(Math.random() * 10000))
    ws.on('message', (msg) => {
      setTimeout(()=> ws.send(_.sample(answers),(x)=>console.log(x)), Math.round(Math.random() * 5000))
    });
})

app.listen(3000, function() {
    console.log('API listening on port 3000!')
})