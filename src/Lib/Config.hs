module Lib.Config (Config (..)) where

data Config
  = Config
      { cDbPort :: !String,
        cDbUrl :: !String
      }
