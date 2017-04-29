(add-to-list 'load-path "~/.emacs.d/lisp")

(load "common.el")
(load "global-keys.el")
(load "global-keys-ru.el")
(load "put-the-date.el")

(mapcar (lambda (file-name)
          (if (string-match "[0-9][0-9]-.+\.el" file-name)
              (load-file (concat "~/.emacs.d/lisp/lisp.d/" file-name))
          )) (directory-files "~/.emacs.d/lisp/lisp.d/") )

