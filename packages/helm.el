(use-package helm-frame-center
  :load-path "~/.emacs.d/plugins/helm-frame-center"
  :config)

(use-package helm :ensure t
  :config
  (setq helm-display-function 'my-helm-display-frame-center
	helm-display-buffer-reuse-frame t
	helm-use-undecorated-frame-option t)
  :bind
  (([f1] . helm-imenu)
   ([f3] . helm-for-files)

   :map main-key
   ("h r" . helm-do-ag-project-root)
   ("f f" . helm-find-files)
   :map helm-find-files-map
   ("<tab>" . helm-execute-persistent-action))
  :init
  (helm-mode 1))


