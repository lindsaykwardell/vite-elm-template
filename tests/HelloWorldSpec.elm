module HelloWorldSpec exposing (..)

import HelloWorld exposing (helloWorld)
import Msg
import Test exposing (Test)
import Test.Html.Event as Event
import Test.Html.Query as Query
import Test.Html.Selector as Html


suite : Test
suite =
    Test.describe "HelloWorld"
        [ Test.test "renders and runs the test" <|
            \_ ->
                helloWorld 0
                    |> Query.fromHtml
                    |> Query.has [ Html.text "Hello, Vite + Elm!" ]
        , Test.test "clicking on the count button sends an increment message" <|
            \_ ->
                helloWorld 0
                    |> Query.fromHtml
                    |> Query.find [ Html.tag "button", Html.containing [ Html.text "count" ] ]
                    |> Event.simulate Event.click
                    |> Event.expect Msg.Increment
        ]
