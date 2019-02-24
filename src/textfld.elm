module Main exposing (Model, Msg(..), init, main, update, view)

import Browser
import Html exposing (Attribute, Html, div, input, table, td, text, tr)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)



-- MAIN


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
    { content : String
    }


init : Model
init =
    { content = "" }



-- UPDATE


type Msg
    = Change String


update : Msg -> Model -> Model
update msg model =
    case msg of
        Change newContent ->
            { model | content = newContent }



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ input [ placeholder "Text to reverse", value model.content, onInput Change ] []
        , div [] [ text (String.reverse model.content) ]
        , table [ style "border" "solid thin", style "collapse" "collapse" ]
            [ tr []
                [ td [ style "border" "solid thin" ]
                    []
                , td
                    [ style "border" "solid thin" ]
                    []
                , td
                    [ style "border" "solid thin" ]
                    []
                ]
            , tr []
                [ td [ style "border" "solid thin" ]
                    []
                , td
                    [ style "border" "solid thin" ]
                    []
                , td
                    [ style "border" "solid thin" ]
                    []
                ]
            , tr []
                [ td [ style "border" "solid thin" ]
                    []
                , td
                    [ style "border" "solid thin" ]
                    []
                , td
                    [ style "border" "solid thin" ]
                    []
                ]
            ]
        ]
