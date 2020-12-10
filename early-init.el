(show-paren-mode 1)

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
(add-hook 'minibuffer-setup-hook #'my-minibuffer-setup-hook)
(add-hook 'minibuffer-exit-hook #'my-minibuffer-exit-hook)

;;Disable delay in showing suggestions.
(setq company-idle-delay 0)

;;Show suggestions after entering two character.
(setq company-minimum-prefix-length 2)

;; Show whitespaces
(setq-default show-trailing-whitespace t)

(setq use-dialog-box nil)
(setq redisplay-dont-pause t)
(setq auto-save-default nil)
(scroll-bar-mode -1)
(setq word-wrap t)
(global-visual-line-mode t)
(defalias 'yes-or-no-p 'y-or-n-p)
(setq x-select-enable-clipboard t)

;;Custom mode-line
(setq-default
 mode-line-format
 (list
  ""
  'mode-line-buffer-identification
  (propertize " %l" 'face '(:foreground "white"))
  ":"
  (propertize "%c " 'face '(:foreground "white"))
  '((:eval
     (cond
      ((buffer-modified-p)
       (propertize "*" 'face '(:foreground "red"))))))))
