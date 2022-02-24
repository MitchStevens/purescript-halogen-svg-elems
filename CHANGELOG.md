# Changelog

Notable changes to this project are documented in this file. The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html). This file is updated via [purs-changelog](https://github.com/JordanMartinez/purescript-up-changelog)

## [v5.0.3](https://github.com/JordanMartinez/purescript-halogen-svg-elems/releases/tag/v5.0.3) - 2022-02-24

Bugfixes:
- Fix `points` type signature that prevents `polyline` and `polygon` from compiling (#33 by @JordanMartinez)

## [v5.0.2](https://github.com/JordanMartinez/purescript-halogen-svg-elems/releases/tag/v5.0.2) - 2022-02-21

Bugfixes:
- Fix `Halogen.Svg.Attributes.Path.c` whitespace issue (#31 by @paulino26)

## [v5.0.0](https://github.com/JordanMartinez/purescript-halogen-svg-elems/releases/tag/v5.0.0) - 2021-09-18

Breaking Changes:
- snake_case naming was changed to camelCase naming
- Added `NoColor` constructor to `Color` and dropped the wrapping `Maybe` in its usages
- Renamed `CSSLength(Nil)` to `CSSLength(NoCSSLength)`
- Fix the class `Show` instances of `FontSize`, `CSSLength`, `Orient` and `MarkerUnit`
- Rename `TextAnchor` constructors to, `AnchorStart`, `AnchorEnd`, and `AnchorMiddle`.
- Define and use ADTs for `font-style`, `font-weight`, `font-stretch`, `stroke-linecap`, `stroke-linejoin`, and `stroke-miterlimit` attributes.
- Removed `Util.js` and `Util.purs` files
- `Duration` is now a type alias for a `Record`; use `defaultDuration` and override the needed values
- `DurationF` was dropped
- `Halogen.SVG.Core` was dropped. `element` and `attribute` were reimplemented with correct Halogen wrappers.

New Features:
- Add support for `use` element and its attributes
- Add support for `polyline` element and its attributes
- Add support for `polygon` element and its attributes

Other improvements:
- Add visual testing setup (but not many visual tests yet)
- Updated package set to latest version
- Updated dependencies as tracked via Spago
- Reformatted code to a consistent style
- Created separate files for each ADT
- All ADTs now have Show and Eq instances

## [v4.0.0](https://github.com/JordanMartinez/purescript-halogen-svg-elems/releases/tag/v4.0.0) - 2021-07-22

- Added Named color
- Reworked the IProps rows to only allow valid SVG usage
- Fixed path printing

## [v3.0.0](https://github.com/JordanMartinez/purescript-halogen-svg-elems/releases/tag/v3.0.0) - 2021-03-17

- Capitalize name in repo URL in bower.json file

## [v2.0.2](https://github.com/JordanMartinez/purescript-halogen-svg-elems/releases/tag/v2.0.2) - 2020-10-06

- Fix the shadowed name compiler warnings

## [v2.0.1](https://github.com/JordanMartinez/purescript-halogen-svg-elems/releases/tag/v2.0.1) - 2020-07-04

- Minor change: Added "use strict"; to Utils.js

## [v2.0.0](https://github.com/JordanMartinez/purescript-halogen-svg-elems/releases/tag/v2.0.0) - 2020-07-02

Breaking changes from statebox's version:
- added Halogen. prefix in front of all modules here for readability/findability
- migrated to Spago

Other changes:
- cleaned up some syntax by using case _ of rather than duplicating function name

## [v0.1.0](https://github.com/JordanMartinez/purescript-halogen-svg-elems/releases/tag/v0.1.0) - 2018-06-01

## [v0.0.4](https://github.com/JordanMartinez/purescript-halogen-svg-elems/releases/tag/v0.0.4) - 2018-06-01

## [v0.0.3](https://github.com/JordanMartinez/purescript-halogen-svg-elems/releases/tag/v0.0.3) - 2018-03-13

## [v0.0.2](https://github.com/JordanMartinez/purescript-halogen-svg-elems/releases/tag/v0.0.2) - 2018-02-14
