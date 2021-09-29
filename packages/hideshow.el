(use-package hideshow 
  :hook 
  ((c-mode-common   . hs-minor-mode)
   (emacs-lisp-mode . hs-minor-mode)
   (clojure-mode    . hs-minor-mode)
   (java-mode       . hs-minor-mode)
   (lisp-mode       . hs-minor-mode)
   (perl-mode       . hs-minor-mode)
   (sh-mode         . hs-minor-mode))
  :bind
  (:map 
    z-key

    ("a"    . hs-hide-block)
    ("z"    . hs-show-block)
    ("h a"  . hs-hide-all)
    ("h z"  . hs-show-all)))
