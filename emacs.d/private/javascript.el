(defvar tonini-karma-command "karma"
  "The command for karma start.")

(defun tonini-start-karma-server (config)
  (compile (format "%s start %s" tonini-karma-command config)))

(defun tonini-start-karma-server-i ()
  (interactive)
  (tonini-start-karma-server "karma.coffee"))

(defun tonini-jasmine-node-run-single-file (filename)
  (compile (format "%s %s" "jasmine-node" filename)))

(defun tonini-javascript-mode-hook ()
  (when (and buffer-file-name (string-match "_spec.js$" buffer-file-name))
  (setq cabbage-testing-execute-function 'tonini-jasmine-node-run-single-file)))
(add-hook 'js-mode-hook 'tonini-javascript-mode-hook)
