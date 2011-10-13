(defvar tonini--org-project-files-path
  (concat "~/Dropbox/org/projects/"))

(defvar tonini--org-project-files
  (directory-files tonini--org-project-files-path nil "\\.org$"))

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
  (concat tonini--org-project-files-path (tonini-org-projects-chooser)))
