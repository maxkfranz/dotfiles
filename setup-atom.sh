#!/bin/bash

PKGS="
  atom-beautify
  atom-typescript
  autocomplete-modules
  color-picker
  file-icons
  fold-navigator
  highlight-selected
  isotope-ui
  language-ejs
  linter
  linter-ui-default
  linter-eslint
  linter-jsonlint
  linter-flow
  merge-conflicts
  minimap
  monokai
  busy-signal
  docblockr
  intentions
  refactor
  refactor-javascript
"

apm install $PKGS
