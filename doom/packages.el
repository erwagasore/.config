;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; Enable toggle predefined light and dark themes
(package! heaven-and-hell)

;; Enable org-superstar
(package! org-superstar)

;; Enable eglot-java and gradle
(package! eglot-java)
(package! gradle-mode)

;; Enable claude-code.el and its companions
(package! claude-code
  :recipe (:host github :repo "stevemolitor/claude-code.el"))
