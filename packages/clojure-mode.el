(use-package clojure-mode :ensure t

  :bind
  (:map main-key
	("f u" . clojure-unwind-all)
	("f s" . clojure-move-to-let)
	("f a" . clojure-align)
	("f f" . clojure-thread-first-all)
	("f l" . clojure-thread-last-all)))
