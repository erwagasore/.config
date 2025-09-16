;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; Enable toggle predefined light and dark themes
(package! heaven-and-hell)

;; Enable org-superstar
(package! org-superstar)

;; Enable Claude Code IDE
(package! claude-code-ide
  :recipe (:host github :repo "manzaltu/claude-code-ide.el"))

;; Add Editor Code Assistant
(package! eca :recipe (:host github :repo "editor-code-assistant/eca-emacs" :files ("*.el")))