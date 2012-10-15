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
