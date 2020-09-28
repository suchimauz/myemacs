(let ((gc-cons-threshold most-positive-fixnum)
      (file-name-handler-alist nil))

  (eval-when-compile
    (add-to-list 'load-path "~/.emacs.d/plugins/use-package")
    (require 'use-package))

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
  (use-package cider
    :ensure t
    :load-path "~/.emacs.d/plugins/cider")
  (use-package avy
    :ensure t
    :load-path "~/.emacs.d/plugins/avy")
  (use-package ace-window
    :ensure t
    :load-path "~/.emacs.d/plugins/ace-window")
  (use-package paredit
    :ensure t
    :load-path "~/.emacs.d/plugins/paredit"
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
