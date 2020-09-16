(require 'general)

;; Eval
(general-define-key
 :prefix  "SPC e"
 :keymaps 'override
 :states  '(normal visual)
 "p" 'cider-eval-sexp-at-point
 "b" 'cider-eval-buffer)

;;Repl
(general-define-key
 :prefix  "SPC r"
 :keymaps 'override
 :states  '(normal visual)
 "j" 'cider-jack-in-clj
 "s" 'cider-jack-in-cljs
 "x" 'cider-jack-in-clj&cljs)

;; Search
(general-define-key
 :prefix  "SPC s"
 :keymaps 'override
 :states  '(normal visual)
 "s" 'yas-insert-snippet
 "d" 'find-file
 "f" 'helm-find-files)

(general-define-key
 :prefix  "SPC"
 :keymaps 'override
 :states  '(normal visual)
 "." 'avy-goto-char-timer)

;;Eshell
(general-define-key
 :prefix  "SPC t"
 :keymaps 'override
 :states  '(normal visual)
 "c" 'eshell-command
 "e" 'eshell
 )

;;Window
(general-define-key
 :prefix  "SPC w"
 :keymaps 'override
 :states  '(normal visual)
 "/"        'split-window-horizontally
 "-"        'split-window-vertically
 "<right>"  'windmove-right
 "<left>"   'windmove-left
 "<up>"     'windmove-up
 "<down>"   'windmove-down)

;;File
(general-define-key
 :prefix  "SPC f"
 :keymaps 'override
 :states  '(normal visual)
 "r"      'rename-file)

