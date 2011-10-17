(add-to-list 'load-path "~/.emacs.d/")

;; Nyancat!
(add-to-list 'load-path "~/Workspace/nyan-mode")
(require 'nyan-mode)

;; Give this a shot
(global-set-key (kbd "C-x C-g") 'find-name-dired)

;; starting Viper 
(setq viper-mode t)
(require 'viper)

;; whitespace.el
(require 'whitespace)

;; initializing php-mode 
(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))

;; python-mode settings
(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist(cons '("python" . python-mode)
                             interpreter-mode-alist))
;; path to the python interpreter, e.g.: ~rw/python27/bin/python2.7
(setq py-python-command "python")
(autoload 'python-mode "python-mode" "Python editing mode." t)

;; pymacs settings
(setq pymacs-python-command py-python-command)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")

(require 'pycomplete)

;;Custom Settings and Bindings
(global-set-key (kbd "C-x C-l") 'windmove-right)
(global-set-key (kbd "C-x C-h") 'windmove-left)
(global-set-key (kbd "C-x C-k") 'windmove-up)
(global-set-key (kbd "C-x C-j") 'windmove-down)
(global-set-key (kbd "C-x C-;") 'hippie-expand)
(setq-default indent-tabs-mode nil)
(global-set-key (kbd "C-c C-t") 'ansi-term)

;; Starting yasnippet
(add-to-list 'load-path "~/.emacs.d/yasnippet-0.6.1c")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/yasnippet-0.6.1c/snippets")


(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)

(load-library "hideshow")
(add-hook 'python-mode-hook 'hs-minor-mode)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(jabber-chat-buffer-show-avatar t)
 '(jabber-roster-line-format "%c %-25n %u %-8s  %S")
 '(jabber-roster-show-bindings nil)
 '(jabber-roster-show-title nil)
 '(tab-stop-list (quote (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))))

;; This is for jabber
(add-to-list 'load-path "~/.emacs.d/jabber")
(require 'jabber-autoloads)
(setq jabber-account-list
      '(("tsutsumi.yusuke@gmail.com"
        (:network-server . "talk.google.com")
        (:connection-type . ssl))))


(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(require 'windata)
(require 'tree-mode)
(require 'dirtree)

