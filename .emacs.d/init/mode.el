(setq auto-mode-alist (append '(("\\.ml$" . tuareg-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("Rakefile$" . ruby-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("\\.md$" . markdown-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("\\.html$" . web-mode)) auto-mode-alist))

(setq fill-column 100)
(setq rst-mode-hook 'turn-on-auto-fill)

(setq js-indent-level 2)

(add-hook 'makefile-mode-hook
          (lambda ()
            (setq indent-tabs-mode)
            (setq tab-width 4)))

(add-hook 'web-mode-hook
          (lambda ()
            (setq indent-tabs-mode)
            (setq tab-width 4)))
