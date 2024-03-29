;;; package --- Summary
;;; Commentary:
;;; ijima-theme.el

;;; Code:
(require 'doom-themes)

(defgroup ijima-theme nil
  "Options for doom-themes."
  :group 'doom-themes)

(def-doom-theme ijima
  "A dark theme"

  ;; name        default   256       16
((bg         '("#282c34" "#282c34" "black"        ))
 (bg-alt     '("#383a42" "#383a42" "brightblack"  ))
 (base8      '("#efefef" "#efefef" "white"        ))
 (base7      '("#e7e7e7" "#e7e7e7" "brightblack"  ))
 (base6      '("#dfdfdf" "#dfdfdf" "brightblack"  ))
 (base5      '("#c6c7c7" "#c6c7c7" "brightblack"  ))
 (base4      '("#636d83" "#636d83" "brightblack"  ))
 (base3      '("#484a42" "#424242" "brightblack"  ))
 (base2      '("#434343" "#2e2e2e" "brightblack"  ))
 (base1      '("#2c2f34" "#1e1e1e" "brightblack"  ))
 (base0      '("#1b2229" "black"   "black"        ))
 (fg-alt     '("#f9f9f9" nil       nil            ))
 (fg         '("#abb2bf" nil       nil            ))

 (grey       '("#a0a1a7" "#a0a1a7" "brightblack"  ))
 (red        '("#ff6480" "#ff6480" "red"          ))
 (orange     '("#da8548" "#dd8844" "brightred"    ))
 (green      '("#3fc56b" "#3fc56b" "green"        ))
 (teal       '("#4db5bd" "#44b9b1" "brightgreen"  ))
 (yellow     '("#f9c859" "#f9c859" "yellow"       ))
 (baby-blue  '("#d2ecff" "#d2ecff" "brightblue"   ))
 (blue       '("#10b1fe" "#10b1fe" "brightblue"   ))
 (dark-blue  '("#3691ff" "#3691ff" "blue"         ))
 (magenta    '("#ff78f8" "#ff78f8" "magenta"      ))
 (violet     '("#9f7efe" "#9f7efe" "brightmagenta"))
 (cyan       '("#0184bc" "#0184bc" "brightcyan"   ))
 (dark-cyan  '("#005478" "#005478" "cyan"         ))

 (highlight      blue)
 (vertical-bar   base2)
 (selection      dark-blue)
 (builtin        magenta)
 (comments       base4)
 (doc-comments   (doom-lighten comments 0.15))
 (constants      violet)
 (functions      green)
 (keywords       blue)
 (methods        cyan)
 (operators      blue)
 (type           red)
 (strings        yellow)
 (variables      magenta)
 (numbers        magenta)
 (region         baby-blue)
 (error          red)
 (warning        yellow)
 (success        green)
 (vc-modified    orange)
 (vc-added       green)
 (vc-deleted     red)

 (modeline-fg     nil)
 (modeline-fg-alt (doom-blend violet base4 0.2))

 (modeline-bg base1)
 (modeline-bg-l base2)
 (modeline-bg-inactive (doom-darken bg 0.1))
 (modeline-bg-inactive-l `(,(doom-darken (car bg-alt) 0.05) ,@(cdr base1))))

((font-lock-comment-face
  :foreground comments
  :weight 'bold)
 (font-lock-doc-face
  :inherit 'font-lock-comment-face
  :foreground doc-comments
  :weight 'regular)

 ((line-number &override) :foreground base4)
 ((line-number-current-line &override) :foreground base8)

 (doom-modeline-bar :background highlight)
 (doom-modeline-project-dir :foreground violet :weight 'bold)
 (doom-modeline-buffer-file :weight 'regular)

 (mode-line :background modeline-bg :foreground modeline-fg)
 (mode-line-inactive :background modeline-bg-inactive :foreground modeline-fg-alt)
 (mode-line-emphasis :foreground highlight)

 (magit-blame-heading :foreground orange :background bg-alt)
 (magit-diff-removed :foreground (doom-darken red 0.2) :background (doom-blend red bg 0.1))
 (magit-diff-removed-highlight :foreground red :background (doom-blend red bg 0.2) :bold bold)

 (evil-ex-lazy-highlight :background baby-blue)

 (css-proprietary-property :foreground orange)
 (css-property             :foreground green)
 (css-selector             :foreground blue)

 (markdown-markup-face     :foreground base5)
 (markdown-header-face     :inherit 'bold :foreground red)
 (markdown-code-face       :background base1)
 (mmm-default-submode-face :background base1)

 (org-block            :background base0)
 (org-level-1          :foreground "steelblue2" :weight 'normal :height 1.2)
 (org-level-2          :foreground "slategray2" :weight 'normal :height 1.0)
 (org-level-3          :foreground "SkyBlue2" :weight 'normal :height 1.0)
 (org-level-4          :foreground "DodgerBlue2" :wight 'normal :height 1.0)
 (org-ellipsis         :underline nil :background bg-alt     :foreground grey)
 (org-quote            :background base1)
 (org-checkbox-statistics-done :foreground base2 :weight 'normal)
 (org-done nil)
 (org-done :foreground green :weight 'normal)
 (org-headline-done :foreground base3 :weight 'normal :strike-through t)
 (org-code :foreground dark-blue)
 (org-special-keyword :foreground base8 :underline t)
 (org-document-title :foreground "SlateGray1" :weight 'bold :height 1.75)
 (org-document-info-keyword :foreground base4 :height 0.75)
 (org-block-begin-line :foreground base4 :height 0.65)
 (org-meta-line :foreground base4 :height 0.65)
 (org-list-dt :foreground magenta)
 (org-link :foreground nil :weight 'normal)
 (org-code :foreground "#a9a1e1" :background nil)
 (org-date :foreground "#5B6268" :background nil)

 (org-todo-keyword-faces
  '(("TODO" :foreground "#7c7c75" :weight normal :underline t)
    ("WAITING" :foreground "#9f7efe" :weight normal :underline t)
    ("INPROGRESS" :foreground "#0098dd" :weight normal :underline t)
    ("DONE" :foreground "#50a14f" :weight normal :underline t)
    ("CANCELLED" :foreground "#ff6480" :weight normal :underline t)))

 (org-priority-faces '((65 :foreground "#e45649")
                       (66 :foreground "#da8548")
                       (67 :foreground "#0098dd")))

 (helm-candidate-number :background blue :foreground bg)

 (web-mode-current-element-highlight-face :background dark-blue :foreground bg)

 (wgrep-face :background base1)

 (ediff-current-diff-A        :foreground red   :background (doom-lighten red 0.8))
 (ediff-current-diff-B        :foreground green :background (doom-lighten green 0.8))
 (ediff-current-diff-C        :foreground blue  :background (doom-lighten blue 0.8))
 (ediff-current-diff-Ancestor :foreground teal  :background (doom-lighten teal 0.8))

 (tooltip :background base1 :foreground fg)

 (ivy-posframe :background base0)

 (lsp-ui-doc-background      :background base0)
 (lsp-face-highlight-read    :background (doom-blend red bg 0.3))
 (lsp-face-highlight-textual :inherit 'lsp-face-highlight-read)
 (lsp-face-highlight-write   :inherit 'lsp-face-highlight-read)))

(after! org
  (setq
   org-superstar-headline-bullets-list '("⁖")
   org-ellipsis " ... "
   org-todo-keyword-faces
   '(("TODO" :foreground "#7c7c75" :weight normal :underline t)
     ("WAITING" :foreground "#9f7efe" :weight normal :underline t)
     ("INPROGRESS" :foreground "#0098dd" :weight normal :underline t)
     ("DONE" :foreground "#50a14f" :weight normal :underline t)
     ("CANCELLED" :foreground "#ff6480" :weight normal :underline t))
   org-priority-faces '((65 :foreground "#e45649")
                        (66 :foreground "#da8548")
                        (67 :foreground "#0098dd"))
   ))

;;; ijima-theme.el ends here
