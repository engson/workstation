(require "helix/keymaps.scm")

; ;; grove https://github.com/ivoronin/grove.hx
; (require "grove/grove.scm")

; (define (grove-workspace-launch?)
;   (let loop ([args (cdr (command-line))])
;     (cond
;       [(null? args) #f]
;       [(equal? (car args) "--") #f]
;       [(or (equal? (car args) "-w")
;            (equal? (car args) "--working-dir"))
;        #t]
;       [else (loop (cdr args))])))

; (grove-start!
;   #:visibility
;   (if (grove-workspace-launch?) 'always 'focused))

; (keymap (global)
;   (normal
;     (space
;       (e ":grove-focus!")
;       (E ":grove-visibility-toggle!"))))

;; https://github.com/Ra77a3l3-jar/forest.hx
(require "forest/forest.scm")

;; Optional: which side the tree renders on ('left by default), and which
;; entry names are always hidden
(forest-configure! 'left #:ignore (list ".git" "target" "__pycache__"))

;; Optional: which explorer UI forest-open uses ('snacks by default)
;; (forest-set-style! style)
(forest-set-style! 'snacks) ; or 'mini

;; Optional (snacks): wrapping j/k inside a folder, and h/l to enter or leave
(forest-snack-circular-keybinds #t)

;; Optional (snacks): give the sidebar its own background per focus state, so the
;; tree stands apart from the buffer.
(forest-set-sidebar-bg! #:focused "#1e1e2e" #:unfocused "#181825")

;; Optional (snacks): color the search box outline. It marks focus by default
;; (orange focused, white unfocused); override the colors, or stop it changing.
(forest-set-search-color! #:focused "#89b4fa" #:unfocused "#585b70")
(forest-set-search-color! #:always "#89b4fa")            ; one color, both states
(forest-set-search-color! #:focused "#89b4fa" #:follow-focus? #f) ; never changes

(keymap (global)
        (normal (space (e ":forest-open"))))

;; hx-tmux-navigator https://github.com/piotrkwarcinski/hx-tmux-navigator
(require (prefix-in navigator. "hx-tmux-navigator/navigator.scm"))

(keymap (global)
    (insert
      (C-h ":navigator.move-left")
      (C-l ":navigator.move-right")
      (C-j ":navigator.move-down")
      (C-k ":navigator.move-up"))
    (normal
      (C-h ":navigator.move-left")
      (C-l ":navigator.move-right")
      (C-j ":navigator.move-down")
      (C-k ":navigator.move-up")))

;; scoopline https://github.com/Ra77a3l3-jar/scopeline.hx
(require "scopeline/scopeline.scm")
(scopeline-configure! #:position 'top-left)

;; https://codeberg.org/gwid/context.hx/src/branch/main
; (require "context/context.scm")

; (context-enable 'right)
