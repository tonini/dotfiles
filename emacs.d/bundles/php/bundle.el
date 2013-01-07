(cabbage-vendor 'php-mode)

(defun tonini-php-run-single-file (filename)
  (compile (format "%s %s" "phpunit" filename)))

(defun tonini-php-mode-hook ()
  (when (and buffer-file-name (string-match "_test.php$" buffer-file-name))
    (setq cabbage-testing-execute-function 'tonini-php-run-single-file)))

(add-hook 'php-mode-hook 'tonini-php-mode-hook)
