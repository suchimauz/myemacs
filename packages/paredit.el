(use-package paredit :ensure t

  :hook
  ((clojure-mode . enable-paredit-mode))

  :bind
  (:map main-key
	("k r" . paredit-raise-sexp)
	("k s" . paredit-forward-slurp-sexp)
	("k W" . paredit-splice-sexp)))
