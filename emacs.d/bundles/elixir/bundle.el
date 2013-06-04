(cabbage-vendor 'elixir-mode-setup)
(require 'elixir-mode-setup)
(elixir-mode-setup)

(defun cabbage-elixir-mode-hook ()
  (cabbage--set-pairs '("(" "{" "[" "\"" "\'" "|"))

  (defun cabbage-elixir-run-single-file (filename)
    (compile (format "%s %s" elixir-compiler-command filename)))

  (when (and buffer-file-name (string-match "_test.exs$" buffer-file-name))
    (setq cabbage-testing-execute-function 'cabbage-elixir-run-single-file)))

(add-hook 'elixir-mode-hook 'cabbage-elixir-mode-hook)
