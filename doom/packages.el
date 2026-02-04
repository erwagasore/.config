;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; Theme toggle - switch between light/dark themes with a keybinding
(package! heaven-and-hell)

;; Better org-mode bullets - replaces default asterisks with custom bullets
(package! org-superstar)

;; AI coding assistant - OpenCode integration for chat-based coding
(package! opencode
  :recipe (:host codeberg :repo "sczi/opencode.el"))

;; AI coding assistant - Pi agent for interactive coding sessions
(package! pi-coding-agent
  :recipe (:host github :repo "dnouri/pi-coding-agent"))
