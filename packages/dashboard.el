(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-projects-backend 'projectile
	dashboard-items '((projects . 5)
			  (recents . 5))
	initial-buffer-choice (lambda () (get-buffer "*dashboard*"))
	dashboard-banner-logo-title "Welcome to Suchimauz`s Emacs"
	dashboard-startup-banner "~/.doom.d/banner.txt"
	dashboard-show-shortcuts t
	dashboard-set-heading-icons t
	dashboard-set-file-icons t
	dashboard-set-navigator t
	dashboard-set-init-info t
	dashboard-projects-switch-function 'helm-find-files
	)
  (bind-key "d p" 'dashboard-jump-to-projects     main-key t)
  (bind-key "d r" 'dashboard-jump-to-recent-files main-key t))

