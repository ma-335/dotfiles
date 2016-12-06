;; http://web-mode.org/

(add-hook 'web-mode-hook
          (lambda ()
            (setq indent-tabs-mode f)
            (setq web-mode-markup-indent-offset 2)))
