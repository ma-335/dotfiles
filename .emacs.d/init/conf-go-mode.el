;; Settings with go-mode
(setq auto-mode-alist (append '(("\\.go$" . go-mode)) auto-mode-alist))

(add-hook 'go-mode-hook
	  '(lambda ()
             (setq indent-tabs-mode)
             (setq tab-width 2)
             (flycheck-mode)
             (electric-pair-mode)))

(add-hook 'go-mode-hook
          (lambda () (add-hook 'before-save-hook 'gofmt-before-save nil 'local)))
