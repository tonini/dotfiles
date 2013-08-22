(defun tonini-go-run-current-buffer ()
  (interactive)
  (tonini-go-run-go-file (buffer-file-name)))

(defun tonini-go-run-go-file (filename)
  (when (not (file-exists-p filename))
    (error "The given file doesn't exists."))
  (compile (format "go run %s" filename)))

(defun tonini-go-test-go-file (filename)
  (when (not (file-exists-p filename))
    (error "The given file doesn't exists."))
  (compile (format "go test %s" filename)))

(defun tonini-go-mode-hook ()
  (cabbage--set-pairs '("(" "{" "[" "\"" "\'" "|"))

  (when (and buffer-file-name (string-match "_test.go$" buffer-file-name))
    (setq cabbage-testing-execute-function 'tonini-go-test-go-file))

  (when (cabbage-bundle-active-p 'completion)
    (setq ac-sources '(ac-source-words-in-same-mode-buffers ac-source-yasnippet))

    (when (eq cabbage-completion-framework 'auto-complete)
      (make-local-variable 'ac-ignores)
      (add-to-list 'ac-ignores "end"))))

(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook 'tonini-go-mode-hook)
