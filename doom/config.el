;; (setq gcmh-idle-delay 5
;;       gcmh-high-cons-threshold (* 100 1024 1024)
;;       gcmh-verbose doom-debug-p)

(setq gcmh-high-cons-threshold most-positive-fixnum ; 2^61 bytes
      gcmh-low-cons-threshold (* 100 1024 1024)     ; 104 megabytes
      gc-cons-percentage 0.6)

(setq gc-cons-threshold gcmh-high-cons-threshold)

(add-hook 'emacs-startup-hook
  (lambda ()
    (setq gc-cons-threshold gcmh-low-cons-threshold
          gc-cons-percentage 0.1)))

(defun doom-defer-garbage-collection-h ()
  (setq gc-cons-threshold gcmh-high-cons-threshold))

(defun doom-restore-garbage-collection-h ()
  ;; Defer it so that commands launched immediately after will enjoy the
  ;; benefits.
  (run-at-time
   1 nil (lambda () (setq gc-cons-threshold gcmh-low-cons-threshold))))

(add-hook 'minibuffer-setup-hook #'doom-defer-garbage-collection-h)
(add-hook 'minibuffer-exit-hook #'doom-restore-garbage-collection-h)

(setq-default
 delete-by-moving-to-trash t
 window-combination-resize t)

(setq mac-mouse-wheel-smooth-scroll t)

;; Increase amount of data read from process
(setq read-process-output-max (* 1024 1024)) ;; 1mb

;;; config.el -*- lexical-binding: t; -*-

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Eugene Rwagasore"
      user-mail-address "rwagasore@gmail.com")

(plist-put! +ligatures-extra-symbols
  ;; org
  :name          "»"
  :src_block     "»"
  :src_block_end "«"
  :quote         "“"
  :quote_end     "”"
  ;; Functional
  :lambda        "𝝺"
  :def           "ƒ"
  :composition   "∘"
  :map           "⯮"
  ;; Types
  :null          "∅"
  :true          "⊤"
  :false         "⊥"
  :int           "int"
  :float         "float"
  :str           "str"
  :bool          "bool"
  :list          "list"
  ;; Flow
  :not           "￢"
  :in            "∈"
  :not-in        "∉"
  :and           "∧"
  :or            "∨"
  :for           "∀"
  :some          "∃"
  :return        "⤦"
  :yield         "↦"
  ;; Other
  :union         "⋃"
  :intersect     "∩"
  :diff          "∖"
  :tuple         "tuple"
  :pipe          "pipe"
  :dot           "•")
(setq doom-font (font-spec :family "Iosevka Custom" :size 13 :weight 'Extralight))

(setq doom-theme 'doom-vibrant)

(after! doom-theme
  (setq doom-themes-enable-bold nil
        doom-themes-enable-italic nil))

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Orgfiles/")

;; Disable Emacs killing confirmation
(setq confirm-kill-emacs nil)

;; Use Twitter emojis instead
(setq emojify-emoji-set "twemoji-v2")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type nil)

;; Maximize the window to fullscreen
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; enable transparent titlebar with dark-mode
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))

;; Customize the cursor
(setq-default
 cursor-type '(bar . 1)
 blink-cursor-delay 0
 blink-cursor-interval 0.4
 x-stretch-cursor t)

(blink-cursor-mode t)

(after! web
  )

(setq indent-tabs-mode nil
      web-mode-attr-indent-offset nil
      js-indent-level 2
      typescript-indent-level 2
      tab-width 2
      web-mode-code-indent-offset 2
      web-mode-css-indent-offset 2
      web-mode-markup-indent-offset 2

      web-mode-enable-auto-closing t
      web-mode-enable-auto-pairing t
      web-mode-auto-close-style 2
      web-mode-tag-auto-close-style 2)

(after! lsp
  (setq lsp-log-io nil
        lsp-idle-delay 0.5
        lsp-enable-file-watchers nil
        lsp-eslint-auto-fix-on-save t))

(after! company
  (setq company-idle-delay 0.0
        company-minimum-prefix-length 1)
  (setq company-show-numbers t))

;; Remove `--literal-pathspecs` argument which was causing `pre-commit` to fail
(after! magit
  (setq magit-git-global-arguments (remove "--literal-pathspecs" magit-git-global-arguments)))

(after!
  (push
   '("er.github.com" "api.github.com" "github.com" forge-github-repository)
   forge-Balist))
