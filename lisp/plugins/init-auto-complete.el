(require-package 'auto-complete)

(setq global-auto-complete-mode t)

;;按下TAB时首先缩进所在行，然后尝试补全
(setq tab-always-indent 'complete)

;;使用自带字典
(ac-config-default)

;; 输入3个字符开始补全
(setq ac-auto-start 3)

(setq ac-delay 0.08)

;;响应时间0.5
(setq ac-auto-show-menu 0.08)

(setq ac-show-menu-immediately-on-auto-complete t)

(setq ac-expand-on-auto-complete t)

(setq ac-stop-flymake-on-completing t)

;;使用增强的popup列表
(setq ac-quick-help-prefer-pos-tip t)

;; quick-help
(setq ac-use-quick-help t)
(setq ac-quick-help-delay 1.0)

(setq ac-dwim t)
(setq ac-trigger-commands
  (cons 'backward-delete-char-untabify ac-trigger-commands))

;; fuzzy
(setq ac-fuzzy-enable t)

;; menu
(setq ac-menu-height 12)
(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue")

;;提示快捷键
(global-set-key "\M-/" 'auto-complete)

(defun ac-linum-workaround ()
  "linum-mode tries to display the line numbers even for the
completion menu. This workaround stops that annoying behavior."
  (interactive)
  (defadvice linum-update (around ac-linum-update-workaround activate)
    (unless ac-completing
      ad-do-it)))

;开启linum时调用
(ac-linum-workaround)

(provide 'init-auto-complete)
