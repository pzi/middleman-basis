# Changelog

## v0.5.1

Date: 2015-06-11

Changes:
  - Renamed `_analytics` partial to `_google_analytics`
  - Minor fixes in [README](README.md)

## v0.5.0

Date: 2015-06-04

Changes:
  - Updated all dependencies and the Ruby version
  - Removed jQuery from default setup
  - Removed image `srcset` attribute helper as middleman provides it's own from [v3.3.11](https://github.com/middleman/middleman/blob/v3-stable/CHANGELOG.md#3311)

## v0.4.0

Date: 2015-05-04

Changes:
  - Introduced [Data Files](https://middlemanapp.com/advanced/data_files/) – from now on sitewide information can be stored in `config.yml`. As a bonus, humans.txt data also lives in its yml file (`humans.yml`).
  - Refactored helpers to make use of the data files, too.
  - Meta tag helpers now scream at you, in case you are doing it wrong ;) (thanks @jordanmaguire for the help)
  - Updated README with all the new goodies and information

## v0.3.1

Date: 2015-04-29

Changes:
  - Removed conditional comments around `<html>` tag to move the web forward! The decision to remove conditional comments happened after reading up on it on the [html5-boilerplate](https://github.com/h5bp/html5-boilerplate) repository. Especially https://github.com/h5bp/html5-boilerplate/issues/1290 and https://github.com/h5bp/html5-boilerplate/issues/1187

  **Note:** In case you need to support legacy browsers, commit 571f2d49d82b86c89c00dcb2e42ce3795beab10b shows you how it can be done.
  - Indent size of `[*]` is now 2 spaces (again) – not sure how it got to 4 before :neutral_face:

## v0.3.0

Date: 2015-04-20

Changes:
  - Separated and modularized helpers
  - Improved readme

## v0.2.0

Date: 2015-03-24

Changes:
  - Using middleman-imageoptim properly
  - Fixed: Travis-CI build issues
