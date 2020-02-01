{-
Welcome to your new Dhall package-set!

Below are instructions for how to edit this file for most use
cases, so that you don't need to know Dhall to use it.

## Warning: Don't Move This Top-Level Comment!

Due to how `dhall format` currently works, this comment's
instructions cannot appear near corresponding sections below
because `dhall format` will delete the comment. However,
it will not delete a top-level comment like this one.

## Use Cases

Most will want to do one or both of these options:
1. Override/Patch a package's dependency
2. Add a package not already in the default package set

This file will continue to work whether you use one or both options.
Instructions for each option are explained below.

### Overriding/Patching a package

Purpose:
- Change a package's dependency to a newer/older release than the
    default package set's release
- Use your own modified version of some dependency that may
    include new API, changed API, removed API by
    using your custom git repo of the library rather than
    the package set's repo

Syntax:
Replace the overrides' "{=}" (an empty record) with the following idea
The "//" or "⫽" means "merge these two records and
  when they have the same value, use the one on the right:"
-------------------------------
let overrides =
  { packageName =
      upstream.packageName // { updateEntity1 = "new value", updateEntity2 = "new value" }
  , packageName =
      upstream.packageName // { version = "v4.0.0" }
  , packageName =
      upstream.packageName // { repo = "https://www.example.com/path/to/new/repo.git" }
  }
-------------------------------

Example:
-------------------------------
let overrides =
  { halogen =
      upstream.halogen // { version = "master" }
  , halogen-vdom =
      upstream.halogen-vdom // { version = "v4.0.0" }
  }
-------------------------------

### Additions

Purpose:
- Add packages that aren't already included in the default package set

Syntax:
Replace the additions' "{=}" (an empty record) with the following idea:
-------------------------------
let additions =
  { package-name =
       { dependencies =
           [ "dependency1"
           , "dependency2"
           ]
       , repo =
           "https://example.com/path/to/git/repo.git"
       , version =
           "tag ('v4.0.0') or branch ('master')"
       }
  , package-name =
       { dependencies =
           [ "dependency1"
           , "dependency2"
           ]
       , repo =
           "https://example.com/path/to/git/repo.git"
       , version =
           "tag ('v4.0.0') or branch ('master')"
       }
  , etc.
  }
-------------------------------

Example:
-------------------------------
let additions =
  { benchotron =
      { dependencies =
          [ "arrays"
          , "exists"
          , "profunctor"
          , "strings"
          , "quickcheck"
          , "lcg"
          , "transformers"
          , "foldable-traversable"
          , "exceptions"
          , "node-fs"
          , "node-buffer"
          , "node-readline"
          , "datetime"
          , "now"
          ]
      , repo =
          "https://github.com/hdgarrood/purescript-benchotron.git"
      , version =
          "v7.0.0"
      }
  }
-------------------------------
-}


let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.13.6-20200127/packages.dhall sha256:06a623f48c49ea1c7675fdf47f81ddb02ae274558e29f511efae1df99ea92fb8

let overrides = {=}

let additions =
      { matryoshka =
          { dependencies =
              [ "fixed-points"
              , "free"
              , "prelude"
              , "profunctor"
              , "transformers"
              ]
          , repo = "https://github.com/slamdata/purescript-matryoshka.git"
          , version = "v0.4.0"
          }
      , moldy =
          { dependencies = [ "foldable-traversable", "prelude", "strings" ]
          , repo = "https://github.com/LiamGoodacre/purescript-moldy.git"
          , version = "master"
          }
      , node-fs-extra =
          { dependencies = [ "aff-promise", "node-path", "node-buffer" ]
          , repo = "https://github.com/nonbili/purescript-node-fs-extra.git"
          , version = "v0.1.2"
          }
      , pprint =
          { dependencies = [ "arrays", "strings", "unfoldable" ]
          , repo = "https://github.com/paf31/purescript-pprint.git"
          , version = "v5.0.0"
          }
      , react-basic =
              upstream.react-basic
          //  { version = "df358364ece1cd4760429afae0bcca0eb518eb03" }
      , read-dts =
          { dependencies =
              [ "console"
              , "debug"
              , "effect"
              , "freet"
              , "foreign"
              , "foreign-object"
              , "matryoshka"
              , "node-fs-aff"
              , "pprint"
              , "profunctor"
              , "profunctor-lenses"
              , "psci-support"
              , "variant"
              ]
          , repo = "https://github.com/lambdaterms/purescript-read-dts.git"
          , version = "master"
          }
      , strings-extra =
          { dependencies =
              [ "arrays"
              , "either"
              , "foldable-traversable"
              , "maybe"
              , "partial"
              , "prelude"
              , "strings"
              , "unfoldable"
              , "unicode"
              ]
          , repo =
              "https://github.com/purescript-contrib/purescript-strings-extra.git"
          , version = "v2.0.0"
          }
      }

in  upstream // overrides // additions
