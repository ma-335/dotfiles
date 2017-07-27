;; (require 'py-yapf)
;; (add-hook 'python-mode-hook 'py-yapf-enable-on-save)

;; autest extention
(setq auto-mode-alist (append '((".test.ext$" . python-mode)) auto-mode-alist))
