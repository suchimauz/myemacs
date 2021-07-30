(require 'package)


(defun defpackages (directory paths)
  (dolist (path paths)
    (load-file (expand-file-name path directory))))

(setq package-archives
      '(("gnu"   . "http://elpa.gnu.org/packages/")
	("melpa" . "http://melpa.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(defpackages "~/.emacs.d/packages/"
  '(;;===[EDITING]===
    "evil.el"
    "company.el"
    "paredit.el"
    "yasnippet.el"
    "company-statistics.el"

    ;;== []
    "emacs.el"

    ;;===[NAVIGATION]===
    "avy.el"
    "winum.el"
    "helm-ag.el"

    ;;===[EMULATES]===
    "psql.el"
    "restclient.el"
    ;; "telega.el"

    ;;===[VISUAL]===
    "theme.el"
    "visual-fill-column.el"
    "rainbow-identifiers.el"

    ;;===[CLOJURE]===
    "cider.el"
    "clojure-mode.el"))


(setq-default
 mode-line-format
 (list " [" '(:eval (winum-get-number-string))          "]"
       " [" 'mode-line-buffer-identification            "]"
       " [" '(:eval (format-time-string "%d.%m %T"))    "]"
       " [" "%l:%c"                                     "]"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(cider rainbow-identifiers visual-fill-column github-modern-theme http helm-ag winum avy company-statistics yasnippet paredit company evil use-package))
 '(safe-local-variable-values
   '((cider-clojure-cli-global-options . "-A:test")
     (cider-default-cljs-repl . figwheel-main))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
