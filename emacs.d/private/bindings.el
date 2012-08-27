;; compiling
(cabbage-global-set-key (kbd "C-c c") 'mode-compile)
(cabbage-global-set-key (kbd "C-c k") 'mode-compile-kill)

;; org-mode
(cabbage-global-set-key (kbd "C-c t") 'tonini-org-new-project-todo)

;; buffer navigation
(cabbage-global-set-key (kbd "C-ä") 'forward-buffer)
(cabbage-global-set-key (kbd "C-ö") 'backward-buffer)

;; cua-mode
(cabbage-global-set-key (kbd "C-c m") 'cua-mode)
