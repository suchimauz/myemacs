(require 'package)

(defun defpackages (directory paths)
  (dolist (path paths)
    (load-file (expand-file-name path directory))))

(let ((gc-cons-threshold most-positive-fixnum)
      (file-name-handler-alist nil))

  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
  (package-initialize)
  (unless package-archive-contents
    (package-refresh-contents))
  (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

  (defpackages "~/.emacs.d/packages/"
    '(;;===[EDITING]===
      "evil.el"                 ;; Emulates the main features of Vim
      "company.el"              ;; Text completion framework
      "paredit.el"              ;; Minor mode for performing structured editing of S-expression data
      "yasnippet.el"            ;; Template system for abbreviation and automatically expand it into function templates.
      "company-statistics.el"   ;; Keep a log of a certain number of completions choose

      ;;===[NAVIGATION]===
      "avy.el"                  ;; Jumping to visible text using a char-based decision tree
      "winum.el"                ;; Navigate windows and frames using numbers
      "helm-ag.el"              ;; Regexp instead of PCRE as pattern
      "ace-window.el"           ;; Split frames

      ;;===[EMULATES]===
      "psql.el"                 ;; Interface to PostgreSQL
      "http.el"                 ;; HTTP client
      "telega.el"               ;; Telegram Desktop

      ;;===[VISUAL]===
      "theme.el"                ;; User theme
      "rainbow-identifiers.el"  ;; Colors variables
      "visual-fill-column.el"   ;; Visual limit on the number of columns

      ;;===[CLOJURE]===
      "cider.el"                ;; Support for interactive programming in Clojure
      "clojure-mode.el"         ;; Clojure font-lock, indentation, navigation and refactoring
      ))

  (setq-default
   mode-line-format
   (list " [" '(:eval (winum-get-number-string))          "]"
	 " [" 'mode-line-buffer-identification            "]"
	 " [" '(:eval (format-time-string "%d.%m.%Y %T")) "]"
	 " [" "%l:%c"                                     "]")))
