# What you will be making

You'll be making a Tindr but with pets. You can like/dislike pets. If they like you back, you have a match and you can start chatting.

![Main screen](/screenshots/screen1.png?raw=true)
![Show profile](/screenshots/screen2.png?raw=true)
![It's a match](/screenshots/screen3.png?raw=true)
![Start chatting](/screenshots/screen4.png?raw=true)

# What you need installed

* [Node.js](http://nodejs.org)
* [Elm](http://elm-lang.org)
* A text editor. I use [Visual Studio Code](http://code.visualstudio.com) with [Elm support](https://marketplace.visualstudio.com/items?itemName=sbrink.elm) and [HTML-to-Elm](https://marketplace.visualstudio.com/items?itemName=Rubymaniac.vscode-html-to-elm)

In your command line prompt go to the _backend_ folder, and execute `npm install` and then `npm start`.
Open a new command line prompt, go to the _frontend_ folder, and execute `elm-reactor`.

You should be able to see all the html mockups on http://localhost:8000/static_mockups/main.html

# Exercises

## 1. Toggle info pane

We want to be able to click on the info button to show/hide the profile text. See [main.html](http://localhost:8000/static_mockups/main.html) and [showtext.html](http://localhost:8000/static_mockups/showtext.html)

You can start editing `src/Home.elm`. You should see the result on http://localhost:8000/index.html

Hints:
- Convert the `showtext.html` into Elm code using your plugin or using [HTML-to-Elm online](https://mbylstra.github.io/html-to-elm/). Only convert the contents of the `<body>` tag.
- As for the initial pet data, you can copy paste something from Pets.elm

## 2. Like/Dislike

The like and the dislike button should go to the next pet. You'll need to keep a list of nextPets in your model (see Pets.elm for data).
Everytime you click _like_ or _dislike_, the first in the list of nextPets becomes the _currentPet_. The rest of the list becomes the new _nextPets_ list.

Hints:
- Checkout [Pattern matching on lists](https://gist.github.com/yang-wei/4f563fbf81ff843e8b1e)

## 3. Liking should send a HTTP request.

- When you press _Like_ you should do an HTTP Post to `http://localhost:3000/api/pets/<pet-id>` with an empty body. You will get a boolean back from the server (true if it is a match, false if not.)
- When the server replies with true, you should show an overlay to the user. See [match.html](http://localhost:8000/static_mockups/match.html)
- On the match screen, you should be able to click the button to go back.

Hints:
- Checkout the [Http](http://package.elm-lang.org/packages/elm-lang/http/latest) module and the [Json Decode](http://package.elm-lang.org/packages/elm-lang/core/5.0.0/Json-Decode) module
- To decode the response into an Elm data structure, you can use Json.Decode.bool 

## 4. Create a separate elm application

- You should create a new Elm file (Chat.elm) and a new chat.html in the /frontend folder. Don't try to integrate it yet with Home.elm.
- It should end up looking like [chat.html](http://localhost:8000/static_mockups/chat.html)
- The user should be able to type some text, and click on the send button. 
    - The text he typed should be added to a chatMessages list in the model.
    - All chat messages in the list should be visualised as `chat-item-self` divs.
    - The input box should be cleared.

Hints:
- Each time the user types, you can get a message via [onInput](http://package.elm-lang.org/packages/elm-lang/html/2.0.0/Html-Events#onInput)
- You can bind the value in the model to an HTML input via [value](http://package.elm-lang.org/packages/elm-lang/html/2.0.0/Html-Attributes#value)
- Checkout the [List api](http://package.elm-lang.org/packages/elm-lang/core/5.0.0/List) for usefull functions dealing with a list of chat messages

## 5. Connect via websockets to a backend server.

- In your list of chat messages you will need to make a distinction between a chat message that the user sent, and a chat message that the pet sent.
- Chat messages from the pet should be visualised using `chat-item-other` divs.
- The websocket server lives on `ws://localhost:3000/api/chat/<pet-id>`. A few seconds after connecting, you will get a message from the pet. He/She will also always reply if you send a message.
- Each time the user sends a message, send it via websocket to `ws://localhost:3000/api/chat/<pet-id>`
- Each time the server sends you a message, add it as a chat message from the pet to your model

Hints:
- Use the [WebSocket](http://package.elm-lang.org/packages/elm-lang/websocket/latest) module to listen for messages and to send messages.

## 6. Routing between Home and Chat
TODO
