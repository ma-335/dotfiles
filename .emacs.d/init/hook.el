(add-hook 'lisp-mode-hook '(lambda () (local-set-key (kbd "RET") 'newline-and-indent)))
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;; sh-mode
(defun setup-sh-mode-indent ()
  "My own personal preferences for `sh-mode'."
  (interactive)
  (setq sh-basic-offset 2
        sh-indentation 2
        sh-indent-for-case-label 0
        sh-indent-for-case-alt '+))

(add-hook 'sh-mode-hook 'setup-sh-mode-indent)

;;; scala
(require 'scala-mode-auto)
