{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}


module Hearth.Client.Console.ManaColumn (
    manaColumn
) where


--------------------------------------------------------------------------------


import Control.Lens
import Hearth.Model
import Hearth.Client.Console.SGRString
import System.Console.ANSI


--------------------------------------------------------------------------------


manaColumn :: Player -> [SGRString]
manaColumn player = let
    totalMana = player^.playerTotalManaCrystals
    emptyMana = player^.playerEmptyManaCrystals
    currMana = totalMana - emptyMana
    in [sgrColor (Dull, Green) ++ "Mana",
        sgrColor (Dull, Green) ++ "----",
        sgrColor (Vivid, Green) ++ sgrShow currMana ++ ":" ++ sgrShow totalMana ]







