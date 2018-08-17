(global-set-key (kbd "C-c f") 'find-name-dired)
(global-set-key (kbd "C-c g") 'grep-find)
(global-set-key (kbd "C-c m") 'multi-term)

(require 'gtags)
(global-set-key "\M-t" 'gtags-find-tag)
(global-set-key "\M-r" 'gtags-find-rtag)
(global-set-key "\M-s" 'gtags-find-symbol)
(global-set-key "\C-t" 'gtags-pop-stack)
