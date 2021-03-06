;;; init.el -*- lexical-binding: t; -*-

;; This file controls what Doom modules are enabled and what order they load
;; in. Remember to run 'doom sync' after modifying it!

;; NOTE Press 'SPC h d h' (or 'C-h d h' for non-vim users) to access Doom's
;;      documentation. There you'll find a "Module Index" link where you'll find
;;      a comprehensive list of Doom's modules and what flags they support.

;; NOTE Move your cursor over a module's name (or its flags) and press 'K' (or
;;      'C-c c k' for non-vim users) to view its documentation. This works on
;;      flags as well (those symbols that start with a plus).
;;
;;      Alternatively, press 'gd' (or 'C-c c d') on a module to browse its
;;      directory (for easy access to its source code).

(doom! :completion
       (company +childframe)
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
       org
       (python +lsp +pyenv +poetry )
       rest              ; Emacs as a REST client
       (rust +lsp)              ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
       (sh +fish)
       swift
       web
       (yaml +lsp)

       :config
       literate
       (default +bindings +smartparens))
