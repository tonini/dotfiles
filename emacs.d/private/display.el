;; no blinking cursor
(if (fboundp 'blink-cursor-mode)
    (blink-cursor-mode 0))

(set-background-color "black")

;; set the cursor type
(setq default-cursor-type 'box)

(set-frame-font "-apple-Bitstream_Vera_Sans_Mono-medium-r-normal--14-130-72-72-m-130-iso10646-1")

;; start in full-screen mode
(ns-toggle-fullscreen)
