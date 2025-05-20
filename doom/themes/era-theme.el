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
    "A light theme inspired by zeiste."

  ;; Color Palette
  ;; name        default   256       16
  ((bg-alt     '("#fcfcfc" nil       nil            ))
   (bg         '("#f8f8f8" nil       nil            ))
   (base0      '("#efefef" "#eeeeee" "brightwhite"  ))  ;; Snow Grey
   (base1      '("#dcdcdc" "#d7d7d7" "brightwhite"  ))  ;; Platinum Grey
   (base2      '("#c9c9c9" "#cdcdcd" "white"        ))  ;; Silver Grey
   (base3      '("#b6b6b6" "#afafaf" "white"        ))  ;; Ash Grey
   (base4      '("#a3a3a3" "#a5a5a5" "white"        ))  ;; Stone Grey
   (base5      '("#909090" "#878787" "brightblack"  ))  ;; Slate Grey
   (base6      '("#7d7d7d" "#737373" "brightblack"  ))  ;; Iron Grey
   (base7      '("#6a6a6a" "#5f5f5f" "brightblack"  ))  ;; Charchoal Grey
   (base8      '("#555555" "#555555" "brightblack"  ))  ;; Coal Grey
   (fg         '("#282828" nil       nil            ))
   (fg-alt     '("#202020" nil       nil            ))
   (grey       base4)

   (red        '("#e45649" "#e45649" "red"          ))
   (orange     '("#da8548" "#dd8844" "brightred"    ))
   (green      '("#50a14f" "#50a14f" "green"        ))
   (teal       '("#4db5bd" "#44b9b1" "brightgreen"  ))
   (yellow     '("#bda800" "#c5a332" "yellow"       ))
   (baby-blue  '("#d2ecff" "#d2ecff" "brightblue"   ))
   (blue       '("#0098dd" "#0098dd" "brightblue"   ))
   (dark-blue  '("#275fe4" "#275fe4" "blue"         ))
   (magenta    '("#a626a4" "#a626a4" "magenta"      ))
   (violet     '("#823ff1" "#823ff1" "brightmagenta"))
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

  ((font-lock-comment-face :foreground comments :weight 'bold)
   (font-lock-doc-face :inherit 'font-lock-comment-face :foreground doc-comments :weight 'regular)

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

   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground blue)

   (markdown-markup-face     :foreground base5)
   (markdown-header-face     :inherit 'bold :foreground red)
   (markdown-code-face       :background base1)
   (mmm-default-submode-face :background base1)

   (ediff-current-diff-A        :foreground red   :background (doom-lighten red 0.8))
   (ediff-current-diff-B        :foreground green :background (doom-lighten green 0.8))
   (ediff-current-diff-C        :foreground blue  :background (doom-lighten blue 0.8))
   (ediff-current-diff-Ancestor :foreground teal  :background (doom-lighten teal 0.8))

   (lsp-ui-doc-background      :background base0)
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
   (ivy-posframe :background base0))

  ())
;;; era-theme.el ends here
