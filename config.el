;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "suchimauz"
      user-mail-address "alexey.fedulov98@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;;(setq doom-theme 'doom-monokai-classic)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type nil)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;

(require 'package)

(setq package-archives
      '(("gnu"   . "http://elpa.gnu.org/packages/")
	("melpa" . "http://melpa.org/packages/")))

;;(setq 
;;  init-packages-list
;;  '(use-package doom-modeline all-the-icons doom-themes
;;   ghub project magit git flycheck projectile
;;   page-break-lines helm-core helm-projectile winum yaml-mode))

(defun defpackages (directory paths)
  (dolist (path paths)
    (load! path directory)))

;;(defun init-packages ()
;;(dolist (pack init-packages-list)
;;  (unless (package-installed-p pack)
;;    (package-refresh-contents)
;;    (package-install pack))))

;(package-initialize)
;;(unless package-archive-contents
;;  (package-refresh-contents))
;;(init-packages)

(defun suchimauz-banner ()
    (let* ((banner
	     '("     ___         ___         ___         ___                   ___         ___         ___         ___      "
	       "    /\\  \\       /\\__\\       /\\  \\       /\\__\\        ___      /\\__\\       /\\  \\       /\\__\\       /\\  \\     "
	       "   /::\\  \\     /:/  /      /::\\  \\     /:/  /       /\\  \\    /::|  |     /::\\  \\     /:/  /       \\:\\  \\    "
	       "  /:/\\ \\  \\   /:/  /      /:/\\:\\  \\   /:/__/        \\:\\  \\  /:|:|  |    /:/\\:\\  \\   /:/  /         \\:\\  \\   "
	       " _\\:\\~\\ \\  \\ /:/  /  ___ /:/  \\:\\  \\ /::\\  \\ ___    /::\\__\\/:/|:|__|__ /::\\~\\:\\  \\ /:/  /  ___      \\:\\  \\  "
	       "/\\ \\:\\ \\ \\__/:/__/  /\\__/:/__/ \\:\\__/:/\\:\\  /\\__\\__/:/\\/__/:/ |::::\\__/:/\\:\\ \\:\\__/:/__/  /\\_________\\:\\__\\ "
	       "\\:\\ \\:\\ \\/__\\:\\  \\ /:/  \\:\\  \\  \\/__\\/__\\:\\/:/  /\\/:/  /  \\/__/~~/:/  \\/__\\:\\/:/  \\:\\  \\ /:/  \\::::::::/__/ "
	       " \\:\\ \\:\\__\\  \\:\\  /:/  / \\:\\  \\          \\::/  /\\::/__/         /:/  /     \\::/  / \\:\\  /:/  / \\:\\~~\\~~     "
	       "  \\:\\/:/  /   \\:\\/:/  /   \\:\\  \\         /:/  /  \\:\\__\\        /:/  /      /:/  /   \\:\\/:/  /   \\:\\  \\      "
	       "   \\::/  /     \\::/  /     \\:\\__\\       /:/  /    \\/__/       /:/  /      /:/  /     \\::/  /     \\:\\__\\     "
	       "    \\/__/       \\/__/       \\/__/       \\/__/                 \\/__/       \\/__/       \\/__/       \\/__/     "
	       ""
	       "                                                 E M A C S                                                  "
	       "                                                by suchimauz                                                "))
	   (longest-line (apply #'max (mapcar #'length banner))))
      (put-text-property
	(point)
	(dolist (line banner (point))
	  (insert (+doom-dashboard--center
		    +doom-dashboard--width
		    line)
		  "\n"))
	'face 'doom-dashboard-banner)))

(setq +doom-dashboard--width 140)
(setq +doom-dashboard-ascii-banner-fn #'suchimauz-banner)

(defpackages "~/.doom.d/packages/"
  '(;;===[EDITING]===
    "evil"
    "paredit"

    ;;== [EMACS]
    "emacs"

    ;;===[NAVIGATION]===
    "helm"
    "hl-line-plus"
    "winum"
    "undo-tree"

    ;;===[EMULATES]===
    ;"helm"
    "psql"
    "restclient"

    ;;===[VISUAL]===
    "theme"
    "visual-fill-column"

    ;;===[CLOJURE]===
    "cider"

    ;;===[LANGUAGES]===
    ;;"mode"
    ))

(after! cider
  (advice-remove 'cider-eval-last-sexp 'evil-collection-cider-last-sexp)
  (advice-remove 'cider-eval-last-sexp-and-replace 'evil-collection-cider-last-sexp)
  (advice-remove 'cider-eval-last-sexp-to-repl 'evil-collection-cider-last-sexp))
