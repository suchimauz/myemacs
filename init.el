(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(setq ring-bell-function 'ignore)
(setq make-backup-files  nil)
(setq vc-handled-backends nil)

(defvar my-packages 
  '(cider
    avy
    evil
    company
    yasnippet
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

(add-to-list 'custom-theme-load-path "~/.emacs.d/customizations/")
(setq yas-snippet-dirs '("~/.emacs.d/customizations/snippets"))

(add-hook 'after-init-hook 'global-company-mode)
(load-theme 'panthevm t)
(yas-global-mode 1)
(electric-pair-mode 1)

;;Info
(message "Emacs loaded in %s" (emacs-init-time))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(helm ace-window general evil cider))
 '(safe-local-variable-values
   '((cider-figwheel-main-default-options . ":dev")
     (cider-default-cljs-repl . figwheel-main)
     (cider-clojure-cli-global-options . "-A:fig:test"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
