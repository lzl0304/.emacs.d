(require-package 'yaml-mode)

(add-to-list 'auto-mode-alist (cons "\\.yml\\.erb\\'" 'yaml-mode))
(add-hook 'yaml-mode-hook 'goto-address-prog-mode)

(provide 'init-yaml-mode)