;; Setup ELPA package sources
(require 'cl)

;; loading package list from another directory
(load "~/.emacs.d/my-packages.el")

;; flycheck-mode
(require 'flycheck)
(global-flycheck-mode)

;; rainbow-mode
;; (defun all-css-modes() (css-mode) (rainbow-mode))
;; (add-to-list 'auto-mode-alist '("\\.css$" . all-css-modes))

;; highlight-indentation
(add-hook 'python-mode-hook 'highlight-indentation-mode)
;; yaml-mode
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))
;; autocomplete
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;; (setq ac-max-width 0.5)
(require 'auto-complete-config)
(ac-config-default)

;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)
(yas-load-directory "~/.emacs.d/snippets")
(add-hook 'term-mode-hook (lambda()
        (setq yas-dont-activate t)))
;; add snippets to autocomplete.el
(setq ac-sources '(ac-source-semantic ac-source-yasnippet))

;; js2-mode
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; Mark-multiple

;; Changes Auctex to PDF mode by default
(setq TeX-PDF-mode t)

;; Bind helm-for-files to c-c c-f
(require 'helm-files)
(setq helm-idle-delay 0.01)
(setq helm-input-idle-delay 0.01)
;; (loop for ext in '(".elc$", ".pyc$")
;;  do (add-to-list 'helm-c-boring-file-regexp-list ext))
;; (add-to-list 'helm-c-boring-file-regexp-list "\.pyc$")

(defcustom helm-for-files-preferred-list
  '(helm-source-buffers-list
    helm-source-recentf
    helm-source-bookmarks
    helm-source-file-cache
    helm-source-files-in-current-dir
    helm-source-locate)
  "Your preferred sources to find files."
  :type '(repeat (choice symbol))
  :group 'helm-files)

(defun helm-tsutsumi-files ()
  "Custom helm find file search"
  (interactive)
  (let ((helm-ff-transformer-show-only-basename nil))
    (helm-other-buffer helm-tsutsumi-files-preferred-list "*Helm Tsutsumi Files")))

(define-key global-map (kbd "C-c C-f") 'helm-for-files)

;; visual-regexp
(require 'visual-regexp)
(define-key global-map (kbd "C-c r") 'vr/replace)
(define-key global-map (kbd "C-c q") 'vr/query-replace)

;; magit keybinding
(require 'magit)
(define-key global-map (kbd "C-c g s") 'magit-status)
(define-key global-map (kbd "C-c g p") 'magit-pull)
(define-key global-map (kbd "C-c g b") 'magit-blame-mode)
(define-key global-map (kbd "C-c g l") 'magit-log)
(define-key global-map (kbd "C-c g c") 'magit-checkout)

;; go stuff
(require 'go-autocomplete)

;; multiple cursors
(require 'multiple-cursors)
(define-key global-map (kbd "C-c n") 'mc/mark-all-like-this)
(define-key global-map (kbd "M-n") 'mc/mark-next-lines)

;; ace-jump-mode
(require 'ace-jump-mode)
(define-key global-map (kbd "C-c a") 'ace-jump-mode)

;; Golden Ratio mode
;; (require 'golden-ratio)
;; (golden-ratio-enable)

(require 'linum-relative)
(linum-mode 1)

;; get my powerline on
;; (require 'powerline)
;; (powerline-default-theme)
;; (add-to-list 'load-path "~/Workspace/go-snippets")
;; (require 'go-snippets)
(require 'ido-vertical-mode)
(ido-vertical-mode)
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-use-faces nil)

;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.handlebars\\'" . web-mode))
(setq web-mode-engine-alist
      '(("django" . "\\.html\\'")))

;; p4-mode, for when it exists
(when (require 'p4 nil t)
  (require 'p4)
)

;; butler-mode, for when it exists
(when (require 'butler nil t)
  (require 'butler)
)

;; emmet-mode
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'web-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.

; projectile-mode
; (projectile-global-mode)
; use indexing
; (setq projectile-indexing-method 'native)
; force caching
; (setq projectile-enable-caching)

; fiplr
(require 'fiplr)
(global-set-key (kbd "C-x C-g") 'fiplr-find-file)

; load prodigy packages
(require 'prodigy)
(load "~/.emacs.d/my-prodigy.el")

; evil?
(require 'evil)
(evil-mode 1)
; evil needs it's own file, for sure.
(load "~/.emacs.d/my-evil.el")


; elpy
(elpy-enable)

; haskell-mode
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
