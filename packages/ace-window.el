;; https://github.com/abo-abo/ace-window
(use-package ace-window :ensure t

  :bind
  (:map main-key
	("w /"       . split-window-horizontally)
	("w -"       . split-window-vertically)
	("w <right>" . windmove-right)
	("w <left>"  . windmove-left)
	("w <up>"    . windmove-up)
	("w <down>"  . windmove-down)))
