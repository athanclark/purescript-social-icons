module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)

import Thermite as T
import React.DOM.SocialIcons (socialIcon, twitter)

spec :: T.Spec _ Unit _ Unit
spec = T.simpleSpec performAction render
  where
    performAction _ _ _ = pure unit
    render :: T.Render Unit _ Unit
    render _ _ _ _ =
      [ socialIcon {url: "asdf.com", network: twitter}
      ]


main :: Eff _ Unit
main = do
  log "Hello sailor!"
  T.defaultMain spec unit unit
