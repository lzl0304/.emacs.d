(require-package 'company)

(setq tab-always-indent 'complete)
(add-to-list 'completion-styles 'initials t)
(add-hook 'after-init-hook 'global-company-mode)

(provide 'init-company-mode)
