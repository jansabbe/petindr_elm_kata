module PetinderView exposing (petinderview)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

-- toggleText toggle currentPet =
--     if toggle then
--         div [class "profile-text"]
--           [text currentPet.text]
--     else
--         div []
--             []

petinderview : a -> Html msg
petinderview model =
    div []
        [ petHeader
        , mainContainer model
        ]

petHeader : Html msg
petHeader =
    header []
        [ span [ class "header-title" ]
            [ text "Petindr" ]
        , button [ class "icon-right chat-icon" ]
            []
        ]

mainContainer : Html msg
mainContainer model =
    div [ class "container main-container" ]
        [ profiles
        , buttonGroup
        ]

profiles : Html msg
profiles =
    div [ class "profiles" ]
        [ profile ]

profile : Html msg
profile =
    div [ class "profile" ]
        [ div []
            [ profileImage
            , profileText
            ]
        , identification
        ]

profileImage : Html msg
profileImage =
    img [ src "img/profiles/princess.jpg" ][]

profileText Bool : Html msg
profileText toggle =
    if toggle then
        div [ class "profile-text" ]
            [ text "Watch out, boys, because Princess is here and she’s got baby fever like you wouldn’t believe. Princess is all set up to be                            in a family way; she’s got her very own nest, it’s feathered, and she sits on it 23 and half                            hours a day. Golf balls, rocks, other chickens – if she can sit on it and it sort of fits under                            her, then it’s her baby. Princess is a natural leader when it comes to socializing in the flock,                            and you can always count on her to call the other girls over to a tasty treat. Are you also longing                            to hear the pitter patter of little talons in the coop? Do you also looooove tomatoes? Then swipe                            right on Princess, roosters and hentlemen. Serious inquiries only! Princess has got no time for                            head games, no siree.                        " ]
    else
        div [][]

identification : Html msg
identification =
    div [ class "identification" ]
        [ span [ class "identification-name" ]
            [ text "Princess" ]
        , span [ class "identification-distance" ]
            [ text "25km" ]
        ]

buttonGroup : Html msg
buttonGroup =
    div [ class "button-group" ]
        [ button [ class "button-round button-primary button-big icon-x" ]
            [ img [ src "/img/x-icon.png" ][]
            ]
        , button [ class "button-round button-primary button-small button-front" ]
            [ img [ src "/img/i-icon.png" ][]
            ]
        , button [ class "button-round button-primary button-big" ]
            [ img [ src "/img/like-icon.png" ][]
            ]
        ]
