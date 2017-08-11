
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

(provide 'init-better-defaults)
