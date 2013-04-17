;; no blinking cursor
(if (fboundp 'blink-cursor-mode)
    (blink-cursor-mode 0))

(add-to-list 'default-frame-alist '(background-color . "#002b36"))
(set-face-background 'region "#073642")
(set-cursor-color "#839496")

(custom-set-faces
 '(flymake-errline ((((class color)) (:background "red"))))
 '(flymake-warnline ((((class color)) (:background "yellow"))))
 '(org-hide ((t (:foreground "#073642")))))

;; set the cursor type
(setq default-cursor-type 'box)

(set-frame-font "-apple-Source_Code_Pro-medium-r-normal--13-130-72-72-m-130-iso10646-1")

;; start in full-screen mode
(ns-toggle-fullscreen)
(tool-bar-mode -1)

;; linum-mode setup
(setq linum-format "%3d ")
