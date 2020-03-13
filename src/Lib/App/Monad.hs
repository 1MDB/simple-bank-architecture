{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module Lib.App.Monad (App (..), AppEnv) where

import Control.Monad.Reader
import Control.Monad.IO.Class (MonadIO)

data Env (m :: * -> *)
  = Env
      { envRedisConnPool :: String
      , envDbConnPool :: String
      }

type AppEnv = Env App

newtype App a
  = App
      { unApp :: ReaderT AppEnv IO a
      }
  deriving (Functor, Applicative, Monad, MonadIO)
