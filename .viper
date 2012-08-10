;; Level 3 and 5 doesn't really make a difference to me
(setq viper-expert-level '3)
(setq viper-inhibit-startup-message 't)

;; Folding Hotkeys

(define-key viper-vi-global-user-map "zt" 'hs-toggle-hiding)
(define-key viper-vi-global-user-map "zM" 'hs-hide-all)
(define-key viper-vi-global-user-map "zm" 'hs-hide-block)
(define-key viper-vi-global-user-map "zR" 'hs-show-all)
(define-key viper-vi-global-user-map "zR" 'hs-show-block)
(define-key viper-vi-global-user-map "/" 'isearch-forward-regexp)

;; Makes viper use regex search by default
;; doing a search twice switches it to normal search
(setq viper-re-search t) ; don't touch or else...

;; Adds the "zz" for recentering lines (C-l in Emacs)
(define-key viper-vi-global-user-map "zz" 'recenter)


;; Change shift-width to 4
(setq viper-shift-width 4) ; don't touch or else...
