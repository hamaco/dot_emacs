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


;; theme
(load-theme 'tango-dark t t)
(enable-theme 'tango-dark)


;; init-loader.el
(defvar init-loader-show-log-after-init nil)
(init-loader-load (concat user-emacs-directory "inits"))

(if (not (equal (init-loader-error-log) ""))
  (init-loader-show-log))


;; debug
(global-set-key (kbd "<f12>") 'eval-buffer)
