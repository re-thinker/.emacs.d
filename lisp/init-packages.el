

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

(provide 'init-packages)
