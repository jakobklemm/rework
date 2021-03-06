;; Quality of life changes

;; Install no-littering to handle all temporary and backup files.
(use-package no-littering
  :ensure t
  )

;; Better window switch functionality
(setq evil-vsplit-window-right t
      evil-split-window-below t)

;; Credit: https://github.com/hrs (added buffer switch option, copied from archived doom config)
(defun hrs/split-window-below-and-switch ()
  "Split the window horizontally, then switch to the new pane."
  (interactive)
  (split-window-below)
  (balance-windows)
  (other-window 1)
  (ivy-switch-buffer)
  )

(defun hrs/split-window-right-and-switch ()
  "Split the window vertically, then switch to the new pane."
  (interactive)
  (split-window-right)
  (balance-windows)
  (other-window 1)
  (ivy-switch-buffer)
  )

(defun kill-current-buffer ()
  (interactive)
  (kill-buffer (current-buffer)))

;; Google search
(use-package engine-mode
  :ensure t
  :config
  (engine-mode t)
  (defengine duckduckgo
    "https://duckduckgo.com/?q=%s"
    :keybinding "p")
  (defengine google
    "http://www.google.com/search?ie=utf-8&oe=utf-8&q=%s"
    :keybinding "g")
  (defengine github
    "https://github.com/search?ref=simplesearch&q=%s"
    :keybinding "d")
  )

;; For highly serious work
(use-package malyon
  :ensure t
  )
