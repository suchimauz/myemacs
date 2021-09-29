;;; helm-frame-center.el --- Orgmode dynamic bullets -*- lexical-binding: t; -*-

;; Author: Not me 
;; Url: https://github.com/legalnonsense/org-dynamic-bullets
;; Package-Requires: ((emacs "26.1") (org "9.0")
;;
;; Keywords: helm

;; No copyright 

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Display helm buffer in a child frame. 

(require 'helm)

;; I took them from a reddit post.  

;; If using i3, add: `for_window [title=".*Helm.*"] floating enable'
;; to your config. 

(defun my-helm-display-frame-center-wrapper (buffer &optional resume)
  (interactive)
  (let ((x-select-enable-clipboard nil))
    (my-helm-display-frame-center buffer resume)))

(defun my-helm-display-frame-center (buffer &optional resume)
  "Display `helm-buffer' in a separate frame which centeed in
  parent frame."
  (if (not (display-graphic-p))
      ;; Fallback to default when frames are not usable.
      (helm-default-display-buffer buffer)    
    (setq helm--buffer-in-new-frame-p t)
    (let* ((parent (selected-frame))
           (frame-pos (frame-position parent))
           (parent-left (car frame-pos))
           (parent-top (cdr frame-pos))
           (width (/ (frame-width parent) 2))
           (height (/ (frame-height parent) 3))
           tab-bar-mode
           (default-frame-alist
	     (if resume
                 (buffer-local-value 'helm--last-frame-parameters
				     (get-buffer buffer))
	       `((parent . ,parent)
                 (width . ,width)
                 (height . ,height)
                 (undecorated . ,helm-use-undecorated-frame-option)
                 (left-fringe . 10)
                 (right-fringe . 10)
                 (tool-bar-lines . 0)
                 (line-spacing . 0)
                 (internal-border-width . 5)
                 (desktop-dont-save . t)
                 (no-special-glyphs . t)
                 (inhibit-double-buffering . t)
                 (tool-bar-lines . 0)
                 (left . ,(+ parent-left (/ (* (frame-char-width parent) (frame-width parent)) 4)))
                 (top . ,(+ parent-top (/ (* (frame-char-width parent) (frame-height parent)) 1)))
                 (title . "Helm")
                 (vertical-scroll-bars . nil)
                 (menu-bar-lines . 0)
                 (fullscreen . nil)
                 (visible . ,(null helm-display-buffer-reuse-frame))
                 ;; (internal-border-width . ,(if IS-MAC 1 0))
                 )))
           display-buffer-alist)
      (set-face-background 'internal-border (face-foreground 'default))
      (helm-display-buffer-popup-frame buffer default-frame-alist))
    (helm-log-run-hook 'helm-window-configuration-hook)))

(define-minor-mode helm-frame-center-mode
  "Show helm in a frame in the center of the window"
  nil
  " "
  nil
  (if helm-frame-center-mode
      (setq helm-display-function 'my-helm-display-frame-center-wrapper)
    (setq helm-display-function 'helm-default-display-buffer)))

(provide 'helm-frame-center)
