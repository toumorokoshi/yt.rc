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
 '(tool-bar-mode nil))
(put 'set-goal-column 'disabled nil)
