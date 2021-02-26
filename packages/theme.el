(use-package gruvbox-theme :ensure t

  :config
  (load-theme 'gruvbox-dark-hard t)
  (set-frame-font "-xos4-terminus-medium-r-normal--12-*-72-72-c-60-iso10646-1")

  :bind
  (:map main-key
	("v f l" . (lambda ()
		     (interactive)
		     (set-frame-font "-xos4-terminus-medium-r-normal--12-*-72-72-c-60-iso10646-1")))
	("v f h" . (lambda ()
		     (interactive)
		     (set-frame-font "-xos4-terminus-medium-r-normal--16-140-72-72-c-80-iso10646-1")))))
