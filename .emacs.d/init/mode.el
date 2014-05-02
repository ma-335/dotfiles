(setq auto-mode-alist (append '(("\\.ml$" . tuareg-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("Rakefile$" . ruby-mode)) auto-mode-alist))


(setq fill-column 100)
(setq rst-mode-hook 'turn-on-auto-fill)
