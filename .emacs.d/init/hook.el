(add-hook 'lisp-mode-hook '(lambda () (local-set-key (kbd "RET") 'newline-and-indent)))

;; delete trailing whitespace
(add-hook 'c-mode-hook (lambda () (add-to-list 'wtite-file-functions 'delete-trailing-whitespace)))
(add-hook 'ruby-mode-hook (lambda () (add-to-list 'wtite-file-functions 'delete-trailing-whitespace)))
(add-hook 'clojure-mode-hook (lambda () (add-to-list 'wtite-file-functions 'delete-trailing-whitespace)))
(add-hook 'scheme-mode-hook (lambda () (add-to-list 'wtite-file-functions 'delete-trailing-whitespace)))
