; elpy
(elpy-enable)

; with elpy, it's worth noting that you need some sort of autocomplete python
; library available to you. I suggest jedi, following this posts sentiments:
; http://jedidjah.ch/code/2013/1/19/why_jedi_not_rope/

; removing yasnippet: I prefer my own snippets
(delq 'elpy-module-yasnippet elpy-modules)

;; jedi requires the 'jedi' and 'elpy' packages in the virtualenv as well
(setq elpy-rpc-backend "jedi")

;; ipython is nice
(elpy-use-ipython)

;; I'd prefer to just have evil not override anything, but this works
;; ok.
(evil-make-overriding-map elpy-mode-map nil)

(defun virtualenv-workon (root)
  (interactive "DVirtualenv Root: ")
  (pyvenv-activate root)
  (elpy-set-project-root root)
  (elpy-rpc-restart)
)

(define-key python-mode-map (kbd "C-c C-g C-v") 'virtualenv-workon)

(defadvice auto-complete-mode (around disable-auto-complete-for-python)
  (unless (eq major-mode 'python-mode) ad-do-it))

(ad-activate 'auto-complete-mode)
