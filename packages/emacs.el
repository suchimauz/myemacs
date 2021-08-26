(use-package emacs
  :defer t
  :bind
  (("M-x" . helm-M-x)
   :map
   main-key

   ;; == WINDOW == 
   ("w /"       . split-window-horizontally)
   ("w -"       . split-window-vertically)
   ("w <right>" . windmove-right)
   ("w <left>"  . windmove-left)
   ("w <up>"    . windmove-up)
   ("w <down>"  . windmove-down)


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
