(use-package http :ensure t
  
  :mode
  ("\\.http\\'" . http-mode)

  :bind
  (:map main-key
	("h p" . http-process)))
