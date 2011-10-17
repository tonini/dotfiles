(defvar tonini--org-project-file-path
  (concat e-max-org-files "projects/"))

(defun tonini-org-project-files ()
  (directory-files tonini--org-project-file-path nil "\\.org$"))

(defun tonini-org-projects-chooser ()
  (let ((completing-read-func (if (null ido-mode)
                                  'completing-read
                                'ido-completing-read)))
    (setq project-file
          (funcall completing-read-func
                   "Project: "
                   (tonini-org-project-files)
                   nil
                   t))))

(defun tonini-org-project-file ()
  (find-file (concat tonini--org-project-file-path (tonini-org-projects-chooser)))
  (goto-char (point-min))
  (re-search-forward "^\*\s*.+\n" nil t)
  (newline 1))

(defun tonini-org-new-project-todo ()
  (interactive)
  (org-capture nil "p"))

(setq org-capture-templates
      '(("p" "Project Todo Files" entry (function tonini-org-project-file)
         "** TODO %?\n  %T")))
