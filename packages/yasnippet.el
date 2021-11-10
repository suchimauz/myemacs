(use-package yasnippet :ensure t

  :commands
  yas-reload-all

  :hook
  ((clojure-mode . yas-minor-mode))

  :bind
  (:map main-key
	("y i" . yas-insert-snippet)
	("y e" . yas-expand))

  :config
  (setq yas-snippet-dirs  '("~/.doom.d/customizations/snippets"))
  (yas-reload-all))
