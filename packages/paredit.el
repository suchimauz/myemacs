(use-package paredit
    :ensure t
    :hook   ((clojure-mode . enable-paredit-mode))
    :bind   (:map main-key
		  ("p r" . paredit-raise-sexp)
		  ("p s" . paredit-forward-slurp-sexp)))
