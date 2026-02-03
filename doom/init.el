;;; init.el -*- lexical-binding: t; -*-
(doom! :completion
       (company +childframe)
       (vertico +childframe +icons)

       :ui
       doom
       modeline
       (emoji +ascii +unicode +github)
       hl-todo
       (ligatures +extra +iosevka +pragmata-pro)
       nav-flash
       ophints
       (popup +defaults)
       (vc-gutter +pretty)
       (window-select +switch-window)
       workspaces

       :editor
       (evil +everywhere)
       file-templates
       fold
       word-wrap
       (format +onsave)
       multiple-cursors
       snippets

       :emacs
       (dired +icons)
       electric
       (ibuffer +icons)
       (undo +tree)
       vc

       :term
       vterm

       :checkers
       (syntax +childframe)

       :tools
       direnv
       (docker +lsp)
       ein
       (eval +overlay)
       lookup
       (lsp +eglot)
       rgb
       magit
       tree-sitter
       upload

       :os
       (:if IS-MAC macos)
       (tty +osc)

       :lang
       emacs-lisp
       (json +lsp +tree-sitter)
       (javascript +lsp +tree-sitter)
       (markdown +grip)
       (org)
       (rust +lsp +tree-sitter)
       (zig +lsp +tree-sitter)
       (swift +lsp +tree-sitter)
       (web +lsp +tree-sitter)
       (yaml +lsp +tree-sitter)

       :config
       literate
       (default +bindings +smartparens))
