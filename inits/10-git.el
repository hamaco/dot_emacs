;; magit
(global-set-key (kbd "C-x g") 'magit-status)

;; git-gutter
(global-git-gutter-mode +1)
(custom-set-variables
  '(git-gutter:modified-sign "  ")  ;; two space
  '(git-gutter:added-sign    "++")  ;; multiple character is OK
  '(git-gutter:deleted-sign  "--"))

(set-face-background 'git-gutter:modified "purple")
(set-face-foreground 'git-gutter:added    "green")
(set-face-foreground 'git-gutter:deleted  "red")
