(use-package hideshow 
  :hook 
  ((c-mode-common   . hs-minor-mode)
   (emacs-lisp-mode . hs-minor-mode)
   (clojure-mode    . hs-minor-mode)
   (java-mode       . hs-minor-mode)
   (lisp-mode       . hs-minor-mode)
   (perl-mode       . hs-minor-mode)
   (sh-mode         . hs-minor-mode))
  :config
  (map!
    :map z-key
    :desc "Hide block" "a" #'hs-hide-block
    :desc "Show block" "z" #'hs-show-block
    (:prefix-map
      ("h" . "hide")
      :desc "Hide all blocks" "a" #'hs-hide-all
      :desc "Show all blocks" "z" #'hs-show-all)))
