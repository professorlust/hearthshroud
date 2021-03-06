module Control.Lens.Helper where


--------------------------------------------------------------------------------


import Control.Lens
import Control.Monad.Reader
import Data.Monoid


--------------------------------------------------------------------------------


viewListOf :: (MonadReader s m) => Getting (Endo [a]) s a -> m [a]
viewListOf = asks . toListOf


infixl 1 >>=.
(>>=.) :: (MonadReader s m) => Getting a s a -> (a -> m b) -> m b
(>>=.) = (>>=) . view



