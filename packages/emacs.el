(use-package emacs
  :defer t
  :bind
  (:map
    cider-key

    ("g g" . evil-goto-definition))
  (:map
    main-key

    ("SPC"       . helm-M-x)

    ;; == WINDOW == 
    ("w 2" . split-window-horizontally)
    ("w /" . split-window-vertically)
    ("w l" . windmove-right)
    ("w h" . windmove-left)
    ("w k" . windmove-up)
    ("w j" . windmove-dowj)
    ("w d" . delete-window)


    ;; == BUFFER == 
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
		 ".html#resource")))))
  :config
  (map!
    :leader
    (:prefix-map 
      ("b" . "buffer")
      :desc "Switch workspace buffer" "B" #'persp-switch-to-buffer
      :desc "Switch buffer"           "b" #'helm-buffers-list)))
