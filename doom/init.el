;;; init.el -*- lexical-binding: t; -*-

(doom! :completion
       (company +childframe)           ; the ultimate code completion backend
       (vertico +childframe +icons)           ; the search engine of the future

       :ui
       doom              ; what makes DOOM look the way it does
       (emoji +ascii +unicode +github)  ; 🙂
       hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       (ligatures +extra +pragmata-pro)         ; ligatures and symbols to make your code pretty again
       modeline          ; snazzy, Atom-inspired modeline, plus API
       nav-flash         ; blink cursor line after big motions
       ophints           ; highlight the region an operation acts on
       (popup +defaults)   ; tame sudden yet inevitable temporary windows
       (vc-gutter +pretty) ; vcs diff in the fringe
       (window-select +switch-window)     ; visually switch windows
       workspaces        ; tab emulation, persistence & separate workspaces

       :editor
       file-templates    ; auto-snippets for empty files
       fold              ; (nigh) universal code folding
       (format +onsave)  ; automated prettiness
       multiple-cursors  ; editing in many places at once
       snippets          ; my elves. They type so I don't have to

       :emacs
       (dired +icons)            ; making dired pretty [functional]
       electric          ; smarter, keyword-based electric-indent
       (ibuffer +icons)         ; interactive buffer management
       (undo +tree)              ; persistent, smarter undo for your inevitable mistakes
       vc                ; version-control and Emacs, sitting in a tree

       :term
       vterm             ; the best terminal emulation in Emacs

       :checkers
       (syntax +childframe)              ; tasing you for every semicolon you forget

       :tools
       (debugger +lsp)          ; FIXME stepping through code, to help you add bugs
       direnv
       docker
       ein               ; tame Jupyter notebooks with emacs
       (eval +overlay)     ; run code, run (also, repls)
       lookup              ; navigate your code and its documentation
       (lsp +peek)               ; M-x vscode
       magit             ; a git porcelain for Emacs
       taskrunner        ; taskrunner for all your projects
       terraform         ; infrastructure as code
       tree-sitter       ; syntax and parsing, sitting in a tree...
       upload            ; map local to remote projects via ssh/ftp

       :os
       (:if IS-MAC macos)  ; improve compatibility with macOS
       tty               ; improve the terminal Emacs experience

       :lang
       emacs-lisp        ; drown in parentheses
       json              ; At least it ain't XML
       javascript        ; all(hope(abandon(ye(who(enter(here))))))
       markdown          ; writing docs for people to ignore
       (org +jupyter)               ; organize your plain life in plain text
       (python +lsp +tree-sitter)            ; beautiful is better than ugly
       rest              ; Emacs as a REST client
       (rust +lsp +tree-sitter)       ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
       (sh +lsp +tree-sitter +fish)                ; she sells {ba,z,fi}sh shells on the C xor
       (swift +lsp +tree-sitter)             ; who asked for emoji variables?
       (web +lsp +tree-sitter)               ; the tubes
       (yaml +lsp +tree-sitter)              ; JSON, but readable

       :config
       literate
       (default +bindings +smartparens))
