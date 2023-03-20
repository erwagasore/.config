;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; enable toggle predefined light and dark themes
(package! heaven-and-hell)

;; enable GitHub Copilot
(package! copilot
  :recipe (:host github :repo "zerolfx/copilot.el" :files ("*.el" "dist")))

;; chatgpt for emacs
(package! chatgpt-shell
  :recipe (:host github :repo "xenodium/chatgpt-shell"))
