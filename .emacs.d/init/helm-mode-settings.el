;; https://emacs-helm.github.io/helm/

(require 'helm-config)
(require 'helm)

(helm-mode +1)

(helm-autoresize-mode t)

(define-key helm-map (kbd "TAB") 'helm-next-line)
(define-key helm-map (kbd "C-w") 'backward-kill-word)

(setq helm-find-files-sort-directories t)

(require 'helm-gtags)
(add-hook 'c-mode-hook 'helm-tags-mode)

(add-hook 'helm-gtags-mode-hook
          '(lambda ()
             (local-set-key (kbd "M-.") 'helm-gtags-find-tag)
             (local-set-key (kbd "M-,") 'helm-gtags-pop-stack)
             (local-set-key (kbd "M-r") 'helm-gtags-find-rtag)
             (local-set-key (kbd "M-w") 'helm-gtags-find-symbol)))
