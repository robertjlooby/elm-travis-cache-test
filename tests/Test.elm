module Main (..) where

import Console
import ElmTest exposing (..)
import Signal exposing (Signal)
import Task


tests : Test
tests =
  suite
    "robertjlooby/elm-generic-dict tests"
    [ test "has a test" (assert True) ]


port runner : Signal (Task.Task x ())
port runner =
  Console.run (consoleRunner tests)
