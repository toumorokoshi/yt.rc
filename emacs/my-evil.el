; bringing back emacs keybindings
(define-key evil-visual-state-map "\C-w" 'kill-region)
(define-key evil-normal-state-map "\C-t" 'transpose-chars)
(define-key evil-normal-state-map "\C-p" 'previous-line)
(define-key evil-normal-state-map "\C-n" 'next-line)
(add-hook 'prodigy-mode-hook 'evil-emacs-state)
(evil-set-initial-state 'magit-mode 'emacs)
