(add-to-list 'custom-theme-load-path "~/.emacs.d/customizations/")

;;Enable a specific custom theme
(load-theme 'panthevm t)   

;;Disable splash screen
(setq inhibit-startup-message t)

;;Disable startup message
(setq initial-scratch-message nil)

;;Disabe minibuffer garbage collector
(defun my-minibuffer-setup-hook ()
  (setq gc-cons-threshold most-positive-fixnum))
(defun my-minibuffer-exit-hook ()
  (setq gc-cons-threshold 800000))
(add-hook 'minibuffer-setup-hook #'my-minibuffer-setup-hook)
(add-hook 'minibuffer-exit-hook #'my-minibuffer-exit-hook)

;;Disable screen blink 
(setq ring-bell-function 'ignore)

;;Disable file backup
(setq make-backup-files  nil)

;;Disable lock files
(setq create-lockfiles nil)

;;Disable confirmation of opening a symbolic file 
(setq vc-follow-symlinks t)

;;Disable version control
(setq vc-handled-backends nil)

;;Disable menu bar
(menu-bar-mode -1) 

;;Disable scroll bar
(toggle-scroll-bar -1) 

;;Disabel tool bar
(tool-bar-mode -1) 

