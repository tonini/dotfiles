;; no blinking cursor
(if (fboundp 'blink-cursor-mode)
    (blink-cursor-mode 0))

(set-frame-font "-apple-Source_Code_Pro-medium-r-normal--13-130-72-72-m-130-iso10646-1")

(set-frame-parameter nil 'fullscreen 'fullboth)
(setq default-cursor-type 'box)
(add-to-list 'default-frame-alist '(background-color . "black"))
