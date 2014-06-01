(require 'php-mode)
(require 'smartchr)

;; smartchr
(define-key php-mode-map (kbd ">") (smartchr '(">" " => " " >= ")))
