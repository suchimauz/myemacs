(use-package undo-tree
  :load-path "~/.doom.d/plugins/undo-tree"
  :init
  (require 'undo-tree)
  (global-undo-tree-mode)
  (evil-set-undo-system 'undo-tree))
