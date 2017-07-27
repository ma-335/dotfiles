(add-hook 'lisp-mode-hook
          '(lambda ()
             (local-set-key (kbd "RET") 'newline-and-indent)
             (linum-mode t)))

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

;; ;;; scala
;; (require 'scala-mode-auto)


;;; web-mode for *.jsx
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))
