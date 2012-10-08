;; no blinking cursor
(if (fboundp 'blink-cursor-mode)
    (blink-cursor-mode 0))

(add-to-list 'default-frame-alist '(background-color . "black"))

;; mode-line customization
(set-face-background 'modeline "#336699")

;; set the cursor type
(setq default-cursor-type 'box)

(set-frame-font "-apple-Source_Code_Pro-medium-r-normal--15-130-72-72-m-130-iso10646-1")

;; start in full-screen mode
(ns-toggle-fullscreen)
(tool-bar-mode -1)
