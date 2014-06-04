(require 'whitespace)
(setq whitespace-style '(face tabs tab-mark spaces space-mark))
(setq whitespace-display-mappings
  '((space-mark ?\u3000 [?\u25a1])
     (tab-mark ?\t [?\xBB ?\t] [?\\ ?\t])))
(setq whitespace-space-regexp "\\(\u3000+\\)")

(set-face-foreground 'whitespace-tab   "#adff2f")
(set-face-background 'whitespace-tab   'nil)
(set-face-underline  'whitespace-tab   t)
(set-face-foreground 'whitespace-space "#7cfc00")
(set-face-background 'whitespace-space 'nil)
(set-face-bold-p     'whitespace-space t)

(global-whitespace-mode 1)
