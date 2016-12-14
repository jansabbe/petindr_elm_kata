module Home exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


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
    }



-- initialModel =
-- ...
-- Define an update function
-- ...
-- Define a view function
-- ...
-- main


main =
    beginnerProgram
        { model = initialModel
        , view = view
        , update = update
        }
