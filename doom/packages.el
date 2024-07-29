;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; Enable toggle predefined light and dark themes
(package! heaven-and-hell)

;; Enable eglot-java and gradle
(package! eglot-java)
(package! gradle-mode)

;; Enable gptel
(package! gptel)
(package! ai-org-chat :recipe (:host github :repo "ultronozm/ai-org-chat.el"))
