;;Environments
(setenv "PGPASSWORD" "postgres")

(add-to-list 'custom-theme-load-path "~/.emacs.d/customizations/")

;;Add snippets directory
(setq yas-snippet-dirs '("~/.emacs.d/customizations/snippets"))

;;Enable a specific custom theme
(load-theme 'panthevm t)   

;;Disable splash screen
(setq inhibit-startup-message t)

;;Disable startup message
(setq initial-scratch-message nil)

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

;;Enable insert matching delimiters
(electric-pair-mode 1)

;;Disabe minibuffer garbage collector
(defun my-minibuffer-setup-hook ()
  (setq gc-cons-threshold most-positive-fixnum))
(defun my-minibuffer-exit-hook ()
  (setq gc-cons-threshold 800000))

;;Disable delay in showing suggestions.
(setq company-idle-delay 0)

;;Show suggestions after entering two character.
(setq company-minimum-prefix-length 2)

(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'after-init-hook 'company-statistics-mode)

(add-hook 'minibuffer-setup-hook #'my-minibuffer-setup-hook)
(add-hook 'minibuffer-exit-hook #'my-minibuffer-exit-hook)

(add-hook 'clojure-mode #'yas-minor-mode)
(add-hook 'clojure-mode #'enable-paredit-mode)

;;Startup buffer
(with-current-buffer "*scratch*"
  (insert " Startup time  | " (emacs-init-time) "\n"
	  " Version       | " (replace-regexp-in-string "\n" "" (emacs-version))))


