module Main exposing (main)

import Html exposing (Html, a, div, h1, li, main_, text, ul)
import Html.Attributes exposing (..)


view : String -> Html msg
view str =
    main_ [ class "container contents" ]
        [ div []
            [ h1 [ class "contents-title" ] [ text "Daily UI with Elm" ]
            , ul [ class "list-container" ]
                [ li [ class "list-item" ] [ a [ href "prods/form-validator/index.html", class "item" ] [ text "day 1" ] ]
                , li [ class "list-item" ] [ text "list 2" ]
                ]
            ]
        ]


main =
    view "hello Elm app world"
