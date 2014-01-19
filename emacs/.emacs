;; Gotta look good
;; also have to load before viper mode, it changes the cursor color if not
(setq debug-on-error t)
(load "~/.emacs.d/.emacs.externals") 
;; (load "~/.emacs.d/.emacs.externals_tools") 
(load "~/.emacs.d/.emacs.methods")
(add-hook 'after-init-hook '(lambda ()
  (load "~/.emacs.d/.emacs.loadpackages")
  (load "~/.emacs.d/.emacs.style")
  (load "~/.emacs.d/.emacs.noexternals")
  (load "~/.emacs.d/.emacs.themes")
  (random-theme)
  (ad-activate 'isearch-search)))
(put 'set-goal-column 'disabled nil)
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(ansi-color-faces-vector
;;    [default bold shadow italic underline bold bold-italic bold])
;;  '(custom-safe-themes
;;    (quote
;;     ("e49b9cfa39ce92b424a30cbd74386a5fcb854195cf1a8e18536388cbc2179bf6" "ded04bcde871f28b0dac99251af8b7515f99e313db4abe76cac5536d0d11f70e" default)))
;;  '(fci-rule-color "#14151E")
;;  '(tool-bar-mode nil)
;;  '(vc-annotate-background nil)
;;  '(vc-annotate-color-map
;;    (quote
;;     ((20 . "#d54e53")
;;      (40 . "goldenrod")
;;      (60 . "#e7c547")
;;      (80 . "DarkOliveGreen3")
;;      (100 . "#70c0b1")
;;      (120 . "DeepSkyBlue1")
;;      (140 . "#c397d8")
;;      (160 . "#d54e53")
;;      (180 . "goldenrod")
;;      (200 . "#e7c547")
;;      (220 . "DarkOliveGreen3")
;;      (240 . "#70c0b1")
;;      (260 . "DeepSkyBlue1")
;;      (280 . "#c397d8")
;;      (300 . "#d54e53")
;;      (320 . "goldenrod")
;;      (340 . "#e7c547")
;;      (360 . "DarkOliveGreen3"))))
;;  '(vc-annotate-very-old-color nil))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("f0ea6118d1414b24c2e4babdc8e252707727e7b4ff2e791129f240a2b3093e32" "ded04bcde871f28b0dac99251af8b7515f99e313db4abe76cac5536d0d11f70e" "e49b9cfa39ce92b424a30cbd74386a5fcb854195cf1a8e18536388cbc2179bf6" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
