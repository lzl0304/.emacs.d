;; (require-package 'pip-requirements)

(add-to-list 'auto-mode-alist (cons "\\.py$" 'python-mode))

(setq python-shell-interpreter "python3")

(provide 'init-python-mode)