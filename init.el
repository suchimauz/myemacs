(let ((gc-cons-threshold most-positive-fixnum)
      (file-name-handler-alist nil))

  (require 'package)

  (add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
  (add-to-list 'package-archives '("melpa"        . "http://melpa.org/packages/"))
  (setq package-enable-at-startup nil)
  (package-initialize nil)
  (unless (package-installed-p 'use-package)
    (message "EMACS install use-package.el")
    (package-refresh-contents)
    (package-install 'use-package))

  (use-package evil
    :ensure t
    :functions  evil-mode
    :config
    (evil-mode 1))

  (use-package yasnippet
    :ensure t
    :commands  yas-reload-all
    :hook      ((clojure-mode . yas-minor-mode))
    :config
    (setq yas-snippet-dirs  '("~/.emacs.d/customizations/snippets"))
    (yas-reload-all))

  (use-package paredit
    :ensure t
    :hook      ((clojure-mode . enable-paredit-mode)))

  (use-package xclip
    :ensure t
    :config (xclip-mode 1))

  (use-package company
    :ensure t
    :hook ((after-init-hook . global-company-mode)))

  (use-package company-statistics
    :ensure t
    :hook   ((after-init-hook . company-statistics-mode)))

  (use-package cider
    :ensure t)

  (use-package avy 
    :ensure t)

  (use-package ace-window
    :ensure t)
  
  (use-package clojure-mode
    :ensure t)

  (use-package general
    :ensure t)

  (add-to-list 'load-path "~/.emacs.d/customizations")
  (load "keybinding.el")
  (load "psql.el")

  ;;Startup buffer
  (with-current-buffer "*scratch*"
    (insert " Startup time  | " (emacs-init-time) "\n"
	    " Version       | " (replace-regexp-in-string "\n" "" (emacs-version)))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(paredit ace-window avy cider yasnippet evil xclip general company-statistics clojure-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
