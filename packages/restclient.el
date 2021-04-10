(use-package http :ensure t
  
  :mode
  ("\\.http\\'" . restclient-mode)

  :bind
  (:map main-key
	("h p" . http-process)))
