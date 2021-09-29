(use-package helm-ag :ensure t

  :bind
  (("<tab>" . helm-execute-persistent-action)
   ([f1] . helm-imenu)
   ([f3] . helm-for-files)

   :map main-key
   ("h r" . helm-do-ag-project-root)
   ("f f" . helm-find-files)))
