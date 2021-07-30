(use-package visual-fill-column :ensure t
  :commands 
  visual-fill-column-mode

  :init
  (setq visual-fill-column-width 79)
  (add-hook 'prog-mode-hook 'visual-fill-column-mode)

  :bind
  (:map main-key
	("v f" . visual-fill-column-mode)))
