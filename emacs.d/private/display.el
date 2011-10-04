;; current line highlight
(global-hl-line-mode 1)
(set-face-background 'hl-line "#383737")

;; no blinking cursor
(if (fboundp 'blink-cursor-mode)
    (blink-cursor-mode 0))

;; set the cursor type
(setq default-cursor-type 'box)

(set-frame-font "-apple-Bitstream_Vera_Sans_Mono-medium-r-normal--14-130-72-72-m-130-iso10646-1")

(add-to-list 'default-frame-alist '(background-color . "black"))
