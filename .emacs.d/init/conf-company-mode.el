(require 'company)
(require 'cl)
(global-company-mode)

(eval-after-load 'company
  '(progn
     (define-key company-active-map (kbd "TAB") 'company-select-next)
     (define-key company-active-map [tab] 'company-select-next)))

(eval-after-load 'company
  '(progn
     (define-key company-active-map (kbd "S-TAB") 'company-select-previous)
     (define-key company-active-map (kbd "<backtab>") 'company-select-previous)))

;; Backends
;; irony
(require 'company-irony)
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

;; rtags
(require 'company-rtags)
(setq rtags-autostart-diagnostics t)
(rtags-diagnostics)

(setq rtags-completions-enabled t)
(eval-after-load 'company
  '(push 'company-rtags company-backends))
