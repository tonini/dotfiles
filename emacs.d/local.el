(defun tonini-load-private-setup ()
  (load (concat (expand-file-name "~/.emacs.d/private/cua-mode")))
  (load (concat (expand-file-name "~/.emacs.d/private/org-mode")))
  (load (concat (expand-file-name "~/.emacs.d/private/bindings")))
  (load (concat (expand-file-name "~/.emacs.d/private/display")))

  (setq rspec-use-bundler-when-possible t))

(add-hook 'e-max-initialized-hook 'tonini-load-private-setup)
