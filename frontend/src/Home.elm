module Home exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Pets exposing (..)

-- Define your messages
-- Setup your model


type alias Model =
    { showProfileText : Bool
    , currentPet :
        { id : Int
        , name : String
        , distance : Int
        , text : String
        , photoUrl : String
        }
    , nextPets: List
    }

-- initialModel =
initialModel =
    {
        showProfileText = False,
        currentPet =
            { id = 1
            , name = "Princess"
            , distance = 25
            , text = "Watch out, boys, because Princess is here and she’s got baby fever like you wouldn’t believe. Princess is all set up to be in a family way; she’s got her very own nest, it’s feathered, and she sits on it 23 and half hours a day. Golf balls, rocks, other chickens – if she can sit on it and it sort of fits under her, then it’s her baby. Princess is a natural leader when it comes to socializing in the flock, and you can always count on her to call the other girls over to a tasty treat. Are you also longing to hear the pitter patter of little talons in the coop? Do you also looooove tomatoes? Then swipe right on Princess, roosters and hentlemen. Serious inquiries only! Princess has got no time for head games, no siree."
            , photoUrl = "http://localhost:3000/profiles/princess.jpg"
            }
      , nextPets = nextPets
    }

-- Define an update function
update msg model =
    case msg of
        ToggleMoreInfo ->
            { model | showProfileText = not model.showProfileText }

        DislikePet ->
            { model | currentPet = nextPet model.nextPets }


nextPet : List Pet -> Pet
nextPet nextPets =
    case nextPets of
        [] -> princess
        [firstPet] -> firstPet
        firstPet::b::_ -> firstPet

type Message = ToggleMoreInfo | DislikePet

petInfo toggle currentPet =
    if toggle then
        div [class "profile-text"]
          [text currentPet.text]
    else
        div []
            []

pet currentPet =
    img [ src currentPet.photoUrl ]
        []

-- Define a view function
view model =
    div []
        [ header []
            [ span [ class "header-title" ]
                [ text "Petindr" ]
            , button [ class "icon-right chat-icon" ]
                []
            ]
        , div [ class "container main-container" ]
            [ div [ class "profiles" ]
                [ div [ class "profile" ]
                    [ div []
                        [ pet model.currentPet
                        , petInfo model.showProfileText model.currentPet
                        ]
                    , div [ class "identification" ]
                        [ span [ class "identification-name" ]
                            [ text "Princess" ]
                        , span [ class "identification-distance" ]
                            [ text "25km" ]
                        ]
                    ]
                ]
            , div [ class "button-group" ]
                [ button [ class "button-round button-primary button-big icon-x", onClick DislikePet ]
                    [ img [ src "/styling/images/x-icon.png" ]
                        []
                    ]
                , button [ class "button-round button-primary button-small button-front", onClick ToggleMoreInfo ]
                    [ img [ src "/styling/images/i-icon.png" ]
                        []
                    ]
                , button [ class "button-round button-primary button-big" ]
                    [ img [ src "/styling/images/like-icon.png" ]
                        []
                    ]
                ]
            ]
        ]

-- main


main =
    beginnerProgram
        { model = initialModel
        , view = view
        , update = update
        }
