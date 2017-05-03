{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
module Square where

import Foundation
import Yesod.Core

getSquareR :: Int -> Handler TypedContent
getSquareR x = selectRep $ do
    provideRep $ defaultLayout $ do
        setTitle "Square"
        [whamlet|#{x} * #{x} = #{z}|]
    provideJson $ object ["result" .= z]
  where
    z = x * x


