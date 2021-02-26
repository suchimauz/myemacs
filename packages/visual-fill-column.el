(use-package visual-fill-column :ensure t
  :commands 
  visual-fill-column-mode

  :hook
  ((clojure-mode . visual-fill-column-mode)))
