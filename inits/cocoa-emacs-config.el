(set-frame-parameter (selected-frame) 'alpha 95)

;; font
(set-face-attribute 'default nil
                    :family "Courier"
                    :height 150)
(set-fontset-font
 (frame-parameter nil 'font)
 'japanese-jisx0208
 '("YukarryAA" . "iso10646-1"))
