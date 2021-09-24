(use-package undo-tree
  :load-path "~/.emacs.d/plugins/undo-tree"
  :init
  (require 'undo-tree)
  (global-undo-tree-mode)
  (evil-set-undo-system 'undo-tree))
