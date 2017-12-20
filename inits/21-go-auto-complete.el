(require 'exec-path-from-shell)
(let ((envs '("PATH" "GOPATH")))
  (exec-path-from-shell-copy-envs envs))


(require 'auto-complete-config)
(eval-after-load "go-mode"
  '(progn
     (require 'go-autocomplete)))
