
(global-company-mode 1)

(recentf-mode 1)

(global-hungry-delete-mode)

(setq make-backup-files nil)
(global-auto-revert-mode t)
(setq make-backup-files nil)
(setq auto-save-default nil)

(setq recentf-max-menu-item 10)

(smartparens-global-mode t)

(popwin-mode t)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)


(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("8jz" "lijingzheng")
					    ))

(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))

(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indent selected region."))
      (progn
	(indent-buffer)
	(message "Indent buffer.")))))


(put 'dired-find-alternate-file 'disabled nil)
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

(setq dired-dwin-target 1)

(provide 'init-better-defaults)
