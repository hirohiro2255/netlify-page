module FormValidator exposing (main)

import Html exposing (Html, button, div, form, h2, input, label, small, text)
import Html.Attributes exposing (..)



-- MODEL
{- username : String
   email : String,
   password : String,
   passwordAgain : String
-}


type alias Model =
    { username : String
    , email : String
    , password : String
    , passwordAgain : String
    }


view : String -> Html msg
view str =
    div [ class "container" ]
        [ Html.form [ id "form", class "form" ]
            [ h2 [] [ text "Register with us" ]
            , div [ class "form-control" ]
                [ viewLabel "username" "Username"
                , viewInput "text" "username" "Enter username"
                , small [] [ text "Error message" ]
                ]
            , div [ class "form-control" ]
                [ viewLabel "email" "Email"
                , viewInput "text" "email" "Enter email"
                , small [] [ text "Error message" ]
                ]
            , div [ class "form-control" ]
                [ viewLabel "password" "Password"
                , viewInput "password" "password" "Enter password"
                , small [] [ text "Error message" ]
                ]
            , div [ class "form-control" ]
                [ viewLabel "password2"
                    "Confirm Password"
                , viewInput
                    "password"
                    "password2"
                    "Enter password again"
                , small [] [ text "Error message" ]
                ]
            , button
                [ type_ "submit" ]
                [ text "Submit" ]
            ]
        ]


viewLabel : String -> String -> Html msg
viewLabel f t =
    label [ for f ] [ text t ]


viewInput : String -> String -> String -> Html msg
viewInput t i p =
    input [ type_ t, id i, placeholder p ] []


main =
    view "Form Validator"
