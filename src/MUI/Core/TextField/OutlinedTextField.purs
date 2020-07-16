{- This module was autogenerated. Please don't edit. -}
module MUI.Core.TextField.OutlinedTextField where

import Foreign (Foreign) as Foreign
import MUI.Core (JSS, class Nub')
import MUI.Core.FormControl (FormControlPropsRow, FormControlReqPropsRow) as MUI.Core.FormControl
import MUI.Core.Styles (Theme, withStyles) as MUI.Core.Styles
import Prelude
import Prim.Row (class Union) as Prim.Row
import React.Basic (JSX, ReactComponent, element)
import React.Basic.DOM (Props_div) as React.Basic.DOM
import React.Basic.Events (EventHandler) as React.Basic.Events
import Unsafe.Coerce (unsafeCoerce)
import Unsafe.Reference (unsafeRefEq)

foreign import data Color :: Type

color ::
  { primary :: Color
  , secondary :: Color
  }
color = { primary: unsafeCoerce "primary", secondary: unsafeCoerce "secondary" }

foreign import data Margin :: Type

margin ::
  { dense :: Margin
  , none :: Margin
  , normal :: Margin
  }
margin = { dense: unsafeCoerce "dense", none: unsafeCoerce "none", normal: unsafeCoerce "normal" }

foreign import data Rows :: Type

rows ::
  { number :: Number -> Rows
  , string :: String -> Rows
  }
rows = { number: unsafeCoerce, string: unsafeCoerce }

foreign import data RowsMax :: Type

rowsMax ::
  { number :: Number -> RowsMax
  , string :: String -> RowsMax
  }
rowsMax = { number: unsafeCoerce, string: unsafeCoerce }

foreign import data Variant :: Type

variant ::
  { outlined :: Variant
  }
variant = { outlined: unsafeCoerce "outlined" }

instance eqVariant :: Eq Variant where
  eq = unsafeRefEq

instance eqMargin :: Eq Margin where
  eq = unsafeRefEq

instance eqColor :: Eq Color where
  eq = unsafeRefEq

type OutlinedTextFieldClassesGenericRow a
  = ( root :: a
    )

type OutlinedTextFieldClassesKey
  = OutlinedTextFieldClassesGenericRow String

type OutlinedTextFieldClassesJSS
  = OutlinedTextFieldClassesGenericRow JSS

type OutlinedTextFieldOptPropsRow (r :: #Type)
  = ( autoComplete :: String
    , autoFocus :: Boolean
    , children :: Array JSX
    , classes :: { | OutlinedTextFieldClassesKey }
    , color :: Color
    , defaultValue :: Foreign.Foreign
    , disabled :: Boolean
    , error :: Boolean
    , fullWidth :: Boolean
    , helperText :: JSX
    , id :: String
    , label :: JSX
    , margin :: Margin
    , multiline :: Boolean
    , name :: String
    , onBlur :: React.Basic.Events.EventHandler
    , onChange :: React.Basic.Events.EventHandler
    , onFocus :: React.Basic.Events.EventHandler
    , placeholder :: String
    , required :: Boolean
    , rows :: Rows
    , rowsMax :: RowsMax
    , select :: Boolean
    , "type" :: String
    , value :: Foreign.Foreign
    | r
    )

type OutlinedTextFieldReqPropsRow (r :: #Type)
  = ( variant :: Variant
    | r
    )

type OutlinedTextFieldPropsRow (r :: #Type)
  = OutlinedTextFieldOptPropsRow (OutlinedTextFieldReqPropsRow r)

foreign import _UnsafeOutlinedTextField :: forall componentProps. ReactComponent { | OutlinedTextFieldPropsRow componentProps }

_OutlinedTextField ::
  forall given optionalGiven optionalMissing props required.
  Nub' (OutlinedTextFieldReqPropsRow (MUI.Core.FormControl.FormControlReqPropsRow ())) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (OutlinedTextFieldPropsRow (MUI.Core.FormControl.FormControlPropsRow React.Basic.DOM.Props_div)) props =>
  Prim.Row.Union given optionalMissing props =>
  ReactComponent { | given }
_OutlinedTextField = unsafeCoerce _UnsafeOutlinedTextField

outlinedTextField ::
  forall given optionalGiven optionalMissing props required.
  Nub' (OutlinedTextFieldReqPropsRow (MUI.Core.FormControl.FormControlReqPropsRow ())) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (OutlinedTextFieldPropsRow (MUI.Core.FormControl.FormControlPropsRow React.Basic.DOM.Props_div)) props =>
  Prim.Row.Union given optionalMissing props =>
  { | given } -> JSX
outlinedTextField props = element _OutlinedTextField props

outlinedTextFieldWithStyles ::
  forall jss_ jss given optionalGiven optionalMissing props required.
  Nub' (OutlinedTextFieldReqPropsRow (MUI.Core.FormControl.FormControlReqPropsRow ())) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (OutlinedTextFieldPropsRow (MUI.Core.FormControl.FormControlPropsRow React.Basic.DOM.Props_div)) props =>
  Prim.Row.Union given optionalMissing props =>
  Prim.Row.Union jss jss_ OutlinedTextFieldClassesJSS =>
  (MUI.Core.Styles.Theme -> { | jss }) -> { | given } -> JSX
outlinedTextFieldWithStyles style props = element (withStyles' style _OutlinedTextField) props
  where
  withStyles' :: (MUI.Core.Styles.Theme -> { | jss }) -> ReactComponent { | given } -> ReactComponent { | given }
  withStyles' = unsafeCoerce MUI.Core.Styles.withStyles

foreign import data OutlinedTextFieldProps :: Type

outlinedTextFieldProps ::
  forall given optionalGiven optionalMissing props required.
  Nub' (OutlinedTextFieldReqPropsRow (MUI.Core.FormControl.FormControlReqPropsRow ())) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (OutlinedTextFieldPropsRow (MUI.Core.FormControl.FormControlPropsRow React.Basic.DOM.Props_div)) props =>
  Prim.Row.Union given optionalMissing props =>
  { | OutlinedTextFieldReqPropsRow given } -> OutlinedTextFieldProps
outlinedTextFieldProps = unsafeCoerce