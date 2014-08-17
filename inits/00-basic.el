(require 'cl)

(set-language-environment       'Japanese)
(prefer-coding-system           'utf-8)
;(set-buffer-file-coding-system  'utf-8)
;(set-default-coding-systems     'utf-8)
;(set-keyboard-coding-system     'utf-8)
;(set-terminal-coding-system     'utf-8)
;(set-selection-coding-system    'utf-8)
;(setq file-name-coding-system   'utf-8)
;(setq buffer-file-coding-system 'utf-8)

(setq inhibit-startup-message t) ;; スタートアップメッセージを表示しない
(menu-bar-mode 0)
(tool-bar-mode 0)

(setq make-backup-files nil)
(setq delete-auto-save-files t)

;; CommandとAltキー入れ替え
(setq ns-command-modifier (quote meta))
(setq ns-alternate-modifier (quote super))

(setq-default indent-tabs-mode nil)
