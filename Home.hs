{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
module Home where

import Foundation
import Yesod.Core

getHomeR :: Handler Html
getHomeR = defaultLayout $ do
    setTitle "Minimal Multifile"
    [whamlet|
<style>h1{color:red}</style>

        <p>
            <h1>Addition:</h1>
        <p>
            <a href=@{AddR 5 7}>HTML addition
        <p>
            <a href=@{AddR 5 7}?_accept=application/json>JSON addition
        <p>
            <h1>Subtraction:</h1>
        <p>
            <a href=@{SubR 5 7}>HTML subtraction
        <p>
            <a href=@{SubR 5 7}?_accept=application/json>JSON subtraction
        <p>
           <h1>Multiplication:</h1>
        <p>
            <a href=@{MulR 5 7}>HTML multiplication
        <p>
            <a href=@{MulR 5 7}?_accept=application/json>JSON multiplication
        <p>
            <h1>Division:</h1>
        <p>
            <a href=@{DivR 5 7}>HTML division
        <p>
            <a href=@{DivR 5 7}?_accept=application/json>JSON division
        <p>
            <h1>Square:</h1>
        <p>
            <a href=@{SquareR 5}>HTML square
        <p>
            <a href=@{SquareR 5}?_accept=application/json>JSON square
    |]
