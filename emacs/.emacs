;; Gotta look good
;; also have to load before viper mode, it changes the cursor color if not
(setq debug-on-error t)
(load "~/.emacs.d/.emacs.externals") 
(load "~/.emacs.d/.emacs.externals_tools") 
(load "~/.emacs.d/.emacs.methods")
(add-hook 'after-init-hook '(lambda ()
  (load "~/.emacs.d/.emacs.loadpackages")
  (load "~/.emacs.d/.emacs.style")
  (load "~/.emacs.d/.emacs.noexternals")
  (ad-activate 'isearch-search)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(custom-safe-themes (quote ("0d2ab3c541a7e7001a7426e0f1413ffef2c8af044a88832d9bcb203e3b61bb6e" "13d7d71a36aa3bc82dba0d2a91246c31549e8d398d785f19b5b8306973b83bbc" "c280006cda0e03d2eee3b0f3a2b79e52b2c012c247bd9b6ba29375fd90a057b0" default)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(default ((t (:inherit nil :stipple nil :background "#242424" :foreground "#f6f3e8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "bitstream" :family "Courier 10 Pitch")))))
(put 'set-goal-column 'disabled nil)
