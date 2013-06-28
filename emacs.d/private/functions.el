;; There's something similar (but fancier) in vc-git.el: vc-git-grep
;; -I means don't search through binary files
(defcustom git-grep-switches "--extended-regexp -I -n --ignore-case"
  "Switches to pass to `git grep'."
  :type 'string)

(defun git-grep (command-args)
  (interactive
   (list (read-shell-command "Run git-grep (like this): "
                             (format "git grep %s -e "
                                     git-grep-switches)
                             'git-grep-history)))
  (let ((grep-use-null-device nil))
    (grep command-args)))

(defun tonini--open-dirtree-in-project-root ()
  (interactive)
  (if (get-buffer "*dirtree*")
      (kill-buffer dirtree-buffer))
  (dirtree (cabbage-project-root) t))

(defun tonini--toggle-fullscreen ()
  "Toggle full screen"
  (interactive)
  (set-frame-parameter
     nil 'fullscreen
     (when (not (frame-parameter nil 'fullscreen)) 'fullboth)))

(defun tonini-load-elixir-mode-dev ()
  (interactive)
  (progn
    (load-file "~/Projects/emacs-elixir/elixir-smie.el")
    (load-file "~/Projects/emacs-elixir/elixir-mode.el")))
