(use-package github-dark
  :defer t
  :init
  (load-file
   "~/.emacs.d/customizations/themes/github-dark/github-dark-theme.el")
  (load-theme 'github-dark t)
  (set-face-attribute 'default nil :height 160))
