(use-package lsp-mode
  :ensure t
  :hook ((clojure-mode . lsp)
         (clojurec-mode . lsp)
         (clojurescript-mode . lsp))
  :config
  (setenv "PATH" (concat
                   "/usr/local/bin" path-separator
                   (getenv "PATH")))
  (dolist (m '(clojure-mode
               clojurec-mode
               clojurescript-mode
               clojurex-mode))
     (add-to-list 'lsp-language-id-configuration `(,m . "clojure")))
  (setq lsp-clojure-server-command '("bash" "-c" "/usr/local/bin/clojure-lsp"))
  (setq lsp-enable-file-watchers nil))

(use-package clojure-mode :ensure t
  :bind
  (:map cider-key
	("f u" . clojure-unwind-all)
	("f s" . clojure-move-to-let)
	("f a" . clojure-align)
	("f f" . clojure-thread-first-all)
	("f l" . clojure-thread-last-all))
  :config
  (map!
    :map cider-key
    (:prefix-map
      ("f" . "format")
      :desc "all unwind"       "u" #'clojure-unwind-all
      :desc "move to let"      "s" #'clojure-move-to-let
      :desc "align"            "a" #'clojure-align
      :desc "thread first all" "f" #'clojure-thread-first-all
      :desc "thread last all"  "l" #'clojure-thread-last-all)))

(use-package yaml-mode :ensure t)
