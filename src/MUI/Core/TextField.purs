module MUI.Core.TextField where

import Effect (Effect)
import Foreign (Foreign)
import Foreign.Object (Object)
import Prim.Row (class Union)
import React.Basic.DOM (Props_div)
import React.Basic.Events (EventHandler)
import React.Basic.Hooks (JSX, ReactComponent, Ref, element)
import Unsafe.Coerce (unsafeCoerce)

type TextFieldProps componentProps =
  ( autoComplete :: String
  , autoFocus :: Boolean
  , classes :: TextFieldClassKey
  , component :: ReactComponent { | componentProps }
  , defaultValue :: String
  , disabled :: Boolean
  , error :: Boolean
  , "FormHelperTextProps" :: Object Foreign
  , fullWidth :: Boolean
  , helperText :: JSX
  , id :: String
  , "InputLabelProps" :: Object Foreign
  , "InputProps" :: Object Foreign
  , inputProps :: Object Foreign
  , inputRef :: Effect (Ref Foreign)
  , label :: JSX
  , margin :: String
  , multiline :: Boolean
  , name :: String
  , onBlur :: EventHandler
  , onChange :: EventHandler
  , onFocus :: EventHandler
  , placeholder :: String
  , required :: Boolean
  , rows :: Number
  , rowsMax :: Number
  , select :: Boolean
  , "SelectProps" :: Object Foreign
  , type :: String
  , value :: String
  , variant :: String
  | componentProps
  )


foreign import data TextFieldClassKey :: Type
foreign import data TextFieldPropsPartial :: Type

type TextFieldClassKeyOptions = ( root :: String )

textFieldClassKey :: ∀ options options_
  . Union options options_ TextFieldClassKeyOptions
  => Record options
  -> TextFieldClassKey
textFieldClassKey = unsafeCoerce

textFieldPropsPartial_component :: ∀ componentProps props props_
  . Union props props_ (TextFieldProps componentProps)
  => Record props 
  -> TextFieldPropsPartial 
textFieldPropsPartial_component = unsafeCoerce

textFieldPropsPartial :: ∀ props props_
  . Union props props_ (TextFieldProps Props_div)
  => Record props 
  -> TextFieldPropsPartial 
textFieldPropsPartial = unsafeCoerce

textField_component :: ∀ componentProps props props_
  . Union props props_ (TextFieldProps componentProps)
  => Record props 
  -> JSX
textField_component = element _TextField

textField :: ∀ props props_
  . Union props props_ (TextFieldProps Props_div)
  => Record props 
  -> JSX
textField = element _TextField

foreign import _TextField :: ∀ a. ReactComponent a
