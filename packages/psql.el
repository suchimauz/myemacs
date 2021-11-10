(use-package psql
  :load-path "~/.doom.d/plugins/psql"
  :commands  run-psql
  :bind
  (:map main-key
	("e s" . run-sql))
  :init
  (setenv "PGPASSWORD" "postgres"))
