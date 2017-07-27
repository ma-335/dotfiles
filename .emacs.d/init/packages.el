(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(defvar masaori/packages '(zenburn-theme
                           imenu-list
                           helm
                           helm-gtags
                           helm-descbinds
                           which-key
                           go-mode
                           lua-mode
                           cmake-mode
                           dockerfile-mode
                           clang-format
                           undo-tree
                           flycheck
                           gtags
                           rtags
                           flycheck-rtags
                           powerline))
(dolist (pkg masaori/packages) (unless (package-installed-p pkg) (package-install pkg)))

;;; load packages in local
(load "~/.emacs.d/pkg/clang-format.el")
