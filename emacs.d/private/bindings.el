;; compiling
(e-max-global-set-key (kbd "C-c c") 'mode-compile)
(e-max-global-set-key (kbd "C-c k") 'mode-compile-kill)

;; org-mode
(e-max-global-set-key (kbd "C-c t") 'tonini-org-new-project-todo)

;; buffer navigation
(e-max-global-set-key (kbd "C-ä") 'forward-buffer)
(e-max-global-set-key (kbd "C-ö") 'backward-buffer)

;; cua-mode
(e-max-global-set-key (kbd "C-c m") 'cua-mode)
