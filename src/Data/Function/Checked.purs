module Data.Function.Checked
  ( ckFn1
  , ckFn2
  , ckFn3
  , ckFn4
  , ckFn5
  , ckFn6
  , ckFn7
  , ckFn8
  , ckFn9
  , ckFn10
  , ForeignEff()
  ) where

import Data.Foreign
import Data.Foreign.Class

import Data.Function

import Data.Either
import Control.Monad.Eff
import Control.Monad.Eff.Exception

type ExceptionEff a = forall eff. Eff (err :: Exception | eff) a

foreign import data ForeignEff :: *

foreign import runEff
"""function runEff(eff) {
    return eff();
  }
""" :: forall a eff. Eff eff a -> ForeignEff

forceForeign :: forall a. (IsForeign a) => Foreign -> ExceptionEff a
forceForeign o = case read o of
                  Left err -> throwException $ error (show err)
                  Right v -> return v


-------------------------------------
--  AUTOGENERATED CONTENT FOLLOWS  --
-------------------------------------


check1 :: forall a b. (IsForeign a) => (a -> b) -> Foreign -> ForeignEff
check1 fn a = runEff $ do
  a' <- forceForeign a
  return $ fn a'

check2 :: forall a b c. (IsForeign a, IsForeign b) => (a -> b -> c) -> Foreign -> Foreign -> ForeignEff
check2 fn a b = runEff $ do
  a' <- forceForeign a
  b' <- forceForeign b
  return $ fn a' b'

check3 :: forall a b c d. (IsForeign a, IsForeign b, IsForeign c) => (a -> b -> c -> d) -> Foreign -> Foreign -> Foreign -> ForeignEff
check3 fn a b c = runEff $ do
  a' <- forceForeign a
  b' <- forceForeign b
  c' <- forceForeign c
  return $ fn a' b' c'

check4 :: forall a b c d e. (IsForeign a, IsForeign b, IsForeign c, IsForeign d) => (a -> b -> c -> d -> e) -> Foreign -> Foreign -> Foreign -> Foreign -> ForeignEff
check4 fn a b c d = runEff $ do
  a' <- forceForeign a
  b' <- forceForeign b
  c' <- forceForeign c
  d' <- forceForeign d
  return $ fn a' b' c' d'

check5 :: forall a b c d e f. (IsForeign a, IsForeign b, IsForeign c, IsForeign d, IsForeign e) => (a -> b -> c -> d -> e -> f) -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> ForeignEff
check5 fn a b c d e = runEff $ do
  a' <- forceForeign a
  b' <- forceForeign b
  c' <- forceForeign c
  d' <- forceForeign d
  e' <- forceForeign e
  return $ fn a' b' c' d' e'

check6 :: forall a b c d e f g. (IsForeign a, IsForeign b, IsForeign c, IsForeign d, IsForeign e, IsForeign f) => (a -> b -> c -> d -> e -> f -> g) -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> ForeignEff
check6 fn a b c d e f = runEff $ do
  a' <- forceForeign a
  b' <- forceForeign b
  c' <- forceForeign c
  d' <- forceForeign d
  e' <- forceForeign e
  f' <- forceForeign f
  return $ fn a' b' c' d' e' f'

check7 :: forall a b c d e f g h. (IsForeign a, IsForeign b, IsForeign c, IsForeign d, IsForeign e, IsForeign f, IsForeign g) => (a -> b -> c -> d -> e -> f -> g -> h) -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> ForeignEff
check7 fn a b c d e f g = runEff $ do
  a' <- forceForeign a
  b' <- forceForeign b
  c' <- forceForeign c
  d' <- forceForeign d
  e' <- forceForeign e
  f' <- forceForeign f
  g' <- forceForeign g
  return $ fn a' b' c' d' e' f' g'

check8 :: forall a b c d e f g h i. (IsForeign a, IsForeign b, IsForeign c, IsForeign d, IsForeign e, IsForeign f, IsForeign g, IsForeign h) => (a -> b -> c -> d -> e -> f -> g -> h -> i) -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> ForeignEff
check8 fn a b c d e f g h = runEff $ do
  a' <- forceForeign a
  b' <- forceForeign b
  c' <- forceForeign c
  d' <- forceForeign d
  e' <- forceForeign e
  f' <- forceForeign f
  g' <- forceForeign g
  h' <- forceForeign h
  return $ fn a' b' c' d' e' f' g' h'

