(use-package evil :ensure t

  :functions
  evil-mode

  :init
  (evil-mode 1)
  (define-prefix-command 'main-key)
  (define-key evil-normal-state-map (kbd "SPC") 'main-key)

  :bind
  (:map
   main-key

   ;; == WINDOW == 
   ("w /"       . split-window-horizontally)
   ("w -"       . split-window-vertically)
   ("w <right>" . windmove-right)
   ("w <left>"  . windmove-left)
   ("w <up>"    . windmove-up)
   ("w <down>"  . windmove-down)


   ;; == BUFFER == 
   ("b b" . buffer-menu)

   ;; == SEARCH ==
   ("s d" . find-file)

   
   ("b s g" .
    (lambda ()
      (interactive)
      (browse-url-firefox
       (concat "https://google.com/search?q="
	       (read-string "Query: ")))))

   ("b s f" .
    (lambda ()
      (interactive)
      (browse-url-firefox
       (concat "http://hl7.org/fhir/"
	       (downcase (read-string "resourceType: "))
	       ".html#resource"))))))
