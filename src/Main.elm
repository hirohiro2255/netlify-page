module Main exposing (main)

import Html exposing (Html, div, text)


view : String -> Html msg
view str =
    div [] [ text str ]


main =
    view "hello world"
