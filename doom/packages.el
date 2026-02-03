;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; Enable toggle predefined light and dark themes
(package! heaven-and-hell)

;; Enable org-superstar
(package! org-superstar)

;; Add OpenCode
(package! opencode
  :recipe (:host codeberg :repo "sczi/opencode.el"))
