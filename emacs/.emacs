;; Gotta look good
;; also have to load before viper mode, it changes the cursor color if not
(setq debug-on-error t)
(load "~/.emacs.d/my-methods.el")
(add-hook 'after-init-hook '(lambda ()
  (load "~/.emacs.d/my-loadpackages.el")
  (load "~/.emacs.d/my-noexternals.el")
  (load "~/.emacs.d/my-style.el")
  (load "~/.emacs.d/my-themes.el")
  (random-theme)
  (ad-activate 'isearch-search)))
(put 'set-goal-column 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("e49b9cfa39ce92b424a30cbd74386a5fcb854195cf1a8e18536388cbc2179bf6" "ded04bcde871f28b0dac99251af8b7515f99e313db4abe76cac5536d0d11f70e" "f0ea6118d1414b24c2e4babdc8e252707727e7b4ff2e791129f240a2b3093e32" default)))
 '(flycheck-flake8-maximum-line-length 1000)
 '(flycheck-clang-language-standard "c++11"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
