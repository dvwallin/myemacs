# rust-snippets

Rust snippets for [yasnippet](https://github.com/capitaomorte/yasnippet)

## Requirements

1. Emacs
2. Yasnippet

## Installation

This package should be available through [MELPA](http://melpa.milkbox.net/):

`M-x package-install rust-snippets`

Alternatively, after cloning this repository:

```elisp
(add-to-list 'load-path "<path>/rust-snippets")
(autoload 'rust-snippets/initialize "rust-snippets")
(eval-after-load 'yasnippet
  '(rust-snippets/initialize))
```

