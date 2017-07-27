;;; compatible *ONLY* with GNU Emacs 24


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load "~/.emacs.d/init/general.el")
(load "~/.emacs.d/init/packages.el")
(load "~/.emacs.d/init/keybind.el")
(load "~/.emacs.d/init/mode.el")
;; (load "~/.emacs.d/init/languages.el")
(load "~/.emacs.d/init/face.el")
(load "~/.emacs.d/init/conf-c++-mode.el")
(load "~/.emacs.d/init/conf-go-mode.el")
(load "~/.emacs.d/init/conf-python-mode.el")
(load "~/.emacs.d/init/conf-helm-mode.el")
(load "~/.emacs.d/init/conf-rtags-mode.el")
(load "~/.emacs.d/init/irony-mode.conf.el")
(load "~/.emacs.d/init/conf-company-mode.el")
;; (load "~/.emacs.d/init/web-mode-settings.el")
;; (load "~/.emacs.d/init/longlines-jp.el")
;; (load "~/.emacs.d/init/kibit.el")
;; (load "/usr/local/Cellar/gettext/0.18.3.1/share/emacs/site-lisp/po-compat.el")
;; (load "/usr/local/opt/gettext/share/emacs/site-lisp/gettext/po-mode.el")
;; (load "/usr/local/Cellar/gettext/0.18.3.1/share/emacs/site-lisp/start-po.el")
;; (load "~/.emacs.d/init/po-conf.el")
;; (load "~/.emacs.d/init/ginger-api.el")　;; https://gist.github.com/syohex/5457732
;;; Cococa-Emacs
(if (eq 'ns (window-system)) (load "~/.emacs.d/init/cocoa.el"))

;; Added by Custom
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode nuil)
 '(custom-safe-themes
   (quote
    ("4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "9d91458c4ad7c74cf946bd97ad085c0f6a40c370ac0a1cbeb2e3879f15b40553" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "bf7ed640479049f1d74319ed004a9821072c1d9331bc1147e01d22748c18ebdf" default)))
 '(fci-rule-color "#383838")
 '(line-number-mode nil)
 '(package-selected-packages
   (quote
    (company-irony irony powerline company-rtags company flycheck-color-mode-line flycheck-rtags gtags helm-rtags undo-tree osx-clipboard py-autopep8 grep+ py-yapf clang-format which-key cmake-mode lua-mode helm-descbinds color-theme-solarized color-theme-sanityinc-solarized dockerfile-mode mmm-mako markdown-mode+ mmm-mode helm-gtags helm imenu-list yaml-mode markdown-mode go-mode clojure-mode web-mode flycheck zenburn-theme)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(text-mode-hook (quote (text-mode-hook-identify)))
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
