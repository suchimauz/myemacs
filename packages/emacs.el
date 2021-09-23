(use-package emacs
  :defer t
  :bind
  (:map
   main-key

   ("SPC"       . helm-M-x)

   ;; == WINDOW == 
   ("w 2" . split-window-horizontally)
   ("w -" . split-window-vertically)
   ("w l" . windmove-right)
   ("w h" . windmove-left)
   ("w k" . windmove-up)
   ("w j" . windmove-down)


   ;; == BUFFER == 
   ("b b" . helm-buffers-list)
   ("l e" . eval-buffer)

   ("d l" . display-line-numbers-mode)

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
