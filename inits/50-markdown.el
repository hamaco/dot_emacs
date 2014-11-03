(add-to-list 'auto-mode-alist '("\\.md" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.markdown" . gfm-mode))

(add-hook 'visual-line-mode-hook
          '(lambda()
             (setq word-wrap nil)))
