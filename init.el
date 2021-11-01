(require 'package)
(setq 
  init-packages-list
  '(use-package doom-modeline all-the-icons doom-themes
     ghub project magit git flycheck projectile
     page-break-lines dashboard helm-core helm-projectile))

(defun defpackages (directory paths)
  (dolist (path paths)
    (load-file (expand-file-name path directory))))

(defun init-packages ()
  (dolist (pack init-packages-list)
    (unless (package-installed-p pack)
      (package-refresh-contents)
      (package-install pack))))

(setq package-archives
      '(("gnu"   . "http://elpa.gnu.org/packages/")
	("melpa" . "http://melpa.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(init-packages)

(require 'all-the-icons)
(require 'git)
(require 'helm-projectile)

(defpackages "~/.emacs.d/packages/"
  '(;;===[EDITING]===
    "evil.el"
    "company.el"
    "paredit.el"
    "yasnippet.el"
    "company-statistics.el"
    "hideshow.el"

    ;;== [EMACS]
    "emacs.el"

    ;;===[NAVIGATION]===
    "avy.el"
    "winum.el"
    "helm.el"
    "hl-line-plus.el"
    "undo-tree.el"

    ;;===[EMULATES]===
    "psql.el"
    "restclient.el"

    ;;===[VISUAL]===
    "dashboard.el"
    "theme.el"
    "visual-fill-column.el"
    "modeline.el"

    ;;===[CLOJURE]===
    "cider.el"

    ;;===[LANGUAGES]===
    "mode.el"))

(setq vc-handled-backends '(git))
(setq display-time-string-forms
      '((propertize (format-time-string "%d.%m.%Y %H:%M" now) 'face 'bold))) 
(setq projectile-completion-system 'helm)
(display-time)
(display-battery-mode)
;(helm-projectile-on)
(projectile-mode)

;(global-flycheck-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default))
 '(initial-frame-alist '((fullscreen . maximized)))
 '(package-selected-packages
   '(0blayout dashboard hideshow cider visual-fill-column restclient winum avy company-statistics yasnippet paredit company evil use-package helm))
 '(safe-local-variable-values
   '((cider-clojure-cli-global-options . "-A:test")
     (cider-default-cljs-repl . figwheel-main))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
