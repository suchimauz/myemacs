(use-package company :ensure t
  :commands
  global-company-mode
  :init
  (global-company-mode)
  :config
  (setq company-idle-delay            0
	company-minimum-prefix-length 2))
