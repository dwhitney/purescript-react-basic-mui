{- This module was autogenerated. Please don't edit. -}
module MUI.Core.ListItemIcon where

import MUI.Core (JSS, class Nub')
import MUI.Core.Styles (Theme, withStyles) as MUI.Core.Styles
import Prim.Row (class Union) as Prim.Row
import React.Basic (JSX, ReactComponent, element)
import React.Basic.DOM (Props_div) as React.Basic.DOM
import Unsafe.Coerce (unsafeCoerce)

type ListItemIconClassesGenericRow a
  = ( root :: a
    )

type ListItemIconClassesKey
  = ListItemIconClassesGenericRow String

type ListItemIconClassesJSS
  = ListItemIconClassesGenericRow JSS

type ListItemIconOptPropsRow (r :: #Type)
  = ( children :: Array JSX
    , classes :: { | ListItemIconClassesKey }
    | r
    )

type ListItemIconReqPropsRow (r :: #Type)
  = r

type ListItemIconPropsRow (r :: #Type)
  = ListItemIconOptPropsRow (ListItemIconReqPropsRow r)

foreign import _UnsafeListItemIcon :: forall componentProps. ReactComponent { | ListItemIconPropsRow componentProps }

_ListItemIcon ::
  forall given optionalGiven optionalMissing props required.
  Nub' (ListItemIconReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (ListItemIconPropsRow React.Basic.DOM.Props_div) props =>
  Prim.Row.Union given optionalMissing props =>
  ReactComponent { | given }
_ListItemIcon = unsafeCoerce _UnsafeListItemIcon

listItemIcon ::
  forall given optionalGiven optionalMissing props required.
  Nub' (ListItemIconReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (ListItemIconPropsRow React.Basic.DOM.Props_div) props =>
  Prim.Row.Union given optionalMissing props =>
  { | given } -> JSX
listItemIcon props = element _ListItemIcon props

listItemIconWithStyles ::
  forall jss_ jss given optionalGiven optionalMissing props required.
  Nub' (ListItemIconReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (ListItemIconPropsRow React.Basic.DOM.Props_div) props =>
  Prim.Row.Union given optionalMissing props =>
  Prim.Row.Union jss jss_ ListItemIconClassesJSS =>
  (MUI.Core.Styles.Theme -> { | jss }) -> { | given } -> JSX
listItemIconWithStyles style props = element (withStyles' style _ListItemIcon) props
  where
  withStyles' :: (MUI.Core.Styles.Theme -> { | jss }) -> ReactComponent { | given } -> ReactComponent { | given }
  withStyles' = unsafeCoerce MUI.Core.Styles.withStyles

foreign import data ListItemIconProps :: Type

listItemIconProps ::
  forall given optionalGiven optionalMissing props required.
  Nub' (ListItemIconReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (ListItemIconPropsRow React.Basic.DOM.Props_div) props =>
  Prim.Row.Union given optionalMissing props =>
  { | given } -> ListItemIconProps
listItemIconProps = unsafeCoerce