check9 :: forall a b c d e f g h i j. (IsForeign a, IsForeign b, IsForeign c, IsForeign d, IsForeign e, IsForeign f, IsForeign g, IsForeign h, IsForeign i) => (a -> b -> c -> d -> e -> f -> g -> h -> i -> j) -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> ForeignEff
check9 fn a b c d e f g h i = runEff $ do
  a' <- forceForeign a
  b' <- forceForeign b
  c' <- forceForeign c
  d' <- forceForeign d
  e' <- forceForeign e
  f' <- forceForeign f
  g' <- forceForeign g
  h' <- forceForeign h
  i' <- forceForeign i
  return $ fn a' b' c' d' e' f' g' h' i'

check10 :: forall a b c d e f g h i j k. (IsForeign a, IsForeign b, IsForeign c, IsForeign d, IsForeign e, IsForeign f, IsForeign g, IsForeign h, IsForeign i, IsForeign j) => (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> k) -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> Foreign -> ForeignEff
check10 fn a b c d e f g h i j = runEff $ do
  a' <- forceForeign a
  b' <- forceForeign b
  c' <- forceForeign c
  d' <- forceForeign d
  e' <- forceForeign e
  f' <- forceForeign f
  g' <- forceForeign g
  h' <- forceForeign h
  i' <- forceForeign i
  j' <- forceForeign j
  return $ fn a' b' c' d' e' f' g' h' i' j'


ckFn1 :: forall a b. (IsForeign a) => (a -> b) -> Fn1 Foreign ForeignEff
ckFn1 = mkFn1 <<< check1

ckFn2 :: forall a b c. (IsForeign a, IsForeign b) => (a -> b -> c) -> Fn2 Foreign Foreign ForeignEff
ckFn2 = mkFn2 <<< check2

ckFn3 :: forall a b c d. (IsForeign a, IsForeign b, IsForeign c) => (a -> b -> c -> d) -> Fn3 Foreign Foreign Foreign ForeignEff
ckFn3 = mkFn3 <<< check3

ckFn4 :: forall a b c d e. (IsForeign a, IsForeign b, IsForeign c, IsForeign d) => (a -> b -> c -> d -> e) -> Fn4 Foreign Foreign Foreign Foreign ForeignEff
ckFn4 = mkFn4 <<< check4

ckFn5 :: forall a b c d e f. (IsForeign a, IsForeign b, IsForeign c, IsForeign d, IsForeign e) => (a -> b -> c -> d -> e -> f) -> Fn5 Foreign Foreign Foreign Foreign Foreign ForeignEff
ckFn5 = mkFn5 <<< check5

ckFn6 :: forall a b c d e f g. (IsForeign a, IsForeign b, IsForeign c, IsForeign d, IsForeign e, IsForeign f) => (a -> b -> c -> d -> e -> f -> g) -> Fn6 Foreign Foreign Foreign Foreign Foreign Foreign ForeignEff
ckFn6 = mkFn6 <<< check6

ckFn7 :: forall a b c d e f g h. (IsForeign a, IsForeign b, IsForeign c, IsForeign d, IsForeign e, IsForeign f, IsForeign g) => (a -> b -> c -> d -> e -> f -> g -> h) -> Fn7 Foreign Foreign Foreign Foreign Foreign Foreign Foreign ForeignEff
ckFn7 = mkFn7 <<< check7

ckFn8 :: forall a b c d e f g h i. (IsForeign a, IsForeign b, IsForeign c, IsForeign d, IsForeign e, IsForeign f, IsForeign g, IsForeign h) => (a -> b -> c -> d -> e -> f -> g -> h -> i) -> Fn8 Foreign Foreign Foreign Foreign Foreign Foreign Foreign Foreign ForeignEff
ckFn8 = mkFn8 <<< check8

ckFn9 :: forall a b c d e f g h i j. (IsForeign a, IsForeign b, IsForeign c, IsForeign d, IsForeign e, IsForeign f, IsForeign g, IsForeign h, IsForeign i) => (a -> b -> c -> d -> e -> f -> g -> h -> i -> j) -> Fn9 Foreign Foreign Foreign Foreign Foreign Foreign Foreign Foreign Foreign ForeignEff
ckFn9 = mkFn9 <<< check9

ckFn10 :: forall a b c d e f g h i j k. (IsForeign a, IsForeign b, IsForeign c, IsForeign d, IsForeign e, IsForeign f, IsForeign g, IsForeign h, IsForeign i, IsForeign j) => (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> k) -> Fn10 Foreign Foreign Foreign Foreign Foreign Foreign Foreign Foreign Foreign Foreign ForeignEff
ckFn10 = mkFn10 <<< check10