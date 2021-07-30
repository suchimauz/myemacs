(use-package helm-ag :ensure t

  :bind
  (([f1] . helm-imenu)
   ([f3] . helm-for-files)

   :map main-key
   ("h r" . helm-do-ag-project-root)))
