(setq display-time-string-forms
      '((propertize (format-time-string "%d.%m.%Y %H:%M" now) 'face 'bold)))
(display-time)
(display-battery-mode)
;(helm-projectile-on)

;(global-flycheck-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(yaml-mode winum use-package page-break-lines magit helm-projectile helm-fuzzy git ghub flycheck doom-themes doom-modeline dashboard company-statistics cider))
 '(safe-local-variable-values '((cider-default-cljs-repl . figwheel-main))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
