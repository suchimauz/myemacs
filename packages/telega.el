(use-package telega :defer t
  :commands (telega)

  :load-path
  "~/.emacs.d/plugins/telega.el"

  :config
  (require 'telega-mnz)
  (setq
   telega-use-images        t
   telega-emoji-font-family 'noto-emoji
   telega-chat-show-deleted-messages-for '(not saved-messages))
  (telega-notifications-mode 1)
  (global-telega-mnz-mode 1)

  :bind
  (:map main-key
	;; Main
	("t d" . telega)

	("t m c" . telega-mnz-chatbuf-attach-code)

	;; Edit
	("t e p" . telega-chatbuf-edit-prev)

	;; Chat Attach 
	("t a c" . telega-chatbuf-attach-clipboard)
	("t a p" . telega-chatbuf-attach-photo)
	("t a v" . telega-chatbuf-attach-voice-note)
	("t a m" . telega-chatbuf-attach-media)))
