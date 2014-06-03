; (require 'auto-save-buffers-enhanced)

(setq auto-save-buffers-enhanced-interval 0.5)
(setq auto-save-buffers-enhanced-exclude-regexps '("COMMIT_EDITMSG"))
(auto-save-buffers-enhanced t)
