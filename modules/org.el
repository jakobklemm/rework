;; Org-mode config

(load-file (concat user-emacs-directory "modules/org-content.el"))

(load-file (concat user-emacs-directory "modules/org-looks.el"))

(load-file (concat user-emacs-directory "modules/org-productivity.el"))

(load-file (concat user-emacs-directory "modules/org-latex.el"))

(load-file (concat user-emacs-directory "hoth/hoth.el"))

(setq
 org-directory "~/documents/"
 initial-buffer-choice  "~/documents/supervisor/gsd.org"
 org-archive-location "~/documents/archive/2021.org::* From %s"
 )
