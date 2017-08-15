

(when (>= emacs-major-version 24)
     (require 'package)
     (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))
(require 'cl)
(defvar my/packages '(
		      company
		      monokai-theme
		      hungry-delete
		      smex
		      swiper
		      counsel
		      smartparens
		      popwin
		      expand-region
		      iedit
		      yasnippet
		      auto-yasnippet
		      evil
		      evil-leader
		      window-numbering
		      powerline
		      evil-surround
		      evil-nerd-commenter 
		      )"Default packages")
(setq package-selected-packages my/packages)
(defun my/packages-installed-p ()
     (loop for pkg in my/packages
           when (not (package-installed-p pkg)) do (return nil)
           finally (return t)))
(unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
         (package-install pkg))))


(require 'recentf)
(require 'hungry-delete)
(require 'smex)
(smex-initialize)
(require 'smartparens-config)
(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(require 'popwin)

(require 'dired-x)

(require 'iedit)

(require 'yasnippet)
(yas-reload-all)

(require 'auto-yasnippet)

(require 'evil)

(window-numbering-mode 1)

(require 'powerline)
;;(power)

(global-evil-leader-mode)
(evil-leader/set-key
  "ff" 'find-file
  "fr" 'recentf-open-files
  "bb" 'switch-to-buffer
  "bk" 'kill-buffer
  "0" 'select-window-0
  "1" 'select-window-1
  "2" 'select-window-2
  "3" 'select-window-3
  "w/" 'split-window-right
  "w-" 'split-window-below
  "wm" 'delete-other-windows
  ":" 'counsel-M-x)

(require 'evil-surround)
(global-evil-surround-mode 1)

(define-key evil-normal-state-map (kbd ",/") 'evilnc-comment-or-uncomment-lines)
(define-key evil-visual-state-map (kbd ",/") 'evilnc-comment-or-uncomment-lines)
;;(evilnc-default-hotkeys)

(provide 'init-packages)
