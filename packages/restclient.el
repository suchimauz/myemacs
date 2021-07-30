(use-package http :ensure t
  :functions restclient-mode
  
  :mode
  ("\\.http\\'" . restclient-mode)

  :bind
  (:map main-key
	("h p" . http-process)))
