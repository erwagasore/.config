;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; enable toggle predefined light and dark themes
(package! heaven-and-hell)

;; Enable eglot-java and gradle
(package! eglot-java)
(package! gradle-mode)

;; Enable Copilot
(package! copilot
  :recipe (:host github :repo "jart/emacs-copilot" :files ("*.el")))
