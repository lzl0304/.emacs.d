(require-package 'neotree)

(add-to-list 'load-path "~/.emacs.d/site-lisp/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(global-set-key [f7] 'neotree-refresh)

(provide 'init-neotree)
