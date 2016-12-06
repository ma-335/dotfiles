;; Settings with go-mode

(add-hook 'go-mode-hook
	  '(lambda ()
             (setq indent-tabs-mode)
             (setq tab-width 2)
             (flycheck-mode)
             (electric-pair-mode)))

(add-hook 'before-save-hook 'gofmt-before-save)
