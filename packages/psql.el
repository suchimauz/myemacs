(use-package psql
  :load-path "~/.emacs.d/plugins/psql"
  :commands  run-psql
  :bind
  (:map main-key
	("e s" . run-sql))
  :init
  (setenv "PGPASSWORD" "postgres"))

(setenv "PGPASSWORD" "postgres")
