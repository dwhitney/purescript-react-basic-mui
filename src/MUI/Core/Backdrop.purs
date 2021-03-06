{- This module was autogenerated. Please don't edit. -}
module MUI.Core.Backdrop where

import Foreign (Foreign) as Foreign
import MUI.Core (JSS, class Nub')
import MUI.Core.Styles (Theme, withStyles) as MUI.Core.Styles
import MUI.React.TransitionGroup (Timeout) as MUI.React.TransitionGroup
import Prim.Row (class Union) as Prim.Row
import React.Basic (JSX, ReactComponent, element)
import React.Basic.DOM (Props_div) as React.Basic.DOM
import Unsafe.Coerce (unsafeCoerce)

type BackdropClassesGenericRow a
  = ( invisible :: a
    , root :: a
    )

type BackdropClassesKey
  = BackdropClassesGenericRow String

type BackdropClassesJSS
  = BackdropClassesGenericRow JSS

type BackdropOptPropsRow (r :: #Type)
  = ( children :: Array JSX
    , classes :: { | BackdropClassesKey }
    , invisible :: Boolean
    , ref :: Foreign.Foreign
    , transitionDuration :: MUI.React.TransitionGroup.Timeout
    | r
    )

type BackdropReqPropsRow (r :: #Type)
  = ( open :: Boolean
    | r
    )

type BackdropPropsRow (r :: #Type)
  = BackdropOptPropsRow (BackdropReqPropsRow r)

foreign import _UnsafeBackdrop :: forall componentProps. ReactComponent { | BackdropPropsRow componentProps }

_Backdrop ::
  forall given optionalGiven optionalMissing props required.
  Nub' (BackdropReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (BackdropPropsRow React.Basic.DOM.Props_div) props =>
  Prim.Row.Union given optionalMissing props =>
  ReactComponent { | given }
_Backdrop = unsafeCoerce _UnsafeBackdrop

backdrop ::
  forall given optionalGiven optionalMissing props required.
  Nub' (BackdropReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (BackdropPropsRow React.Basic.DOM.Props_div) props =>
  Prim.Row.Union given optionalMissing props =>
  { | given } -> JSX
backdrop props = element _Backdrop props

backdropWithStyles ::
  forall jss_ jss given optionalGiven optionalMissing props required.
  Nub' (BackdropReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (BackdropPropsRow React.Basic.DOM.Props_div) props =>
  Prim.Row.Union given optionalMissing props =>
  Prim.Row.Union jss jss_ BackdropClassesJSS =>
  (MUI.Core.Styles.Theme -> { | jss }) -> { | given } -> JSX
backdropWithStyles style props = element (withStyles' style _Backdrop) props
  where
  withStyles' :: (MUI.Core.Styles.Theme -> { | jss }) -> ReactComponent { | given } -> ReactComponent { | given }
  withStyles' = unsafeCoerce MUI.Core.Styles.withStyles

foreign import data BackdropProps :: Type

backdropProps ::
  forall given optionalGiven optionalMissing props required.
  Nub' (BackdropReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (BackdropPropsRow React.Basic.DOM.Props_div) props =>
  Prim.Row.Union given optionalMissing props =>
  { | given } -> BackdropProps
backdropProps = unsafeCoerce
