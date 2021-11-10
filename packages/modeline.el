(use-package doom-modeline :ensure t
  :config
  (setq doom-modeline-height 10
	doom-modeline-github t
	doom-modeline-github-interval (* 30 60))
  :init 
  (doom-modeline-mode 1))
