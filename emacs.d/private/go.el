(defvar tonini-gocode-location "~/Projects/gocode/src/github.com/tonini/"
  "the location, where your go projects are stored locally.")

(defun tonini-project-ido-go-project ()
  (interactive)
  (let ((project-name (ido-completing-read "Go: "
                                           (directory-files tonini-gocode-location nil "^[^.]"))))
    (cabbage-persp project-name)
    (let ((default-directory (concat tonini-gocode-location project-name)))
      (call-interactively cabbage-project-find-file-function))))
