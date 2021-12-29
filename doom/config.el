(setq gcmh-idle-delay 5
      gcmh-high-cons-threshold (* 100 1024 1024)
      gcmh-verbose doom-debug-p)

(setq-default
 delete-by-moving-to-trash t
 window-combination-resize t)

(setq mac-mouse-wheel-smooth-scroll t)

;; Increase amount of data read from process
(setq read-process-output-max (* 1024 1024)) ;; 1mb

;; Help yabai to recognize emacs
(menu-bar-mode t)

;; View long lines without performance issues
(so-long-minor-mode t)

;; View Large Files in batches and reduce overhead and preformance issues
(after! vlf
  (custom-set-variables '(vlf-application 'dont-ask)))

(setq user-full-name "Eugene Rwagasore"
      user-mail-address "rwagasore@gmail.com")

(setq doom-font (font-spec :family "PragmataPro Liga" :size 14 :weight
 'Regular))

(after! doom-theme
  (setq doom-themes-padded-modeline t)
  (doom-themes-org-config)
  (doom-themes-visual-bell-config))

(after! heaven-and-hell
  (setq heaven-and-hell-theme-type 'dark
        heaven-and-hell-themes '((light . zaiste) (dark . doom-one))
        heaven-and-hell-load-theme-no-confirm t)
  (map! :leader "g" 'heaven-and-hell-toggle-theme))

(add-hook 'after-init-hook 'heaven-and-hell-init-hook)

(custom-set-faces!
  `(org-document-title :weight bold :height 1.5)
  `(org-level-1 :weight bold :height 1.25)
  `(org-level-2 :weight bold :height 1.1)
  `(org-level-3 :weight bold :height 1.0)
  `(org-document-title :weight bold :height 1.5)
  `(org-document-info-keyword :height 0.75)
  `(org-block-begin-line :height 0.65)
  `(org-meta-line :height 0.65))

;; Disable Emacs killing confirmation
(setq confirm-kill-emacs nil)

;; Use Twitter emojis instead
(setq emojify-emoji-set "twemoji-v2")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type nil)

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
 org-directory "~/Documents/Orgfiles"
 org-ellipsis "￢"
 org-roam-directory (file-truename "~/Documents/Orgfiles/roam/")
 org-agenda-files (directory-files-recursively "~/Documents/Orgfiles/roam/daily/" "\.org$"))

(after! org
  (setq
   org-modules '(org-habit)
   org-todo-keywords
   '((sequence "TODO(t)" "INPROGRESS(i)" "WAITING(w)" "|" "DONE(d)" "MOVED(m)" "CANCELLED(c)"))
   org-todo-keyword-faces
   '(("TODO" :foreground "#7C7C75" :weight normal :underline t)
     ("WAITING" :foreground "#9F7EFE" :weight normal :underline t)
     ("INPROGRESS" :foreground "#0098DD" :weight normal :underline t)
     ("DONE" :foreground "#50A14F" :weight normal :underline t)
     ("MOVED" :foreground "#7C7C75" :weight normal :underline t)
     ("CANCELLED" :foreground "#FF6480" :weight normal :underline t))))

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
   org-fancy-priorities-list '("NOW" "NEXT" "LAST" "MAYBE")))

(setq org-roam-capture-templates
      '(("d" "default" plain
         "%?"
         :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org"
                            "#+title: ${title}\n#+created_at: %u\n#+modified_at: %U\n\n")
         :unnarrowed t)

        ("b" "book notes" plain
         (file "~/Documents/Orgfiles/roam/templates/book-notes.org")
         :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org"
                            "#+title: ${title}\n#+created_at: %u\n#+modified_at: %U\n\n")
         :unnarrowed t)))

(setq org-roam-dailies-capture-templates
      '(("d" "default" entry
        "* %?"
        :if-new (file+head "%<%Y-%m-%d>.org"
                           "#+title: %<%Y-%m-%d>\n\n"))
        ("t" "Task" entry
         (file "~/Documents/Orgfiles/roam/templates/daily.org")
         :if-new (file+head+olp "%<%Y-%m-%d>.org"
                                "#+title: %<%Y-%m-%d>\n\n"
                                ("Tasks"))
         :jump-to-captured t)
        ("T" "Trading" entry
         "** %?\t%^g"
         :if-new (file+head+olp "%<%Y-%m-%d>.org"
                                "#+title: %<%Y-%m-%d>\n\n"
                                ("Trading"))
         :jump-to-captured t)))

(setq-default flycheck-python-flake8-executable "flake8helled")
(setq-default lsp-pyls-configuration-sources ["flake8helled"])
(setq-default lsp-pylsp-configuration-sources ["flake8helled"])

;; for .tsx, i use lsp for formatting, so this is not needed
(setq-hook! 'typescript-tsx-mode-hook +format-with-lsp nil)

(after! lsp
  (setq lsp-log-io nil
        lsp-idle-delay 0.5
        lsp-enable-file-watchers nil
        lsp-eslint-format nil
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
