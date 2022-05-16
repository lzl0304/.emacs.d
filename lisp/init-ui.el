;;主题配置
;;(require 'atom-one-dark-theme)
;;(require 'dracula-theme)
;; (require 'molokai-theme)
(load-theme 'molokai t)

;;设置标题栏显示文件路径
(defun frame-title-string ()
  "Return the file name of current buffer, using ~ if under home directory"
  (let
      ((fname (or
               (buffer-file-name (current-buffer))
               (buffer-name)))
       (max-len 100))
    (when (string-match (getenv "HOME") fname)
      (setq fname (replace-match "~" t t fname)))
    (if (> (length fname) max-len)
        (setq fname
              (concat "..."
                      (substring fname (- (length fname) max-len)))))
    fname))
;; (setq frame-title-format '("Emacs@"(:eval (frame-title-string))))
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))

;;关闭Emacs启动画面
(setq inhibit-startup-message t)

;;关闭gnus启动时的画面
(setq gnus-inhibit-startup-message t)

;;不显示工具栏
(tool-bar-mode nil)

;;不显示菜单栏
(menu-bar-mode nil)

;;不显示滚动条，用鼠标滚轮代替
(set-scroll-bar-mode nil)

;; 显示时间
(setq display-time-mode t)

;;时间格式
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-interval 10)

;;将Emacs的滚动方式设置为平滑滚动
(setq scroll-step 1
      scroll-margin 5
      scroll-conservatively 9999)

;;编码设置
(set-language-environment 'UTF-8) 
(set-locale-environment "UTF-8") 
(set-default-coding-systems 'utf-8)

;;字体设置
(set-frame-font "Fira Code 12" nil t)

(provide 'init-ui)
