;;; ijima-theme.el --- A dark theme inspired by Jetbrains Fleet -*- lexical-binding: t; -*-

;;; Commentary:

;;;; A Doom Emacs theme inspired by Jetbrains Fleet
;;;; optimized for both coding and org-mode workflows.

;;; Code:

(require 'doom-themes)

(defgroup ijima-theme nil
  "Options for the ijima-theme."
  :group 'doom-themes)

(def-doom-theme ijima
    "A dark theme inspired by JetBrains Fleet."

  ;; Color Palette
  ;; name           default   256       16
  ((bg            '("#0D0D0D" nil       nil           ))
   (bg-alt        '("#1A1A1A" nil       nil           ))
   (base0         '("#0D0D0D" "black"   "black"        ))
   (base1         '("#1A1A1A" "#1a1a1a" "brightblack"  ))
   (base2         '("#282828" "#282828" "brightblack"  ))
   (base3         '("#383838" "#383838" "brightblack"  ))
   (base4         '("#585858" "#585858" "brightblack"  ))
   (base5         '("#787878" "#787878" "brightblack"  ))
   (base6         '("#989898" "#989898" "brightwhite"  ))
   (base7         '("#C0C0C0" "#C0C0C0" "brightwhite"  ))
   (base8         '("#E0E0E0" "#E0E0E0" "white"        ))
   (fg            '("#E0E0E0" "#E0E0E0" "brightwhite"  ))
   (fg-alt        '("#C0C0C0" "#C0C0C0" "white"        ))
   (grey          base4)

   (red           '("#D6333F" "#cc5555" "red"          ))
   (orange        '("#ECA775" "#dd8844" "brightred"    ))
   (green         '("#9FBC74" "#8fbf7f" "green"        ))
   (teal          '("#00AF99" "#008080" "brightcyan"   ))
   (yellow        '("#E5C995" "#ECBE7B" "yellow"       ))
   (blue          '("#84B0E2" "#44aaff" "blue"         ))
   (dark-blue     '("#163764" "#2257A0" "blue"         ))
   (magenta       '("#D898D8" "#c678dd" "magenta"      ))
   (violet        '("#AC9CF9" "#a9a1e1" "brightmagenta"))
   (cyan          '("#78D0BD" "#44b9b1" "cyan"         ))
   (dark-cyan     '("#36827F" "#005f5f" "cyan"         ))
   (yellow-accent '("#DEA407" "#ECBE7B" "yellow"       ))
   (orange-accent '("#EE7F25" "#dd8844" "brightred"    ))
   (green-accent  '("#00AF99" "#008080" "brightgreen"  ))
   (red-accent    '("#D6333F" "#cc5555" "red"          ))
   ;; Additional colors
   (bg-region     '("#163764" nil       nil            ))

   (highlight      (doom-darken blue 0.6))
   (vertical-bar   base2)
   (selection      dark-blue)
   (builtin        cyan)
   (comments       (doom-lighten grey 0.35))
   (doc-comments   (doom-lighten comments 0.15))
   (constants      yellow)
   (functions      blue)
   (keywords       cyan)
   (methods        cyan)
   (operators      blue)
   (type           blue)
   (strings        magenta)
   (variables      fg)
   (numbers        magenta)
   (region         bg-region)
   (error          red-accent)
   (warning        yellow-accent)
   (success        green-accent)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   (modeline-fg     nil)
   (modeline-fg-alt (doom-blend violet base4 0.2))

   (modeline-bg base1)
   (modeline-bg-l base2)
   (modeline-bg-inactive (doom-darken bg 0.1))
   (modeline-bg-inactive-l `(,(doom-darken (car bg-alt) 0.05) ,@(cdr base1))))

  ;; Base face overrides
  ((font-lock-comment-face :foreground comments :weight 'bold)
   (font-lock-doc-face :inherit 'font-lock-comment-face :foreground doc-comments :weight 'regular)

   ((line-number &override) :foreground (doom-lighten base4 0.15))
   ((line-number-current-line &override) :foreground fg-alt)

   (whitespace-space :foreground (doom-darken modeline-fg-alt 0.64))
   (whitespace-newline :foreground (doom-darken modeline-fg-alt 0.64))

   (doom-modeline-bar :background highlight)
   (doom-modeline-project-dir :foreground violet :weight 'bold)
   (doom-modeline-buffer-file :weight 'regular)

   (mode-line :background modeline-bg :foreground modeline-fg)
   (mode-line-inactive :background modeline-bg-inactive :foreground modeline-fg-alt)
   (mode-line-emphasis :foreground highlight)

   (magit-blame-heading :foreground orange :background bg-alt)
   (magit-diff-added :foreground green :background (doom-blend green bg 0.15))
   (magit-diff-added-highlight :foreground green :background (doom-blend green bg 0.25) :bold bold)
   (magit-diff-removed :foreground red :background (doom-blend red bg 0.15))
   (magit-diff-removed-highlight :foreground red :background (doom-blend red bg 0.25) :bold bold)
   (magit-diff-context :foreground (doom-darken fg 0.3))
   (magit-diff-context-highlight :foreground fg :background (doom-lighten bg 0.05))
   (magit-diff-hunk-heading :foreground fg :background (doom-lighten bg 0.1) :bold bold)
   (magit-diff-hunk-heading-highlight :foreground fg :background (doom-lighten bg 0.15) :bold bold)
   (magit-diff-file-heading :foreground blue :bold bold)
   (magit-diff-file-heading-highlight :foreground blue :background (doom-lighten bg 0.05) :bold bold)

   (diff-added :foreground green :background (doom-blend green bg 0.1))
   (diff-removed :foreground red :background (doom-blend red bg 0.1))
   (diff-changed :foreground orange :background (doom-blend orange bg 0.1))
   (diff-header :foreground blue :background (doom-lighten bg 0.05) :bold bold)
   (diff-file-header :inherit 'diff-header)
   (diff-hunk-header :foreground fg :background (doom-lighten bg 0.1))

   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground blue)

   (markdown-markup-face     :foreground base5)
   (markdown-header-face     :inherit 'bold :foreground red)
   (markdown-code-face       :background base1)
   (mmm-default-submode-face :background base1)

   (ediff-current-diff-A        :foreground red   :background (doom-blend red bg 0.2))
   (ediff-current-diff-B        :foreground green :background (doom-blend green bg 0.2))
   (ediff-current-diff-C        :foreground blue  :background (doom-blend blue bg 0.2))
   (ediff-current-diff-Ancestor :foreground teal  :background (doom-blend teal bg 0.2))

   (ediff-fine-diff-A        :foreground red   :background (doom-blend red bg 0.35))
   (ediff-fine-diff-B        :foreground green :background (doom-blend green bg 0.35))
   (ediff-fine-diff-C        :foreground blue  :background (doom-blend blue bg 0.35))
   (ediff-fine-diff-Ancestor :foreground teal  :background (doom-blend teal bg 0.35))

   (lsp-ui-doc-background      :background base1)
   (lsp-face-highlight-read    :background (doom-blend red bg 0.3))
   (lsp-face-highlight-textual :inherit 'lsp-face-highlight-read)
   (lsp-face-highlight-write   :inherit 'lsp-face-highlight-read)

   (org-block            :background base0)
   (org-level-1          :foreground base8 :weight 'bold :height 1.25)
   (org-level-2          :foreground base6 :weight 'bold :height 1.1)
   (org-level-3          :foreground base5 :bold bold :height 1.0)
   (org-level-4          :foreground base4 :bold bold :height 1.0)
   (org-ellipsis         :underline nil :background bg-alt     :foreground base4)
   (org-quote            :background base1)
   (org-checkbox-statistics-done :foreground base2 :weight 'normal)
   (org-done nil)
   (org-done :foreground green :weight 'normal)
   (org-headline-done :foreground base3 :weight 'normal :strike-through t)
   (org-date :foreground orange)
   (org-code :foreground dark-blue)
   (org-special-keyword :foreground base8 :underline t)
   (org-document-title :foreground base8 :weight 'bold :height 1.5)
   (org-document-info-keyword :foreground base4 :height 0.75)
   (org-block-begin-line :foreground base4 :height 0.65)
   (org-meta-line :foreground base4 :height 0.65)
   (org-list-dt :foreground magenta)

   (web-mode-current-element-highlight-face :background dark-blue :foreground bg)
   (wgrep-face :background base1)
   (tooltip :background base1 :foreground fg)
   (ivy-posframe :background base0)))

(provide 'ijima-theme)

;;; ijima-theme.el ends here
