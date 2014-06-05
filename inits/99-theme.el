;; for tango-dark

;; magit.el
(eval-after-load 'magit
                 '(progn
                    (set-face-background 'magit-item-highlight "#2e3436")
                    (set-face-foreground 'magit-diff-add "#b9ca4a")
                    (set-face-foreground 'magit-diff-del "#d54e53")))
