(let ((gc-cons-threshold most-positive-fixnum)
      (file-name-handler-alist nil))

  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
  (setq package-enable-at-startup nil)
  (package-initialize nil)
  (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

  (defun load-package-file (file)
    (interactive "f")
    "Load a file in current user's configuration directory"
    (load-file (expand-file-name file  "~/.emacs.d/packages/")))


  ;; Supporting Scheme language
  (load-package-file "geiser.el")
  ;; Emulates the main features of Vim
  (load-package-file "evil.el")
  ;; Clojure font-lock, indentation, navigation and refactoring
  (load-package-file "clojure-mode.el")
  ;; Navigate windows and frames using numbers
  (load-package-file "winum.el")
  ;; Template system for abbreviation and automatically expand it into function templates.
  (load-package-file "yasnippet.el")
  ;; Minor mode for performing structured editing of S-expression data
  (load-package-file "paredit.el")
  ;; Copy&paste GUI clipboard from text terminal
  (load-package-file "xclip.el")
  ;; Text completion framework
  (load-package-file "company.el")
  ;; Keep a log of a certain number of completions choose
  (load-package-file "company-statistics.el")
  ;; HTTP client
  (load-package-file "http.el")
  ;; Support for interactive programming in Clojure
  (load-package-file "cider.el")
  ;; Jumping to visible text using a char-based decision tree
  (load-package-file "avy.el")
  ;; Interface to PostgreSQL
  (load-package-file "psql.el")
  ;; Split frames
  (load-package-file "ace-window.el")
  ;; Regexp instead of PCRE as pattern
  (load-package-file "helm-ag.el")
  ;; User theme
  (load-package-file "theme.el")
  ;; Find file/directory
  (load-package-file "find-file-in-project.el")
  ;; Search in line
  (load-package-file "evil-snipe.el")

  ;; Startup buffer
  (with-current-buffer "*scratch*"
    (insert " Startup time  | " (emacs-init-time) "\n"
	    " Version       | " (replace-regexp-in-string "\n" "" (emacs-version)))
    (insert "\n\n Projects:\n")
    (insert "\t")

    (insert-text-button
     "alkona"
     'action (lambda (button)
	       (find-file "~/work/alkona/ui/src/app/core.cljs")))

    (insert "\n\t")
    (insert-text-button
     "cleancss"
     'action (lambda (button)
	       (find-file "~/study/cleancss/src/cleancss/core.clj")))

    (insert "\n\n Packages:")

    (insert "\n\t")
    (insert-text-button
     "org"
     'action (lambda (button)
	       (find-file "~/org.org")))

    (insert "\n\t")
    (insert-text-button
     "postgresql"
     'action (lambda (button)
	       (find-file "~/study/postgresl.sql")))

    (insert "\n\t")
    (insert-text-button
     "http"
     'action (lambda (button)
	       (find-file "~/http.http")))))
