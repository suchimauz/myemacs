(use-package helm-ag :ensure t

  :bind
  (:map main-key
	("h r" . helm-do-ag-project-root)))
