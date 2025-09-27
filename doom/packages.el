;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; Enable toggle predefined light and dark themes
(package! heaven-and-hell)

;; Enable org-superstar
(package! org-superstar)

;; Add Agent Shell usin ACP
(package! shell-maker)
(package! acp
  :recipe (:host github :repo "xenodium/acp.el"))
(package! agent-shell
  :recipe (:host github :repo "xenodium/agent-shell"))
