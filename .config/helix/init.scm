;; grove https://github.com/ivoronin/grove.hx
(require "grove/grove.scm")
(require "helix/keymaps.scm")

(define (grove-workspace-launch?)
  (let loop ([args (cdr (command-line))])
    (cond
      [(null? args) #f]
      [(equal? (car args) "--") #f]
      [(or (equal? (car args) "-w")
           (equal? (car args) "--working-dir"))
       #t]
      [else (loop (cdr args))])))

(grove-start!
  #:visibility
  (if (grove-workspace-launch?) 'always 'focused))

(keymap (global)
  (normal
    (space
      (e ":grove-focus!")
      (E ":grove-visibility-toggle!"))))

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
; (scopeline-configure! #:position 'top-left)
