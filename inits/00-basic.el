(set-language-environment       'Japanese)
(prefer-coding-system           'utf-8)
(setq inhibit-startup-message t)
(menu-bar-mode 0)
(tool-bar-mode 0)

(setq make-backup-files nil)
(setq delete-auto-save-files t)

;; CommandとAltキー入れ替え
(setq ns-command-modifier (quote meta))
(setq ns-alternate-modifier (quote super))

(setq-default indent-tabs-mode nil)
