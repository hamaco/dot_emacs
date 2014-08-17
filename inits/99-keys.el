;; C-hでBackspace
(keyboard-translate ?\C-h ?\C-?)

(global-set-key (kbd "C-l") 'goto-line) ; 指定した行にジャンプ

;; ウィンドウ操作
(global-set-key [S-right] 'split-window-horizontally) ;; 左右に分割する
(global-set-key [S-left]  'split-window-horizontally) ;; 左右に分割する
(global-set-key [S-up]    'split-window-vertically)   ;; 上下に分割する
(global-set-key [S-down]  'delete-other-windows)      ;; 分割の解除

(global-set-key [right] 'windmove-right)              ;; 右のウィンドウに移動
(global-set-key [left]  'windmove-left)               ;; 左のウィンドウに移動
(global-set-key [up]    'windmove-up)                 ;; 上のウィンドウに移動
(global-set-key [down]  'windmove-down)               ;; 下のウィンドウに移動


(require 'sequential-command)
(define-sequential-command seq-home
                           beginning-of-line back-to-indentation)
(global-set-key "\C-a" 'seq-home)


;; ddskk
(global-set-key (kbd "C-x C-j") 'skk-mode)

(add-hook 'dired-load-hook
  (lambda ()
    (load "dired-x")
    (global-set-key (kbd "C-x C-j") 'skk-mode)
    ))

(eval-after-load 'magit
                 '(progn
                    (define-key git-commit-mode-map (kbd "C-j") 'skk-mode)))
