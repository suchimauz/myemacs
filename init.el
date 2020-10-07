(let ((gc-cons-threshold most-positive-fixnum)
      (file-name-handler-alist nil))

  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
  (setq package-enable-at-startup nil)
  (package-initialize nil)
  (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

  (use-package evil
    :ensure t
    :functions  evil-mode
    :config
    (evil-mode 1)
    (define-prefix-command 'main-key)
    (define-key evil-normal-state-map (kbd "SPC") 'main-key))

  (use-package yasnippet
    :ensure    t
    :commands  yas-reload-all
    :hook      ((clojure-mode . yas-minor-mode))
    :bind      (:map main-key
		     ("y i" . yas-insert-snippet))
    :config
    (setq yas-snippet-dirs  '("~/.emacs.d/customizations/snippets"))
    (yas-reload-all))

  (use-package paredit
    :ensure t
    :hook   ((clojure-mode . enable-paredit-mode))
    :bind   (:map main-key
		  ("p r" . paredit-raise-sexp)
		  ("p s" . paredit-forward-slurp-sexp)))

  (use-package xclip
    :ensure t
    :functions xclip-mode
    :config (xclip-mode 1))

  (use-package company
    :ensure   t
    :commands global-company-mode
    :init 
    (global-company-mode)
    :config
    (setq company-idle-delay            0
	  company-minimum-prefix-length 2))

  (use-package http
    :ensure t
    :mode   ("\\.http\\'" . http-mode)
    :bind   (:map main-key
		  ("h p" . http-process)))

  (use-package company-statistics
    :ensure t
    :commands company-statistics-mode
    :init
    (company-statistics-mode))

  (use-package cider
    :ensure t
    :bind (:map main-key
		;; Jack in
		("c j j" . cider-jack-in-clj)
		("c j s" . cider-jack-in-cljs)
		("c j x" . cider-jack-in-cljs)
		;; Connect
		("c c j" . cider-connect-clj)
		("c c s" . cider-connect-cljs)
		("c c x" . cider-connect-clj&cljs)
		;; Eval
		("e p" . cider-eval-sexp-at-point)
		("e b" . cider-eval-buffer)
		;; Print
		("c p l" . cider-pprint-eval-last-sexp)
		;; Tests
		("c t n" . cider-test-run-ns-tests)))

  (use-package avy 
    :ensure t
    :bind   (:map main-key
	     ("." . avy-goto-char-timer)))

  (use-package ace-window
    :ensure t
    :bind   (:map main-key
		  ("w /" . split-window-horizontally)
		  ("w -" . split-window-vertically)
		  ("w <right>" . windmove-right)
		  ("w <left>" . windmove-left)
		  ("w <up>" . windmove-up)
		  ("w <down>" . windmove-down)))

  (use-package psql
    :load-path "~/.emacs.d/plugins/psql"
    :commands run-psql
    :bind     (:map main-key
		    ("e s" . run-sql))
    :init
    (setenv "PGPASSWORD" "postgres"))

  (use-package helm-ag
    :ensure t
    :bind   (:map main-key
		  ("h r" . helm-do-ag-project-root)
		  ("s d" . find-file)))

  (use-package find-file-in-project
    :ensure t
    :bind   (:map main-key
		  ("f f" . ffip)))

  ;;Startup buffer
  (with-current-buffer "*scratch*"
    (insert " Startup time  | " (emacs-init-time) "\n"
	    " Version       | " (replace-regexp-in-string "\n" "" (emacs-version)))))
