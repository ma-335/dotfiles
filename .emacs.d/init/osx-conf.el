;; packages
(defvar masaori/osx/packages '(osx-clipboard))

(dolist (pkg masaori/osx/packages)
  (unless (package-installed-p pkg) (package-install pkg)))

(require 'osx-clipboard)
(osx-clipboard-mode)

;; brew install coreutils
(if (file-exists-p "/usr/local/opt/coreutils/libexec/gnubin/ls")
    (progn
     (setq insert-directory-program "/usr/local/opt/coreutils/libexec/gnubin/ls")
     (setq dired-listing-switches "-FlL --group-directories-first")))
