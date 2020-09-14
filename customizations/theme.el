(deftheme theme)

(let ((color-1 "#5e5e5e")  ;;Grey
      (color-2 "#000000")  ;;Black
      (color-3 "#00ff00")  ;;Green
      (color-4 "#ff0000")) ;;Red
  (custom-theme-set-faces
   'theme
   `(cursor                       ((t :background ,color-4)))
   `(powerline-active1            ((t :foreground ,color-3)))
   `(mode-line                    ((t :foreground ,color-3 :box        ,color-1)))
   `(default                      ((t :foreground ,color-3 :background ,color-2 :family "Terminus (TTF) Medium")))
   `(eval-sexp-fu-flash           ((t :background ,color-3 :foreground ,color-2)))
   `(powerline-active2            ((t :foreground ,color-3 :background ,color-2)))
   `(helm-selection               ((t :foreground ,color-1 :background ,color-2)))
   `(region                       ((t :foreground ,color-4 :background ,color-2)))
   `(dired-header                 ((t :foreground ,color-1 :background ,color-2)))
   `(powerline-inactive1          ((t :foreground ,color-1 :background ,color-2)))
   `(mode-line-inactive           ((t :foreground ,color-1 :background ,color-2)))
   `(helm-source-header           ((t :foreground ,color-1 :background ,color-2)))
   `(lazy-highlight               ((t :foreground ,color-4 :background ,color-2)))
   `(header-line                  ((t :background ,color-2 :foreground ,color-1)))
   `(fringe                       ((t :background ,color-2)))
   `(highlight                    ((t :background ,color-2)))

   `(avy-lead-face                ((t :foreground ,color-4 :background ,color-2)))
   `(avy-lead-face-0              ((t :foreground ,color-4 :background ,color-2)))
   `(avy-lead-face-1              ((t :foreground ,color-4 :background ,color-2)))
   `(avy-lead-face-2              ((t :foreground ,color-4 :background ,color-2)))
   `(avy-lead-face-2              ((t :foreground ,color-4 :background ,color-2)))
   `(avy-lead-face-2              ((t :foreground ,color-4 :background ,color-2)))
   `(avy-background-face          ((t :foreground ,color-1)))

   `(show-paren-match                ((t :foreground ,color-2 :background ,color-4)))

   `(font-lock-doc-face           ((t :foreground ,color-1)))
   `(font-lock-builtin-face       ((t :foreground ,color-1)))
   `(font-lock-negation-char-face ((t :foreground ,color-1)))
   `(font-lock-constant-face      ((t :foreground ,color-1)))
   `(font-lock-reference-face     ((t :foreground ,color-1)))
   `(font-lock-preprocessor-face  ((t :foreground ,color-1)))
   `(font-lock-function-name-face ((t :foreground ,color-1)))
   `(font-lock-keyword-face       ((t :foreground ,color-1)))
   `(font-lock-string-face        ((t :foreground ,color-1)))
   `(font-lock-variable-name-face ((t :foreground ,color-1)))
   `(font-lock-comment-face       ((t :foreground ,color-1)))
   `(font-lock-type-face          ((t :foreground ,color-1)))
   `(link                         ((t :foreground ,color-1)))))

(provide-theme 'theme)
