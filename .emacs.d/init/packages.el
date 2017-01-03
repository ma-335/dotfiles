(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(defvar masaori/packages '(zenburn-theme
                           flycheck
                           web-mode
                           clojure-mode
                           go-mode
                           markdown-mode
                           yaml-mode
                           imenu-list
                           helm
                           helm-gtags))
(dolist (pkg masaori/packages) (unless (package-installed-p pkg) (package-install pkg)))
