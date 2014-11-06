(require 'php-mode)

; (add-hook 'php-mode-hook
;           (lambda ()
;             (c-set-offset 'case-label' 4)
;             (c-set-offset 'arglist-intro' 4)
;             (c-set-offset 'arglist-cont-nonempty' 4)
;             (c-set-offset 'arglist-close' 0)))
(add-hook 'php-mode-hook
          (lambda ()
            (setq tab-width 4)
            (setq indent-tabs-mode nil)
            (setq c-basic-offset 4)))

(add-hook 'php-mode-hook
          (lambda ()
            (defun ywb-php-lineup-arglist-intro (langelem)
              (save-excursion
                (goto-char (cdr langelem))
                (vector (+ (current-column) c-basic-offset))))
            (defun ywb-php-lineup-arglist-close (langelem)
              (save-excursion
                (goto-char (cdr langelem))
                (vector (current-column))))
            (c-set-offset 'arglist-intro 'ywb-php-lineup-arglist-intro)
            (c-set-offset 'arglist-close 'ywb-php-lineup-arglist-close)))

;; align
; (add-to-list 'align-rules-list
;              '(php-assignment
;                (regexp . "[^-=!^&*+<>/.| \t\n]\\(\\s-*[.-=!^&*+<>/|]*\\)=>?\\(\\s-*\\)\\([^= \t\n]\\|$\\)")
;                (justify .t)
;                (tab-stop . nil)
;                (modes . '(php-mode))))
; (add-to-list 'align-dq-string-modes 'php-mode)
; (add-to-list 'align-sq-string-modes 'php-mode)
; (add-to-list 'align-open-comment-modes 'php-mode)
; (setq align-region-separate (concat "\\(^\\s-*$\\)\\|"
;                                     "\\([({}\\(/\*\\)]$\\)\\|"
;                                     "\\(^\\s-*[)}\\(\*/\\)][,;]?$\\)\\|"
;                                     "\\(^\\s-*\\(}\\|for\\|while\\|if\\|else\\|"
;                                     "switch\\|case\\|break\\|continue\\|do\\)[ ;]\\)"
;                                     ))
