(progn
  (custom-set-variables
   '(menu-bar-mode t)
   '(show-paren-mode t)
   '(tool-bar-mode nil)
   '(tooltip-mode nil))
  (custom-set-faces)

  (create-fontset-from-ascii-font "Monaco-12:weight=normal:slant=normal" nil "menlokakugo")
  (set-fontset-font "fontset-menlokakugo"
		    'unicode
		    (font-spec :family "Hiragino Kaku Gothic ProN" :size 12)
		    nil
		    'append)
  (add-to-list 'default-frame-alist '(font . "fontset-menlokakugo")))
