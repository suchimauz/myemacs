(use-package visual-fill-column :ensure t
  :commands 
  visual-fill-column-mode

  :init
  (add-hook 'prog-mode-hook 'visual-fill-column-mode))
