;; https://emacs-helm.github.io/helm/

(require 'helm-config)
(require 'helm)

(helm-mode +1)

(helm-autoresize-mode t)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-d") 'helm-browse-project)
(global-set-key (kbd "C-x TAB") 'helm-imenu) ;; default keybind

(define-key helm-map (kbd "TAB") 'helm-next-line)
(define-key helm-map (kbd "C-w") 'backward-kill-word)

(setq helm-find-files-sort-directories t)

;; (require 'helm-gtags)
;; (add-hook 'c-mode-common-hook 'helm-gtags-mode)
;; (add-hook 'go-mode-hook 'helm-gtags-mode)

;; (add-hook 'helm-gtags-mode-hook
;;           '(lambda ()
;;              (local-set-key (kbd "M-.") 'helm-gtags-find-tag)
;;              (local-set-key (kbd "C-x c .") 'helm-gtags-find-tag-other-window)
;;              (local-set-key (kbd "M-r") 'helm-gtags-find-rtag)
;;              (local-set-key (kbd "M-s") 'helm-gtags-find-symbol)
;;              (local-set-key (kbd "M-,") 'helm-gtags-pop-stack)))
