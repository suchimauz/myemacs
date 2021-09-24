(use-package monokai
  :defer t
  :init
  (add-to-list 'default-frame-alist '(font . "Fira Mono for Powerline-14"))
  ;(set-face-attribute 'default t :font "Fira Mono for Powerline" :height 140)
  (load-file
   "~/.emacs.d/customizations/themes/monokai/monokai-theme.el")
  (load-theme 'monokai t))
