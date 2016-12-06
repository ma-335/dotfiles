;;; NOTE: iTerm2 + tmux-1.7 hack
(define-key input-decode-map "\e\eOA" [(meta up)])
(define-key input-decode-map "\e\eOB" [(meta down)])
(define-key input-decode-map "\e\eOC" [(meta right)])
(define-key input-decode-map "\e\eOD" [(meta left)])

(global-set-key (kbd "M-<up>")	  'windmove-up)
(global-set-key (kbd "M-<down>")  'windmove-down)
(global-set-key (kbd "M-<right>") 'windmove-right)
(global-set-key (kbd "M-<left>")  'windmove-left)

(global-set-key (kbd "C-S-/") 'redo)

(global-set-key (kbd "<backtab>") 'indent-region)

(global-set-key (kbd "M-n") (kbd "C-u 10 C-n"))
(global-set-key (kbd "M-p") (kbd "C-u 10 C-p"))

(global-set-key (kbd "C-x j") 'delete-indentation)

;; (global-set-key (kbd "C-x C-b") 'buffer-menu)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)

(global-set-key (kbd "C-x i") #'imenu-list-minor-mode)
