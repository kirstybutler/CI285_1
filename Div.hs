{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
module Div where

import Foundation
import Yesod.Core

getDivR :: Int -> Int -> Handler TypedContent
getDivR x y = selectRep $ do
    provideRep $ defaultLayout $ do
        setTitle "Division"
        [whamlet|#{x} `div` #{y} = #{z}|]
    provideJson $ object ["result" .= z]
  where
    z = x `div` y


