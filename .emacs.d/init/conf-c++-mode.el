;;   http://www.emacswiki.org/emacs/CPlusPlusMode
(defun my-c++-mode-hook ()
  (c-set-style "stroustrup")
  (linum-mode)
  (setq c-basic-offset 2)
  (setq tab-width 2))

(add-hook 'c++-mode-hook 'my-c++-mode-hook)

(setq auto-mode-alist (append '(("\\.h$" . c++-mode)) auto-mode-alist))

(require 'clang-format)
(add-hook 'c++-mode-hook
          (lambda () (add-hook 'before-save-hook 'clang-format-buffer nil 'local)))
;; (add-hook 'c-mode-hook
;;           (lambda () (add-hook 'before-save-hook 'clang-format-buffer nil 'local)))
