(require 'server)
(unless (server-running-p) (server-start))

(setq load-path
      (append
        (list
          (concat user-emacs-directory "vendor")
          (concat user-emacs-directory "vendor/skk")
          ) load-path))

;; cask
(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")
(cask-initialize)

;; init-loader.el
(defvar init-loader-show-log-after-init nil)
(custom-set-variables '(init-loader-show-log-after-init 'error-only))
(init-loader-load (concat user-emacs-directory "inits"))

;; debug
(global-set-key (kbd "<f12>") 'eval-buffer)
