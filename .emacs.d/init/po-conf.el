;; Auto fill in po-mode. Details in the following link.
;; - http://www.emacswiki.org/emacs/PoMode

(defun po-wrap ()
  "Filter current po-mode buffer through `msgcat' tool to wrap all lines."
  (interactive)
  (if (eq major-mode 'po-mode)
      (let ((tmp-file (make-temp-file "po-wrap."))
	    (tmp-buf (generate-new-buffer "*temp*")))
	(unwind-protect
	    (progn
	      (write-region (point-min) (point-max) tmp-file nil 1)
	      (if (zerop
		   (call-process
		    "/usr/local/Cellar/gettext/0.18.3.1/bin/msgcat" nil tmp-buf t (shell-quote-argument tmp-file) "-w 78"))
		  (let ((saved (point))
			(inhibit-read-only t))
		    (delete-region (point-min) (point-max))
		    (insert-buffer tmp-buf)
		    (goto-char (min saved (point-max))))
		(with-current-buffer tmp-buf
		  (error (buffer-string)))))
	  (kill-buffer tmp-buf)
	  (delete-file tmp-file)))))

(defun toggle-truncate-lines ()
  "Toggle truncate lines"
  (interactive)
  (if truncate-lines
      (setq truncate-lines nil)
    (setq truncate-lines t))
  (recenter))

(add-hook 'po-subedit-mode-hook '(lambda () (longlines-mode 1)))
(add-hook 'po-subedit-exit-hook '(lambda () (longlines-mode 0)))
