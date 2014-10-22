# Module Documentation

## Module Data.Function.Checked

### Types

    data ForeignEff :: *


### Values

    ckFn1 :: forall a b. (IsForeign a) => (a -> b) -> Fn1 Foreign ForeignEff

    ckFn10 :: forall a b c d e f g h i j k. (IsForeign a, IsForeign b, IsForeign c, IsForeign d, IsForeign e, IsForeign f, IsForeign g, IsForeign h, IsForeign i, IsForeign j) => (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> k) -> Fn10 Foreign Foreign Foreign Foreign Foreign Foreign Foreign Foreign Foreign Foreign ForeignEff

    ckFn2 :: forall a b c. (IsForeign a, IsForeign b) => (a -> b -> c) -> Fn2 Foreign Foreign ForeignEff

    ckFn3 :: forall a b c d. (IsForeign a, IsForeign b, IsForeign c) => (a -> b -> c -> d) -> Fn3 Foreign Foreign Foreign ForeignEff

    ckFn4 :: forall a b c d e. (IsForeign a, IsForeign b, IsForeign c, IsForeign d) => (a -> b -> c -> d -> e) -> Fn4 Foreign Foreign Foreign Foreign ForeignEff

    ckFn5 :: forall a b c d e f. (IsForeign a, IsForeign b, IsForeign c, IsForeign d, IsForeign e) => (a -> b -> c -> d -> e -> f) -> Fn5 Foreign Foreign Foreign Foreign Foreign ForeignEff

    ckFn6 :: forall a b c d e f g. (IsForeign a, IsForeign b, IsForeign c, IsForeign d, IsForeign e, IsForeign f) => (a -> b -> c -> d -> e -> f -> g) -> Fn6 Foreign Foreign Foreign Foreign Foreign Foreign ForeignEff

    ckFn7 :: forall a b c d e f g h. (IsForeign a, IsForeign b, IsForeign c, IsForeign d, IsForeign e, IsForeign f, IsForeign g) => (a -> b -> c -> d -> e -> f -> g -> h) -> Fn7 Foreign Foreign Foreign Foreign Foreign Foreign Foreign ForeignEff

    ckFn8 :: forall a b c d e f g h i. (IsForeign a, IsForeign b, IsForeign c, IsForeign d, IsForeign e, IsForeign f, IsForeign g, IsForeign h) => (a -> b -> c -> d -> e -> f -> g -> h -> i) -> Fn8 Foreign Foreign Foreign Foreign Foreign Foreign Foreign Foreign ForeignEff

    ckFn9 :: forall a b c d e f g h i j. (IsForeign a, IsForeign b, IsForeign c, IsForeign d, IsForeign e, IsForeign f, IsForeign g, IsForeign h, IsForeign i) => (a -> b -> c -> d -> e -> f -> g -> h -> i -> j) -> Fn9 Foreign Foreign Foreign Foreign Foreign Foreign Foreign Foreign Foreign ForeignEff