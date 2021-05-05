(use-package gruvbox-theme
  :ensure t

  :init
  (add-to-list
   'default-frame-alist
   '(font . "-xos4-xos4 Terminus-normal-normal-normal-*-12-*-*-*-c-60-iso10646-1"))

  :config
  (load-theme 'gruvbox-dark-hard t)
  (set-face-attribute 'default nil :height 120)
  (set-frame-font "Terminus (TTF) Medium"))
