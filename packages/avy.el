;; https://github.com/abo-abo/avy
(use-package avy :ensure t

  :bind
  (([f2] . avy-goto-word-1))

  :config
  (setq
   avy-background t
   avy-keys       (nconc (number-sequence ?a ?z)
			 (number-sequence ?A ?Z)
			 (number-sequence ?1 ?9))))
