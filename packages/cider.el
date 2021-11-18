(use-package cider :ensure t

  :config
  (setq cider-repl-pop-to-buffer-on-connect  nil
	nrepl-log-messages                   nil
	cider-auto-select-test-report-buffer nil
	cider-auto-select-error-buffer       nil
	cider-dynamic-indentation            nil)
  :bind
  (:map cider-key
	;; Find
	("s f v" . cider-find-var)
	;; Jack in
	("s j j" . cider-jack-in-clj)
	("s j s" . cider-jack-in-cljs)
	("s j c" . cider-jack-in-cljs)
	;; Connect
	("s c j" . cider-connect-clj)
	("s c s" . cider-connect-cljs)
	("s c c" . cider-connect-clj&cljs)
	;; Eval
	("e p" . cider-eval-sexp-at-point)
	("e b" . cider-eval-buffer)
	("e e" . cider-eval-last-sexp)

	;; Print
	("f p" . cider-pprint-eval-last-sexp)
	;; Tests
	("t n" . cider-test-run-ns-tests)
	("t c" . cider-test-run-test)))
