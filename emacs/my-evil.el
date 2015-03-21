; bringing back emacs keybindings
(add-hook 'prodigy-mode-hook 'evil-emacs-state)
(evil-set-initial-state 'magit-mode 'emacs)

;; let's disable keymaps we don't want.
;; basically, anything that uses C or M
(define-key evil-visual-state-map "\C-w" nil)
(define-key evil-normal-state-map (kbd "M-.") nil)
(define-key evil-normal-state-map "\C-t" nil)
(define-key evil-normal-state-map "\C-p" nil)
(define-key evil-normal-state-map "\C-n" nil)
