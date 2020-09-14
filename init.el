(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(setq ring-bell-function 'ignore)
(setq make-backup-files  nil)
(setq ns-pop-up-frames nil)
(setq mouse-wheel-progressive-speed nil)

(defvar my-packages 
  '(cider
    evil
    general
    ace-window
    helm))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

;; Customization 
(add-to-list 'load-path "~/.emacs.d/customizations")

(load "editing.el")
(load "keybinding.el")
(load "ui.el")
(load "theme.el")

(message "Emacs loaded in %s" (emacs-init-time))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (helm ace-window general evil cider)))
 '(safe-local-variable-values
   (quote
    ((cider-figwheel-main-default-options . ":dev")
     (cider-default-cljs-repl . figwheel-main)
     (cider-clojure-cli-global-options . "-A:fig:test")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
