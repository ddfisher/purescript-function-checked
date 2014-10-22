module Main where

import Data.Function.Checked
import Control.Monad.Eff
import Debug.Trace

foreign import traceStringFunction
"""function traceStringFunction(fn) {
        console.log(fn("hello"));
    }
""" :: forall a. a -> Unit

foreign import traceNumberFunction
"""function traceNumberFunction(fn) {
        console.log(fn(5));
    }
""" :: forall a. a -> Unit

f = ckFn1 $ \a -> a ++ " world!"
g = ckFn1 $ \a -> a + 37

main :: Eff (trace :: Trace) Unit
main = do
    return $ traceStringFunction f
    return $ traceNumberFunction g
