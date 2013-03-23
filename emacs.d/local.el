(setq tonini--cabbage-private-dir
      (expand-file-name "~/.emacs.d/private/"))

(add-to-list 'cabbage-bundle-dirs (expand-file-name "~/.emacs.d/bundles/"))
(add-to-list 'cabbage-bundle-dirs (expand-file-name "~/Projects/cabbage-contrib/bundles/"))
(add-to-list 'cabbage-vendor-dirs (expand-file-name "~/.emacs.d/vendor/"))
(add-to-list 'cabbage-vendor-dirs (expand-file-name "~/Projects/cabbage-contrib/vendors/"))

(setq tonini-vendor-dir
      (expand-file-name "~/.emacs.d/vendor/"))

;; for loading libraries in from the vendor directory
;; this function is from cabbage (cabbage-vendor)
(defun tonini-vendor (library)
  (let* ((file (symbol-name library))
         (normal (concat tonini-vendor-dir file))
         (suffix (concat normal ".el")))
    (cond
     ((file-directory-p normal)
      (add-to-list 'load-path normal)
      (require library))
     ((file-directory-p suffix)
      (add-to-list 'load-path suffix)
      (require library))
     ((file-exists-p suffix)
      (require library)))))

(require 'package)
(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

(defun tonini-load-private-setup ()
  ;; Load all *.el file under the private directory
  (dolist (file (directory-files tonini--cabbage-private-dir t "\\.el$"))
    (load file))

  (setq rspec-use-bundler-when-possible t))

(add-hook 'cabbage-initialized-hook 'tonini-load-private-setup)
