;; Load packages for emacs 24. Keep package-based stuff separate in loadpackages
;; someday I may want a "bare" emacs file

;; C-c <key> is reserved for the user?
;; http://www.reddit.com/r/emacs/comments/1kzv76/looking_for_free_keys_to_occupy/

;; don't add newline
(setq require-final-newline nil)

;; Remove GTK dialog boxes
(setq use-dialog-box nil)

;; Remove scrollbars, menu bars, and toolbars
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; no lockfiles
(setq create-lockfiles nil)

;; backup files belongs in it's own directory
(setq auto-save-file-name-transforms
      `((".*", temporary-file-directory t)))

;; No splash screen
(setq inhibit-startup-message t)

;; code to instantiate viper
; (setq viper-mode t)
; (require 'viper)
; (global-unset-key (kbd "C-z"))

;; uniquify (prefix names)
(require 'uniquify)
(setq
  uniquify-buffer-name-style 'forward
)

;; dvorak
(defadvice switch-to-buffer (after activate-input-method activate)
  (activate-input-method "english-dvorak")
  (set-input-method "english-dvorak"))
;; Set font size
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Adding in hideshow
(load-library "hideshow")
(add-hook 'python-mode-hook 'hs-minor-mode)

;; change the filename collisions in emacs
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; ido (listing of file in a directory in minibuffer)

(require 'ido)
(ido-mode 'both)

;; Keybindings

;; Whitespace mode
(global-set-key (kbd "C-c h") 'whitespace-mode)

;; Initiate viper mode
(global-set-key (kbd "C-c C-v") 'viper-mode)

;; Wind-move
(global-set-key (kbd "C-x C-l") 'windmove-right)
(global-set-key (kbd "C-x C-h") 'windmove-left)
(global-set-key (kbd "C-x C-k") 'windmove-up)
(global-set-key (kbd "C-x C-j") 'windmove-down)

;; better indenting
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;; Python-mode
(add-hook 'python-mode-hook '(lambda ()
 (setq python-indent 4)))

;; Hippie-expand (haven't really used it yet)

(global-set-key (kbd "C-x C-;") 'hippie-expand)

;; File search, doesn't really work like I want it to
;; (global-set-key (kbd "C-x C-g") 'find-name-dired)


;; Start a terminal, also doesn't work perfectly

(global-set-key (kbd "C-c C-t") 'ansi-term)

;; Set octave major mode for m files
(add-to-list
    'auto-mode-alist
    '("\\.m$" . octave-mode))

;; Asks if you want emacs asked before closing
(defun ask-before-closing ()
  "Ask whether or not to close, and then close if y was pressed"
  (interactive)
  (if (y-or-n-p (format "Are you sure you want to exit Emacs? "))
      (if (< emacs-major-version 22)
          (save-buffers-kill-terminal)
        (save-buffers-kill-emacs))
    (message "Canceled exit")))

(when window-system
  (global-set-key (kbd "C-x C-c") 'ask-before-closing))

;; Associate .emacs files to lisp-mode
(add-to-list 'auto-mode-alist '("\\.emacs.*$" . emacs-lisp-mode))

;; mapping find files recursive to a key for now

(global-set-key (kbd "C-x g") 'find-name-dired)

;; Remap M-x to the proper command
(global-set-key (kbd "M-x") 'execute-extended-command)

;; sets a map for linum mode
;; also disables the annoying Ctrl Z which returns me to regular emacs from viper
;; (define-prefix-command 'toumorokoshi-custom-map)
;; (global-set-key (kbd "C-z") 'toumorokoshi-custom-map)
;; (global-set-key (kbd "C-z C-l") 'linum-mode)
(add-hook 'find-file-hook (lambda () (linum-mode 1)))
(global-linum-mode 1)

;; truncate long lines
(set-default 'truncate-lines t)

;; add whack whitespace
(global-set-key "\C-l" 'my-whack-whitespace)

;; prefer utf-8
(prefer-coding-system 'utf-8)

;; activate winner-mode
;; http://www.emacswiki.org/emacs/WinnerMode
(winner-mode 1)

;; save the last place I visited in the buffer
(require 'saveplace)
(setq-default save-place t)


;; cleanup whitespace on save (whitespace.el)
;; this removes trailing whitespace on lines,
;; leading and trailing newlines
(add-hook 'before-save-hook 'whitespace-cleanup)

;; adding 'indentation' replaces all tabs with spaces. We don't necessarily want that.
(setq whitespace-style
'(
  face
  tabs
  spaces
  trailing
  lines
  space-before-tab
  newline
  empty
  space-after-tab
  space-mark
  tab-mark
  newline-mark
 )
)

;; making indent-region a common thing
(global-set-key (kbd "C-c i") 'indent-region)

;; connect to znc
(defun my-znc ()
  "connect to my znc server"
  (interactive)
  (erc :server "tsutsumi.cloudapp.net" :port 48787 :nick "toumorokoshi")
)

;; set up keybindings that will set major modes
(global-set-key (kbd "C-c m p") 'python-mode)
