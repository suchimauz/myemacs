(require 'package)

(defun defpackages (directory paths)
  (dolist (path paths)
    (load-file (expand-file-name path directory))))

(let ((gc-cons-threshold most-positive-fixnum)
      (file-name-handler-alist nil))

  (add-to-list 'package-archives
	       '("melpa" . "http://melpa.org/packages/"))

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
      "telega.el"

      ;;===[VISUAL]===
      "theme.el"
      "visual-fill-column.el"

      ;;===[CLOJURE]===
      "cider.el"
      "clojure-mode.el"))



  (setq-default
   mode-line-format
   (list " [" '(:eval (winum-get-number-string))          "]"
	 " [" 'mode-line-buffer-identification            "]"
	 " [" '(:eval (format-time-string "%d.%m %T"))    "]"
	 " [" "%l:%c"                                     "]")))
