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
       (debugger +lsp)
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
       (org +pomodoro +pretty)
       (python +pyenv +lsp +pyright +tree-sitter)
       rest
       (rust +lsp +tree-sitter)
       (sh +lsp +tree-sitter +fish)
       (swift +lsp +tree-sitter)
       (web +lsp +tree-sitter)
       (yaml +lsp +tree-sitter)

       :config
       literate
       (default +bindings +smartparens))
