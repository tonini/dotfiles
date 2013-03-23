;; no blinking cursor
(if (fboundp 'blink-cursor-mode)
    (blink-cursor-mode 0))

;; (add-to-list 'default-frame-alist '(background-color . "black"))

(custom-set-faces
 '(flymake-errline ((((class color)) (:background "red"))))
 '(flymake-warnline ((((class color)) (:background "yellow")))))

;; set the cursor type
(setq default-cursor-type 'box)

(set-frame-font "-apple-Source_Code_Pro-medium-r-normal--13-130-72-72-m-130-iso10646-1")

;; start in full-screen mode
(ns-toggle-fullscreen)
(tool-bar-mode -1)
