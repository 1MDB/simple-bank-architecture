module Lib
  ( main,
  )
where

import Lib.App.Monad (AppEnv)

makeAppEnv :: Config -> IO AppEnv

runServer :: AppEnv -> IO ()
runServer _ = putStrLn "(mock) Start server ..."

main :: IO ()
main = putStrLn "someFunc"