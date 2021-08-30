module Main exposing (main)

import Browser
import Html exposing (Html, div, img)
import Html.Attributes exposing (src, style)
import Html.Events exposing (..)
import Msg exposing (Msg(..))
import HelloWorld exposing (helloWorld)


main : Program () Int Msg
main =
    Browser.sandbox { init = 0, update = update, view = view }


update : Msg -> number -> number
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1


view : Int -> Html Msg
view model =
    div []
        [ img [ src "/logo.png", style "width" "300px" ] []
        , helloWorld model
        ]
