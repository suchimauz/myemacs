(menu-bar-mode -1) 
(toggle-scroll-bar -1) 
(tool-bar-mode -1) 

(set-face-attribute 'default nil :family "Terminus (TTF) Medium" :height 90)
(set-frame-font "Terminus (TTF) Medium"  nil t)

(let ((filename "~/.emacs.d/startup.txt"))
  (when (file-exists-p filename)
    (setq initial-buffer-choice filename)))
