(defun tonini-load-private-setup ()
  (load (concat (expand-file-name "~/.emacs.d/private/defun")))
  (load (concat (expand-file-name "~/.emacs.d/private/bindings")))
  (load (concat (expand-file-name "~/.emacs.d/private/display")))
  (load (concat (expand-file-name "~/.emacs.d/private/org-mode"))))

(add-hook 'e-max-initialized-hook 'tonini-load-private-setup)
