module Main exposing (..)

import Browser
import Html exposing (Html, a, button, code, div, h1, img, p, text)
import Html.Attributes exposing (href, src, style)
import Html.Events exposing (onClick)


main : Program () Int Msg
main =
    Browser.sandbox { init = 0, update = update, view = view }


type Msg
    = Increment
    | Decrement


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
        [ img [ src "./src/assets/logo.png", style "width" "300px" ] []
        , div []
            [ h1 [] [ text "Hello, Vite + Elm!" ]
            , p []
                [ a [ href "https://vitejs.dev/guide/features.html" ] [ text "Vite Documentation" ]
                , text " | "
                , a [ href "https://guide.elm-lang.org/" ] [ text "Elm Documentation" ]
                ]
            , button [ onClick Increment ] [ text ("count is: " ++ String.fromInt model) ]
            , p []
                [ text "Edit "
                , code [] [ text "src/Main.elm" ]
                , text " to test auto refresh"
                ]
            ]
        ]
