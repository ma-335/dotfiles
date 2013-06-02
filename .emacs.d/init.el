;;; compatible *ONLY* with GNU Emacs 24

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(load "~/.emacs.d/init/general.el")
(load "~/.emacs.d/init/keybind.el")
(load "~/.emacs.d/init/hook.el")
(load "~/.emacs.d/init/flymake.el")
(load "~/.emacs.d/init/face.el")
(load "~/.emacs.d/init/ginger-api.el")　;; https://gist.github.com/syohex/5457732

;;; Cococa-Emacs
(if (eq 'ns (window-system)) (load "~/.emacs.d/init/cocoa.el"))
