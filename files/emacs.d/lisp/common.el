;; disable menu
(menu-bar-mode 0)

;; disable backup
(setq backup-inhibited t)

;; disable auto save
(setq auto-save-default nil)

;; 'y' instead of 'yes'
(fset 'yes-or-no-p 'y-or-n-p)

;; nice scroll
(setq scroll-margin 10)
(setq scroll-step 1)

;; paren match settings
(show-paren-mode 1)
(setq show-paren-delay 0)

;; show line and column numbers
(global-linum-mode t)
(column-number-mode t)

;; display time and date
(setq display-time-format "%H:%M:%S")
(setq display-time-interval 1)
(display-time)

;; no more startup message
(setq inhibit-startup-screen 1)

;; completions for buffers, files etc. 
(ido-mode t)

;; no more TABs 
(setq-default indent-tabs-mode nil)

;; disable vc-mode
(setq vc-handled-backends nil) 

;; comments in bold blue
(set-face-attribute 'font-lock-comment-face  nil :foreground "blue" :weight 'bold)

