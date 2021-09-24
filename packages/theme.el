(use-package monokai
  :defer t
  :init
  (add-to-list
   'default-frame-alist
   '(font
     . "-BE5N-Iosevka Term-normal-normal-expanded-*-20-*-*-*-d-0-iso10646-1"))
  (load-file
   "~/.emacs.d/customizations/themes/monokai/monokai-theme.el")
  (load-theme 'monokai t))
