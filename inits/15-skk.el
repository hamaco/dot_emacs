; (require 'info)
; (add-to-list 'Info-additional-directory-list "~/.emacs.d/info")

(require 'skk-autoloads)
(global-set-key (kbd "C-x C-j") 'skk-mode)

; for AquaSKK
(setq skk-server-portnum 1178)
(setq skk-server-host "localhost")


(setq skk-show-inline t)
(setq skk-sticky-key ";")
(setq skk-tut-file "~/.emacs.d/etc/skk/SKK.tut")


(let ((ws window-system))
  (cond
    ;;((eq ws 'w32) (setq skk-large-jisyo ""))
    ((eq ws 'ns) (setq skk-large-jisyo "~/Library/Application Support/AquaSKK/SKK-JISYO.L"))
    ((eq ws 'x) (setq skk-large-jisyo "/usr/share/skk/SKK-JISYO.L"))
    ))
