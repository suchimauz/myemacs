(require 'package)

(custom-set-variables
 '(package-archives
   '(("melpa" . "http://melpa.org/packages/"))))

(defun defpackages (directory paths)
  (dolist (path paths)
    (load-file (expand-file-name path directory))))

(let ((gc-cons-threshold most-positive-fixnum)
      (file-name-handler-alist nil))

  (package-initialize)
  (unless package-archive-contents
    (package-refresh-contents))
  (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))
  
  (setq-default
   mode-line-format
   (list " " 'mode-line-buffer-identification
	 " " "%l:%c" 
	 " " "Messages:" `((:eval (telega-mode-line-unread-unmuted)))))

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
      "find-file-in-project.el" ;; Find file/directory

      ;;===[EMULATES]===
      "psql.el"                 ;; Interface to PostgreSQL
      "http.el"                 ;; HTTP client
      "telega.el"               ;; Telegram Desktop
      "multi-term.el"           ;; Multi terminal

      ;;===[VISUAL]===
      "theme.el"                ;; User theme

      ;;===[CLOJURE]===
      "cider.el"                ;; Support for interactive programming in Clojure
      "clojure-mode.el"         ;; Clojure font-lock, indentation, navigation and refactoring
      )))
