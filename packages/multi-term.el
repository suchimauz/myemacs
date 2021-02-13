(use-package multi-term :ensure t

  :config
  (setq multi-term-program "/bin/zsh")

  :bind
  (:map main-key
	("w t" . multi-term)))
