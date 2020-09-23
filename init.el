(let ((gc-cons-threshold most-positive-fixnum)
      (file-name-handler-alist nil))
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

  (package-initialize)
  (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

  (defvar my-packages 
    '(;;Moving
      avy
      ace-window
      dumb-jump 

      ;;Editing
      general
      company
      yasnippet
      evil

      paredit

      ;;Search
      helm

      ;;Clojure
      cider))

  (dolist (p my-packages)
    (unless (package-installed-p p)
      (package-install p)))

  ;; Customization 
  (add-to-list 'load-path "~/.emacs.d/customizations")
  (load "editing.el")
  (load "keybinding.el")

  (setq yas-snippet-dirs '("~/.emacs.d/customizations/snippets"))
  (add-hook 'after-init-hook 'global-company-mode)
  (add-hook 'clojure-mode #'enable-paredit-mode)
(yas-global-mode 1)
(electric-pair-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(use-package helm ace-window general evil cider))
 '(safe-local-variable-values
   '((cider-clojure-cli-global-options . "-A:fig")
     (cider-figwheel-main-default-options . ":dev")
     (cider-default-cljs-repl . figwheel-main)
     (cider-clojure-cli-global-options . "-A:fig:test"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ))
