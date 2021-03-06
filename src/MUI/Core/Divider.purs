{- This module was autogenerated. Please don't edit. -}
module MUI.Core.Divider where

import MUI.Core (JSS, class Nub')
import MUI.Core.Styles (Theme, withStyles) as MUI.Core.Styles
import Prelude
import Prim.Row (class Union) as Prim.Row
import React.Basic (JSX, ReactComponent, element)
import React.Basic.DOM (Props_hr) as React.Basic.DOM
import Unsafe.Coerce (unsafeCoerce)
import Unsafe.Reference (unsafeRefEq)

foreign import data Orientation :: Type

orientation ::
  { horizontal :: Orientation
  , vertical :: Orientation
  }
orientation = { horizontal: unsafeCoerce "horizontal", vertical: unsafeCoerce "vertical" }

foreign import data Variant :: Type

variant ::
  { fullWidth :: Variant
  , inset :: Variant
  , middle :: Variant
  }
variant = { fullWidth: unsafeCoerce "fullWidth", inset: unsafeCoerce "inset", middle: unsafeCoerce "middle" }

instance eqVariant :: Eq Variant where
  eq = unsafeRefEq

instance eqOrientation :: Eq Orientation where
  eq = unsafeRefEq

type DividerClassesGenericRow a
  = ( absolute :: a
    , inset :: a
    , light :: a
    , middle :: a
    , root :: a
    , vertical :: a
    )

type DividerClassesKey
  = DividerClassesGenericRow String

type DividerClassesJSS
  = DividerClassesGenericRow JSS

type DividerOptPropsRow (r :: #Type)
  = ( absolute :: Boolean
    , classes :: { | DividerClassesKey }
    , light :: Boolean
    , orientation :: Orientation
    , variant :: Variant
    | r
    )

type DividerReqPropsRow (r :: #Type)
  = r

type DividerPropsRow (r :: #Type)
  = DividerOptPropsRow (DividerReqPropsRow r)

foreign import _UnsafeDivider :: forall componentProps. ReactComponent { | DividerPropsRow componentProps }

_Divider ::
  forall given optionalGiven optionalMissing props required.
  Nub' (DividerReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (DividerPropsRow React.Basic.DOM.Props_hr) props =>
  Prim.Row.Union given optionalMissing props =>
  ReactComponent { | given }
_Divider = unsafeCoerce _UnsafeDivider

divider ::
  forall given optionalGiven optionalMissing props required.
  Nub' (DividerReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (DividerPropsRow React.Basic.DOM.Props_hr) props =>
  Prim.Row.Union given optionalMissing props =>
  { | given } -> JSX
divider props = element _Divider props

dividerWithStyles ::
  forall jss_ jss given optionalGiven optionalMissing props required.
  Nub' (DividerReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (DividerPropsRow React.Basic.DOM.Props_hr) props =>
  Prim.Row.Union given optionalMissing props =>
  Prim.Row.Union jss jss_ DividerClassesJSS =>
  (MUI.Core.Styles.Theme -> { | jss }) -> { | given } -> JSX
dividerWithStyles style props = element (withStyles' style _Divider) props
  where
  withStyles' :: (MUI.Core.Styles.Theme -> { | jss }) -> ReactComponent { | given } -> ReactComponent { | given }
  withStyles' = unsafeCoerce MUI.Core.Styles.withStyles

foreign import data DividerProps :: Type

dividerProps ::
  forall given optionalGiven optionalMissing props required.
  Nub' (DividerReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (DividerPropsRow React.Basic.DOM.Props_hr) props =>
  Prim.Row.Union given optionalMissing props =>
  { | given } -> DividerProps
dividerProps = unsafeCoerce
