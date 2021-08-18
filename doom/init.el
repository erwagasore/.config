;;; init.el -*- lexical-binding: t; -*-
(doom! :completion
       (company +childframe)
       (vertico +icons)
       (ivy +icons +fuzzy +prescient +childframe)

       :ui
       doom
       (emoji +ascii +github +unicode)
       hl-todo
       indent-guides
       (ligatures +extra)
       modeline
       nav-flash
       ophints
       (popup +defaults)
       unicode
       vc-gutter
       (window-select +switch-window)
       workspaces

       :editor
       file-templates
       fold
       (format +onsave)
       multiple-cursors
       snippets
       word-wrap

       :emacs
       dired
       electric
       undo
       vc

       :term
       vterm

       :checkers
       (syntax +childframe)

       :tools
       debugger
       (docker +lsp)
       (eval +overlay)
       lookup
       (lsp +peek)
       (magit +forge)
       rgb
       ;; editorconfig

       :os
       (:if IS-MAC macos)

       :lang
       data
       (dart +lsp +flutter)
       emacs-lisp
       (json +lsp)
       (javascript +lsp)
       (markdown +grip)
       (org +pretty +pomodoro +roam2 +jupyter)
       (python +lsp +pyenv +poetry)
       rest
       (rust +lsp)
       (sh +fish)
       swift
       web
       (yaml +lsp)

       :config
       literate
       (default +bindings +smartparens))
