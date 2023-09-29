maiorc x y = if x > y then x else y

maiorn (x,y) = if x > y then x else y

curry' = \f x y -> f (x,y)