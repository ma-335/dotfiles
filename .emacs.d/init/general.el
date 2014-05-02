;;; kill reagion
(defadvice kill-region (around kill-word-or-kill-region activate)
  (if (and (interactive-p) transient-mark-mode (not mark-active))
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

(show-paren-mode t)
(fset 'yes-or-no-p 'y-or-n-p)

;;; linum
(require 'linum)
(defadvice linum-on (around my-linum-on () activate)
  (unless (and (fboundp 'org-mode-p) (org-mode-p))
    ad-do-it))
(global-linum-mode t)
(setq linum-format "%3d ")
