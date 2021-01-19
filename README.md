# EPOCHInput

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://SebastianM-C.github.io/EPOCHInput.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://SebastianM-C.github.io/EPOCHInput.jl/dev)
[![Build Status](https://github.com/SebastianM-C/EPOCHInput.jl/workflows/CI/badge.svg)](https://github.com/SebastianM-C/EPOCHInput.jl/actions)
[![Coverage](https://codecov.io/gh/SebastianM-C/EPOCHInput.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/SebastianM-C/EPOCHInput.jl)
![https://www.tidyverse.org/lifecycle/#experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)

This package can be used to acces the initial conditions of EPOCH simulations from julia by parsing the `input.deck` file.

## Instalation
```
]add EPOCHInput
```

To parse an `input.deck` file, use the `parse_input` function.
```julia
parse_input(file_name)
```

The parser is quite simple for the moment and only accepts simple key-value expressions and key references from previous blocks (such as the `constant` block).

More information about the structure of `input.deck` files can be found in the [EPOCH](https://cfsa-pmw.warwick.ac.uk/mediawiki/index.php/EPOCH:Input_deck) documentation.
