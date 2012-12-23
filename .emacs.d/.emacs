;; Gotta look good
;; also have to load before viper mode, it changes the cursor color if not
(load "~/.emacs.style")
(load "~/.emacs.noexternals")
(load "~/.emacs.externals") 
(load "~/.emacs.externals_tools") 
(load "~/.emacs.methods")
(add-hook 'after-init-hook '(lambda ()
  (load "~/.emacs.loadpackages2")
  (ad-activate 'isearch-search)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (Greyhound)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#242424" :foreground "#f6f3e8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "bitstream" :family "Courier 10 Pitch")))))
