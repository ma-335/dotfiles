;; flymake
(defun my-flymake-show-next-error()
  (interactive)
  (flymake-goto-next-error)
  (flymake-display-err-menu-for-current-line))

;; Setting some C / C++ defaults
(add-hook 'c-mode-common-hook
          (function (lambda ()
		      (flymake-mode t)
                      (global-set-key "C-cC-v" 'my-flymake-show-next-error))))
