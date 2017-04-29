(defun put-the-date ()
  (interactive)
  (insert (shell-command-to-string "date \"+%y-%m-%d %H:%M:%S\"")))

(global-set-key (kbd "C-c d") 'put-the-date )
(global-set-key (kbd "C-c в") 'put-the-date )

(defun put-the-time ()
  (interactive)
  (insert (shell-command-to-string "date \"+%H:%M:%S\"")))

(global-set-key (kbd "C-c t") 'put-the-time )
(global-set-key (kbd "C-c е") 'put-the-time )

