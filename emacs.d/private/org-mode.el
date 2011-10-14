(defvar tonini--org-project-file-path
  (concat e-max-org-files "projects/"))

(defvar tonini--org-project-files
  (directory-files tonini--org-project-file-path nil "\\.org$"))

(defun tonini-org-projects-chooser ()
  (let ((completing-read-func (if (null ido-mode)
                                  'completing-read
                                'ido-completing-read)))
    (setq project-file
          (funcall completing-read-func
                   "Project: "
                   tonini--org-project-files
                   nil
                   t))))

(defun tonini-org-project-file ()
  (concat tonini--org-project-file-path (tonini-org-projects-chooser)))

(defun tonini-org-new-project-todo ()
  (interactive)
  (org-capture nil "p"))

(setq org-capture-templates
      '(("p" "Project Todo Files" entry (file+regexp (tonini-org-project-file) "^\*\s*.+\n")
         "** TODO %?\n  %T")))
