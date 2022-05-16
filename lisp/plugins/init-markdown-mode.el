(require-package 'markdown-mode)

(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(if (string= system-type "gnu/linux")
        (setq markdown-command "/usr/bin/pandoc")
      (setq markdown-command "D:/Pandoc/pandoc.exe"))

(provide 'init-markdown-mode)