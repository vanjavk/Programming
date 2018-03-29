

data Mozda a = Nista | Samo a deriving Show
data Izraz = Vrd Int | Dij Izraz Izraz

eval1 :: Izraz -> Int
eval1 (Vrd n) = n
eval1 (Dij x y) = eval1 x `div` eval1 y

dijsnul :: Int -> Int -> Mozda Int
dijsnul _ 0 = Nista
dijsnul n m = Samo (n `div` m)

eval2 :: Izraz -> Mozda Int
eval2 (Vrd n) = Samo n
eval2 (Dij x y) = case eval2 x of 
                       Nista -> Nista
                       Samo n -> case eval2 y of
                                      Nista -> Nista
                                      Samo m -> dijsnul n m

instance Functor Data where
	fmap _ Nista = Nista
	fmap g (Samo x) = Samo (g x)

instance Applicative Mozda where
	
	pure = Samo
	Nista <*> _ = Nista
	(Samo f) <*> x = fmap f x


instance Monad Mozda where
-- (>>=) :: Mozda a -> (a->Mozda b)
    Nista >>= _ = Nista
    (Samo x) >>= f = f x

eval4 :: Izraz -> Mozda Int
eval4 (Vrd n) = Samo n
eval4 (Dij x y) = eval4 x >>= \n -> 
                  eval4 y >>= \m -> 
                  dijsnul n m
eval5 :: Izraz -> Mozda Int
eval5 (Vrd n) = Samo n
eval5 (Dij x y) = do n <- eval5 x
                     m <- eval5 y
                     dijsnul n m






