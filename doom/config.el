(setq gcmh-idle-delay 5
      gcmh-high-cons-threshold (* 100 1024 1024)
      gcmh-verbose doom-debug-p)

(setq-default
 delete-by-moving-to-trash t
 window-combination-resize t)

(setq mac-mouse-wheel-smooth-scroll t)

;; Increase amount of data read from process
(setq read-process-output-max (* 1024 1024)) ;; 1mb

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
  :null          "ф"
  :true          "⊤"
  :false         "⊥"
  ;; Flow
  :not           "￢"
  :in            "∈"
  :not-in        "∉"
  :and           "∧"
  :or            "∨"
  :for           "∀"
  :some          "∃"
  :return        "↪"
  :yield         "↦"
  ;; Other
  :union         "⋃"
  :intersect     "∩"
  :diff          "∖"
  :dot           "•")
(setq doom-font (font-spec :family "Iosevka Custom" :size 14 :weight 'Regular))

(setq doom-theme 'zaiste)

(after! doom-theme
  (setq doom-themes-enable-bold nil
        doom-themes-enable-italic nil))

;; Disable Emacs killing confirmation
(setq confirm-kill-emacs nil)

;; Use Twitter emojis instead
(setq emojify-emoji-set "twemoji-v2")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type nil)

;; Maximize the window to fullscreen
;; (add-to-list 'initial-frame-alist '(fullscreen . maximized))

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

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq
 org-log-done 'time
 org-tags-column -80
 org-directory "~/Orgfiles/"
 org-roam-directory "~/Orgfiles/roam/"
 org-agenda-files (directory-files-recursively "~/Orgfiles/roam/daily/" "\.org$")
 org-todo-keywords '((sequence "TODO(t)" "INPROGRESS(i)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)"))
 org-todo-keyword-faces
 '(("TODO" :foreground "#7C7C75" :weight normal :underline t)
   ("WAITING" :foreground "#9F7EFE" :weight normal :underline t)
   ("INPROGRESS" :foreground "#0098DD" :weight normal :underline t)
   ("DONE" :foreground "#50A14F" :weight normal :underline t)
   ("CANCELLED" :foreground "#FF6480" :weight normal :underline t)))

(after! org-superstar
  (setq
   org-superstar-headline-bullets-list '("⁖")))

(after! org-fancy-priorities
  (setq
   org-priority-highest '?A
   org-priority-lowest  '?D
   org-priority-default '?B
   org-priority-faces '((?A :foreground "#E45649")
                        (?B :foreground "#DA8548")
                        (?C :foreground "#0098DD")
                        (?D :foreground "#7C7C75"))
   org-fancy-priorities-list '("[#A - NOW]" "[#B - NEXT]" "[#C - LAST]" "[#D - MAYBE]")))

(add-to-list 'auto-mode-alist '("\\.astro\\'" . typescript-tsx-mode))

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

(setq-default flycheck-python-flake8-executable "flake8helled")
(setq-default lsp-pyls-configuration-sources ["flake8helled"])
(setq-default lsp-pylsp-configuration-sources ["flake8helled"])

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

(after! forge
  (push
   '("er.github.com" "api.github.com" "github.com" forge-github-repository)
   forge-alist))
