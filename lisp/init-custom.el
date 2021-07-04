;;设置用户名和邮件地址
;;(setq user-full-name "liang")
;;(setq user-mail-address "liangzhaolin1994@163.com")

;;工作目录
(setq default-directory "~/Src/")

;;快捷键
(global-set-key [(f1)] 'shell)
(global-set-key [(f5)] 'compile)
(global-set-key [(C-f5)] 'gdb)
(global-set-key [(f9)] 'speedbar)
(global-set-key [(f10)] 'undo)

;;关闭 Emacs 中的警告音
;;(setq ring-bell-function 'ignore)

(provide 'init-custom)
