;;编码设置    
(prefer-coding-system        'utf-8)
(setq locale-coding-system   'utf-8)
(set-default-coding-systems  'utf-8)
(set-terminal-coding-system  'utf-8)
(set-keyboard-coding-system  'utf-8)
(set-selection-coding-system 'utf-8)
(setq-default buffer-file-coding-system 'utf-8)

;; Enable helm-gtags-mode
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(add-hook 'asm-mode-hook 'helm-gtags-mode)
(add-hook 'java-mode-hook 'helm-gtags-mode)

;;设置Tab键为空格
(setq-default indent-tabs-mode nil)

;;Tab为4个空格
(setq default-tab-width 4)
(setq indent-tabs-mode nil)
(setq c-default-style "linux")
(setq c-basic-offset 4)
(setq tab-stop-list nil)

;;支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)

;;侧边显示行号
(global-display-line-numbers-mode t)

;;显示列号
(setq column-number-mode t)
(setq line-number-mode t)

;;默认显示80列就换行 
(setq default-fill-column 80)

;;状态栏显示列信息
(setq column-number-mode t)

;;指针不闪
(setq blink-cursor-mode nil)

;;高亮显示要拷贝的内容
(setq transient-mark-mode t)

;;支持emacs和外部程序的拷贝粘贴
(setq transient-mark-mode t)
(setq x-select-enable-clipboard t)

;;开启语法高亮
(setq global-font-lock-mode t)

;;当前行高亮
(setq global-hl-line-mode t)

;;页面平滑滚动
(setq scroll-margin 5
      scroll-conservatively 10000)

;;括号匹配
(setq show-paren-mode t)
(setq show-paren-style 'parentheses)

;;匹配括号高亮
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;自动补全括号
(electric-pair-mode t)
(setq electric-pair-pairs
    '(
        (?\" . ?\")
		(?\{ . ?\})
		(?\' . ?\')))

;;禁止自动生成备份文件
(setq make-backup-files nil)

;;关闭自动保存文件
;;(setq auto-save-default nil)

;;15秒无动作,自动保存
(setq-default auto-save-timeout 15)
;;100个字符间隔, 自动保存
(setq-default auto-save-interval 50)

;;Make
(setq compile-command "make -f makefile")

;;GDB多窗口显示
(setq gdb-many-windows t)

(provide 'init-editing)
