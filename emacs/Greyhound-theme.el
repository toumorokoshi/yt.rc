;; List of colors to use
(setq ght/tronyellow "#F9E30B")
(setq ght/tronblue "#81E7F8")
(setq ght/tronred "#E25A35")
(setq ght/matrixgreen "#00CC00")
(setq ght/gray-black "#444444")
(setq ght/black "#000000")


(deftheme Greyhound
  "Created 2013-04-24.")
(let ((special-fg '(:foreground ,ght/tronyellow))
      (special-second-fg '(:foreground ,ght/tronblue))
      (special-bg '(:background ,ght/gray-black))
      (special-second-bg '(:background ,ght/black))
     )

(custom-theme-set-faces
 'Greyhound
 '(cursor ((t (:background "#AAAAAA" :foreground "#f6f3e8"))))
 '(region ((t (:background "#444444" :foreground "#f6f3e8"))))
 '(mode-line ((t (:background "#444444" :foreground "#FFE64D" :box (:color "#444444" :line-width 6)))))
 '(mode-line-inactive ((t (:background "#444444" :foreground "#6FC3DF" :box (:color "#444444" :line-width 6)))))
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
 ;; faces for powerline
 '(powerline-active1 ((t (,@special-fg ,@special-second-bg :inherit mode-line))))
 '(powerline-active2 ((t (,@special-second-fg ,@special-bg :inherit mode-line))))
 '(powerline-inactive1 ((t (,@special-second-bg :inherit mode-line-inactive))))
 '(powerline-inactive2 ((t (,@special-bg :inherit mode-line-inactive))))
 '(default ((t (:background "#171717" :foreground "#f6f6f6" :height 100)))))
)

(provide-theme 'Greyhound)
