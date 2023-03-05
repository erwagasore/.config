;;; config.el -*- lexical-binding: t; -*-
;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets
(setq user-full-name "Eugene Rwagasore"
      user-mail-address "rwagasore@gmail.com")

(setq-default
 delete-by-moving-to-trash t
 window-combination-resize t)

(setq mac-mouse-wheel-smooth-scroll t)

(setq gcmh-idle-delay 5
      gcmh-high-cons-threshold (* 100 1024 1024))

;; Increase amount of data read from process
(setq read-process-output-max (* 1024 1024)) ;; 1mb

(setq doom-font (font-spec :family "PragmataProLiga Nerd Font" :size 16 :weight 'normal))
(setq default-text-properties '(line-spacing 0.25 line-height 1.25))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-ayu-dark)

(after! doom-theme
  (setq doom-themes-enable-bold nil
        doom-themes-enable-italic nil))

;; Disable Emacs killing confirmation
(setq confirm-kill-emacs nil)

;transparent adjustment
 (set-frame-parameter (selected-frame)'alpha '(92 . 90))
 (add-to-list 'default-frame-alist'(alpha . (92 . 90)))

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

;; (after!
;;   (push
;;    '("er.github.com" "api.github.com" "github.com" forge-github-repository)
;;    forge-Balist))
