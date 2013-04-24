(deftheme Greyhound
  "Created 2013-04-24.")

(custom-theme-set-faces
 'Greyhound
 '(cursor ((t (:background "#AAAAAA" :foreground "#f6f3e8"))))
 '(region ((t (:background "#444444" :foreground "#f6f3e8"))))
 '(mode-line ((t (:background "#444444" :foreground "#FFE64D" :box '(:color "#444444" :line-width 10)))))
 '(mode-line-inactive ((t (:background "#444444" :foreground "#DF740C" :box '(:color "#444444" :line-width 10)))))
 '(vertical-border ((t (:foreground "#CCC"))))
 '(minibuffer-prompt ((t (:foreground "#e5786d"))))
 '(font-lock-builtin-face ((t (:foreground "#e5786d"))))
 '(font-lock-comment-face ((t (:foreground "#99968b"))))
 '(font-lock-constant-face ((t (:foreground "#e5786d" :weight bold))))
 '(font-lock-function-name-face ((t (:foreground "#cae682"))))
 '(font-lock-keyword-face ((t (:foreground "#8ac6f2" :weight bold))))
 '(font-lock-string-face ((t (:foreground "#95e454"))))
 '(font-lock-type-face ((t (:foreground "#cae682" :weight bold))))
 '(font-lock-variable-name-face ((t (:foreground "#cae682"))))
 '(font-lock-warning-face ((t (:foreground "#8f8f8f"))))
 '(isearch ((t (:background "#343434" :foreground "#857b6f"))))
 '(lazy-highlight ((t (:background "#384048" :foreground "#a0a8b0"))))
 '(link ((t (:foreground "#8ac6f2" :underline t))))
 '(link-visited ((t (:foreground "#e5786d" :underline t))))
 '(button ((t (:background "#444444" :foreground "#f6f3e8" :underline t :weight bold))))
 '(header-line ((t (:background "#303030" :foreground "#e7f6da"))))
 '(default ((t (:background "#171717" :foreground "#f6f6f6")))))

;; powerlines - looks cool
(defun arrow-right-xpm (color1 color2)
  "Return an XPM right arrow string representing."
  (format "/* XPM */
static char * arrow_right[] = {
\"12 18 2 1\",
\". c %s\",
\"  c %s\",
\".           \",
\"..          \",
\"...         \",
\"....        \",
\".....       \",
\"......      \",
\".......     \",
\"........    \",
\".........   \",
\".........   \",
\"........    \",
\".......     \",
\"......      \",
\".....       \",
\"....        \",
\"...         \",
\"..          \",
\".           \"};"  color1 color2))

(defun arrow-left-xpm (color1 color2)
  "Return an XPM right arrow string representing."
  (format "/* XPM */
static char * arrow_right[] = {
\"12 18 2 1\",
\". c %s\",
\"  c %s\",
\"           .\",
\"          ..\",
\"         ...\",
\"        ....\",
\"       .....\",
\"      ......\",
\"     .......\",
\"    ........\",
\"   .........\",
\"   .........\",
\"    ........\",
\"     .......\",
\"      ......\",
\"       .....\",
\"        ....\",
\"         ...\",
\"          ..\",
\"           .\"};"  color2 color1))


(defvar mode-line-show-minor-modes nil)

(let*
    ((color1 "#000")
     (color2 "#111"))

  (setq arrow-right-1 (create-image (arrow-right-xpm color1 color2) 'xpm t :ascent 'center))
  (setq arrow-right-2 (create-image (arrow-right-xpm color2 "None") 'xpm t :ascent 'center))
  (setq arrow-left-1  (create-image (arrow-left-xpm color2 color1) 'xpm t :ascent 'center))
  (setq arrow-left-2  (create-image (arrow-left-xpm "None" color2) 'xpm t :ascent 'center))

  (setq-default mode-line-format
                (list  '(:eval (concat (propertize " %* %I %b" 'face 'mode-line-color-1)
                                       (propertize " " 'display arrow-right-1)))
                       '(:eval (concat (propertize " %[%m%] " 'face 'mode-line-color-2
                                                   'mouse-face 'mode-line-color-2
                                                   'local-map (make-mode-line-mouse-map
                                                               'mouse-1 (lambda () (interactive)
                                                                          (setq mode-line-show-minor-modes
                                                                                (not mode-line-show-minor-modes))
                                                                          (redraw-modeline))))
                                       (propertize " " 'display arrow-right-2)))

                       '(:eval (if mode-line-show-minor-modes mode-line-modes
                                 global-mode-string))

                       ;; Justify right by filling with spaces to right fringe - 16
                       ;; (16 should be computed rather than hardcoded)
                       '(:eval (propertize " " 'display '((space :align-to (- right-fringe 20)))))

                       '(:eval (concat (propertize " " 'display arrow-left-2)
                                       (propertize " %6p " 'face 'mode-line-color-2)))
                       '(:eval (concat (propertize " " 'display arrow-left-1)
                                       (propertize "%4l:%2c      " 'face 'mode-line-color-1)))
                       ))

  (make-face 'mode-line-color-1)
  (set-face-attribute 'mode-line-color-1 nil
                      :foreground "#FFE64D"
                      :background color1)

  (make-face 'mode-line-color-2)
  (set-face-attribute 'mode-line-color-2 nil
                      :foreground "#DF740C"
                      :background color2)

  (set-face-attribute 'mode-line nil
                      :foreground "#6FC3DF"
                      :background "#222"
                      :box nil)
  (set-face-attribute 'mode-line-inactive nil
                      :foreground "#6FC3DFf"
                      :background color2))

(provide 'conf-modeline)

(provide-theme 'Greyhound)
