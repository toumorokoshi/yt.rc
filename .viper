(setq viper-expert-level '3)
(setq viper-inhibit-startup-message 't)

(define-key viper-vi-global-user-map "zt" 'hs-toggle-hiding)
(define-key viper-vi-global-user-map "zM" 'hs-hide-all)
(define-key viper-vi-global-user-map "zm" 'hs-hide-block)
(define-key viper-vi-global-user-map "zR" 'hs-show-all)
(define-key viper-vi-global-user-map "zR" 'hs-show-block)


(setq viper-shift-width 4) ; don't touch or else...
