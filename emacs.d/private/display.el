;; no blinking cursor
(if (fboundp 'blink-cursor-mode)
    (blink-cursor-mode 0))

(add-to-list 'default-frame-alist '(background-color . "#000000"))
(set-cursor-color "#839496")

(set-face-background 'modeline-inactive "black")
(set-face-foreground 'vertical-border "black")
(set-face-background 'vertical-border "black")
(set-frame-parameter nil 'fullscreen 'fullboth)

(custom-set-faces
 '(flymake-errline ((((class color)) (:background "red"))))
 '(flymake-warnline ((((class color)) (:background "yellow"))))
 '(org-hide ((t (:foreground "#073642")))))

(setq default-cursor-type 'box)

(set-frame-font "-apple-Source_Code_Pro-medium-r-normal--13-130-72-72-m-130-iso10646-1")

(tool-bar-mode -1)

;; linum-mode setup
(setq linum-format "%3d ")

(defun tonini-run-after-make-frame-hooks (frame)
  (select-frame frame)
  (set-background-color 'black))

(add-hook 'after-make-frame-functions 'tonini-run-after-make-frame-hooks)

(setq color-theme-is-global nil)
