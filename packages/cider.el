(use-package cider
  :ensure t
  :bind  (:map main-key
	       ;; Find
	       ("c f v" . cider-find-var)
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
