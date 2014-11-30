(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(defvar masaori/packages '(zenburn-theme flycheck web-mode dockerfile-mode clojure-mode nrepl rust-mode ))
(dolist (pkg masaori/packages) (unless (package-installed-p pkg) (package-install pkg)))
