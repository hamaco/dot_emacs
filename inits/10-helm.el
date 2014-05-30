(setq helm-ff-transformer-show-only-basename nil)
(setq helm-ls-git-show-abs-or-relative 'relative)

(define-key global-map (kbd "C-;") 'helm-ls-git-ls)
