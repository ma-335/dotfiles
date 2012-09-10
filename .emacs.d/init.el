;;; compatible *ONLY* with GNU Emacs 24
(package-initialize)

(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(load-theme 'zenburn t)

(add-hook 'lisp-mode-hook
          '(lambda () (local-set-key (kbd "RET") 'newline-and-indent)))

(defadvice kill-region (around kill-word-or-kill-region activate)
  (if (and (interactive-p) transient-mark-mode (not mark-active))
      (backward-kill-word 1)
      ad-do-it))

(define-key minibuffer-local-completion-map "\C-w" 'backward-kill-word)

(global-set-key (kbd "M-<up>") 'windmove-up)
(global-set-key (kbd "M-<down>") 'windmove-down)
(global-set-key (kbd "M-<right>") 'windmove-right)
(global-set-key (kbd "M-<left>") 'windmove-left)

(global-set-key (kbd "C-S-/") 'redo)

(global-set-key (kbd "<backtab>") 'indent-region)

(global-set-key (kbd "C-v") 'View-scroll-half-page-forward)
(global-set-key (kbd "M-v") 'View-scroll-half-page-backward)

(global-set-key (kbd "C-j") 'delete-indentation)

(setq system-uses-terminfo nil)

(setq backup-directory-alist `(("." . "~/.emacs.d/backup")))

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

(require 'linum)
(defadvice linum-on (around my-linum-on () activate)
  (unless (and (fboundp 'org-mode-p) (org-mode-p))
    ad-do-it))
(global-linum-mode t)
(setq linum-format "%3d ")

(setq-default truncate-lines t)
(setq-default truncate-partial-width-windows t)

(show-paren-mode t)

;; flymake
(defun my-flymake-show-next-error()
  (interactive)
  (flymake-goto-next-error)
  (flymake-display-err-menu-for-current-line)
  )

;;
;; Setting some C / C++ defaults
;;
(add-hook 'c-mode-common-hook
          (function (lambda ()
		      (flymake-mode t)
                      (global-set-key "C-cC-v" 'my-flymake-show-next-error))))
;;
;; Cococa-Emacs
;;
;; TODO: load cocoa-emacs.el
(if (eq 'ns (window-system))
    (progn
      (custom-set-variables
       '(menu-bar-mode t)
       '(show-paren-mode t)
       '(tool-bar-mode nil)
       '(tooltip-mode nil))
      (custom-set-faces)

      (create-fontset-from-ascii-font "Monaco-12:weight=normal:slant=normal" nil "menlokakugo")
      (set-fontset-font "fontset-menlokakugo"
			'unicode
			(font-spec :family "Hiragino Kaku Gothic ProN" :size 12)
			nil
			'append)
      (add-to-list 'default-frame-alist '(font . "fontset-menlokakugo"))))
