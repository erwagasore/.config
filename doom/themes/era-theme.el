;;; era-theme.el --- A light theme inspired by Zaiste -*- lexical-binding: t; -*-

;;; Commentary:

;;; A Doom Emacs theme inspired by Zaiste
;;; optimized for both coding and org-mode workflows.

;;; Code:

;;; era-theme.el
(require 'doom-themes)

(defgroup era-theme nil
  "Options for the era-theme."
  :group 'doom-themes)

(def-doom-theme era
    "A light theme inspired by Zaiste."

  ;; Color Palette
  ;; name           default   256       16
  ((bg            '("#f8f8f8" nil       nil            ))
   (bg-alt        '("#f0f0f0" nil       nil            ))
   (base0         '("#efefef" "#eeeeee" "brightwhite"  ))
   (base1         '("#e0e0e0" "#e0e0e0" "brightwhite"  ))
   (base2         '("#d0d0d0" "#d0d0d0" "white"        ))
   (base3         '("#c0c0c0" "#c0c0c0" "white"        ))
   (base4         '("#a0a0a0" "#a0a0a0" "brightblack"  ))
   (base5         '("#808080" "#808080" "brightblack"  ))
   (base6         '("#606060" "#606060" "brightblack"  ))
   (base7         '("#404040" "#404040" "brightblack"  ))
   (base8         '("#202020" "#202020" "black"         ))
   (fg            '("#282828" "#282828" "black"         ))
   (fg-alt        '("#383838" "#383838" "brightblack"   ))
   (grey          base4)

   ;; Accent colors
   (red           '("#e45649" "#e45649" "red"          ))
   (orange        '("#da8548" "#dd8844" "brightred"    ))
   (green         '("#50a14f" "#50a14f" "green"        ))
   (teal          '("#4db5bd" "#44b9b1" "brightgreen"  ))
   (yellow        '("#bda800" "#c5a332" "yellow"       ))
   (blue          '("#0098dd" "#0098dd" "brightblue"   ))
   (dark-blue     '("#275fe4" "#275fe4" "blue"         ))
   (magenta       '("#a626a4" "#a626a4" "magenta"      ))
   (violet        '("#823ff1" "#823ff1" "brightmagenta"))
   (cyan          '("#0184bc" "#0184bc" "brightcyan"   ))
   (dark-cyan     '("#005478" "#005478" "cyan"         ))
   (yellow-accent '("#bda800" "#c5a332" "yellow"       ))
   (orange-accent '("#da8548" "#dd8844" "brightred"    ))
   (green-accent  '("#50a14f" "#50a14f" "brightgreen"  ))
   (red-accent    '("#e45649" "#e45649" "red"          ))
   (bg-region     '("#d2ecff" nil       nil            ))

   (highlight      (doom-darken blue 0.15))
   (vertical-bar   base2)
   (selection      dark-blue)
   (builtin        magenta)
   (comments       (doom-darken base4 0.35))
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
   (region         (doom-blend blue bg 0.2))
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   (modeline-fg     fg)
   (modeline-fg-alt (doom-blend violet base4 0.2))

   (modeline-bg base1)
   (modeline-bg-l base2)
   (modeline-bg-inactive (doom-darken bg 0.1))
   (modeline-bg-inactive-l `(,(doom-darken (car bg-alt) 0.05) ,@(cdr base1))))

  ;; Face customizations
  ((font-lock-comment-face :foreground comments :weight 'bold)
   (font-lock-doc-face :inherit 'font-lock-comment-face :foreground doc-comments :weight 'regular)

   ((line-number &override) :foreground (doom-lighten base4 0.48) :height 0.88)
   ((line-number-current-line &override) :foreground (doom-lighten fg-alt 0.32) :height 0.88)

   (whitespace-space :foreground (doom-lighten modeline-fg-alt 0.56))
   (whitespace-newline :foreground (doom-lighten modeline-fg-alt 0.56))
   (fill-column-indicator :foreground (doom-blend fg bg 0.16))

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
   (magit-diff-context :foreground (doom-darken fg 0.25))
   (magit-diff-context-highlight :foreground fg :background (doom-darken bg 0.03))
   (magit-diff-hunk-heading :foreground fg :background (doom-darken bg 0.1) :bold bold)
   (magit-diff-hunk-heading-highlight :foreground fg :background (doom-darken bg 0.15) :bold bold)
   (magit-diff-file-heading :foreground blue :bold bold)
   (magit-diff-file-heading-highlight :foreground blue :background (doom-darken bg 0.05) :bold bold)

   (diff-added :foreground green :background (doom-blend green bg 0.1))
   (diff-removed :foreground red :background (doom-blend red bg 0.1))
   (diff-changed :foreground orange :background (doom-blend orange bg 0.1))
   (diff-header :foreground blue :background (doom-darken bg 0.05) :bold bold)
   (diff-file-header :inherit 'diff-header)
   (diff-hunk-header :foreground fg :background (doom-darken bg 0.1))

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

   (lsp-ui-doc-background      :background base0)
   (lsp-face-highlight-read    :background (doom-blend red bg 0.3))
   (lsp-face-highlight-textual :inherit 'lsp-face-highlight-read)
   (lsp-face-highlight-write   :inherit 'lsp-face-highlight-read)

   (org-block            :background base0)
   (org-level-1          :foreground base8 :weight 'bold :height 1.25)
   (org-level-2          :foreground base6 :weight 'bold :height 1.1)
   (org-level-3          :foreground base5 :weight 'bold :height 1.0)
   (org-level-4          :foreground base4 :weight 'bold :height 1.0)
   (org-ellipsis         :underline nil :background bg-alt     :foreground base4)
   (org-quote            :background base1)
   (org-checkbox-statistics-done :foreground base2 :weight 'normal)
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
   (ivy-posframe :background base0))

  ;; Additional theme variables (empty in this case)
  ())

(provide 'era-theme)
;;; era-theme.el ends here
