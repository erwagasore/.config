;;; init.el -*- lexical-binding: t; -*-
(doom! :completion
       (company +childframe)
       (vertico +childframe +icons)

       :ui
       doom
       (emoji +ascii +unicode +github)
       hl-todo
       (ligatures +extra)
       modeline
       nav-flash
       ophints
       (popup +defaults)
       (vc-gutter +pretty)
       (window-select +switch-window)
       workspaces
       indent-guides

       :editor
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
       docker
       ein
       (eval +overlay)
       lookup
       (lsp +eglot)
       magit
       tree-sitter
       upload

       :os
       (:if IS-MAC macos)
       tty

       :lang
       emacs-lisp
       json
       (javascript +lsp +tree-sitter)
       markdown
       (org)
       (rust +lsp +tree-sitter)
       (web +lsp +tree-sitter)
       (yaml +lsp +tree-sitter)

       :config
       literate
       (default +bindings +smartparens))
