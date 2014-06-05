(require 'popwin)

(setq display-buffer-function 'popwin:display-buffer)
(setq popwin:popup-window-position 'bottom)

(push '("^\*helm .+\*$"  :regexp t)   popwin:special-display-config)
(push '("COMMIT_EDITMSG" :height 0.3) popwin:special-display-config)
