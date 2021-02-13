(use-package telega :defer t

  :load-path
  "~/.emacs.d/plugins/telega.el"

  :commands
  (telega)

  :bind
  (:map main-key
	;; Main
	("t d" . telega)

	;; Edit
	("t e p" . telega-chatbuf-edit-prev)

	;; Chat Attach 
	("t a c" . telega-chatbuf-attach-clipboard)
	("t a p" . telega-chatbuf-attach-photo)
	("t a v" . telega-chatbuf-attach-voice-note)
	("t a m" . telega-chatbuf-attach-media)
	))
