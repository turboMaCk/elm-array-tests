module Tests exposing (..)

import Basics exposing (..)
import Test exposing (..)
import Test.Runner exposing (run)
import Expect

all : Test
all =
    describe "Sample Test Suite"
        [ describe "Unit test examples"
            [ test "Addition" <|
                \() ->
                    Expect.equal (3 + 7) 10
            ]
        ]
