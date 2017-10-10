;;; kill reagion
(defadvice kill-region (around kill-word-or-kill-region activate)
  (if (and (called-interactively-p 'interactive) transient-mark-mode (not mark-active))
      (backward-kill-word 1)
      ad-do-it))

(define-key minibuffer-local-completion-map "\C-w" 'backward-kill-word)

(setq system-uses-terminfo nil)
(setq backup-directory-alist `(("." . "~/.emacs.d/backup")))
(setq-default truncate-lines t)
(setq-default truncate-partial-width-windows t)
(setq vc-follow-symlinks t)
(setq require-final-newline t)
(setq-default indent-tabs-mode nil)
(setq c-basic-offset 2)
(setq scroll-conservatively 1)
(setq line-number-mode nil)
(setq column-number-mode nil)

(show-paren-mode t)
(fset 'yes-or-no-p 'y-or-n-p)

;;; linum
(require 'linum)
(defadvice linum-on (around my-linum-on () activate)
  (unless (and (fboundp 'org-mode-p) (org-mode-p))
    ad-do-it))
;; (global-linum-mode t)
(setq linum-format "%4d ")

(menu-bar-mode 0)

;;; Details in `M-x describe-variable grep-command`
(require 'grep)
(grep-apply-setting 'grep-command "grep -nHI -r ./* -e ")

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(require 'imenu-list)
(setq imenu-list-focus-after-activation t)
(setq imenu-list-size 40)

(setq tab-width 2)

(require 'which-key)
(which-key-mode)
(which-key-setup-side-window-right)

(require 'undo-tree)
(global-undo-tree-mode t)
