(setq-default
 ;; Disable splash screen
 inhibit-startup-message t
 ;; Disable startup message
 initial-scratch-message nil
 ;; Disable screen blink
 ring-bell-function 'ignore
 ;; Disable file backup
 make-backup-files  nil
 ;; Disable lock files
 create-lockfiles nil
 ;; Disable autosave
 auto-save-default nil
 ;; Disable confirmation of opening a symbolic file
 vc-follow-symlinks t
 ;; Disable version control
 vc-handled-backends nil
 ;; Disable delay in showing suggestions.
 company-idle-delay 0
 ;; Show suggestions after entering two character.
 company-minimum-prefix-length 2
 ;; Show whitespaces
 show-trailing-whitespace t
 ;; Forcing redisplay
 redisplay-dont-pause t)

;; Abbreviated input of the answer
(defalias 'yes-or-no-p 'y-or-n-p)
;; Hightlight parentheses
(show-paren-mode 1)
;; Disable menu bar
(menu-bar-mode -1)
;; Disable scroll bar move
(scroll-bar-mode -1)
;; Disable scroll bar
(toggle-scroll-bar -1)
;; Disabel tool bar
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
