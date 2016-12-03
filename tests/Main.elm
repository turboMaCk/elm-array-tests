port module Main exposing (..)

import Basics exposing (..)
import Task exposing (..)

import Tests
import Platform.Cmd exposing (Cmd)
import Json.Decode exposing (Value)
import Test.Runner.Node exposing (run, TestProgram)


main : TestProgram
main =
    run emit Tests.all


port emit : ( String, Value ) -> Cmd msg
