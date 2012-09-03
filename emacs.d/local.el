(setq tonini--cabbage-private-dir
      (expand-file-name "~/.emacs.d/private/"))

(defun tonini-load-private-setup ()
  ;; Load all *.el file under the private directory
  (dolist (file (directory-files tonini--cabbage-private-dir t "\\.el$"))
    (load file))

  (setq rspec-use-bundler-when-possible t))

(add-hook 'cabbage-initialized-hook 'tonini-load-private-setup)
