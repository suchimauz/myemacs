(use-package helm-frame-center
  :load-path "~/.doom.d/plugins/helm-frame-center")
	   
(use-package helm :ensure t
;;  :config
;;  (setq helm-display-function 'my-helm-display-frame-center
;;	helm-display-buffer-reuse-frame t
;;	helm-use-undecorated-frame-option t)
  :bind
  (([f1] . helm-imenu)
   ([f3] . helm-for-files)

   :map helm-find-files-map
   ("<tab>" . helm-execute-persistent-action))
  :config
  (map! 
    :leader
    :desc "M-x" "SPC" #'execute-extended-command
    (:prefix-map ("f" . "file")
     :desc "Helm Find Files" "f" #'helm-find-files))
  :init
  (helm-mode 1))
