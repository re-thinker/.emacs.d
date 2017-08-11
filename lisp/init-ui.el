(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode 1)
(setq inhibit-splash-screen 1)
(set-face-attribute 'default nil :height 100)

(setq initial-frame-alist (quote ((fullscreen . maximized))))
(global-highlight-changes-mode 1)
(global-hl-line-mode 1)
(load-theme 'monokai 1)

(setq-default cursor-type 'bar)

(provide 'init-ui)
