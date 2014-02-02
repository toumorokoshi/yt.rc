;; this package is for various methods
(require 'cl)

;; wraps search automatically
(defadvice isearch-search (after isearch-no-fail activate)
  (unless isearch-success
    (ad-disable-advice 'isearch-search 'after 'isearch-no-fail)
    (ad-activate 'isearch-search)
    (isearch-repeat (when isearch-forward 'forward))
    (ad-enable-advice 'isearch-search 'after 'isearch-no-fail)
    (ad-activate 'isearch-search)))

;; check if string is an integer
(defun string-integer-p (string)
  (if (string-match "\\`[-+]?[0-9]+\\'" string)
      t
    nil))

;; Decrement Int
(defun decrement ()
  "Decrement the integer that the cursor is on."
  (interactive)
  (let ((x (thing-at-point 'symbol)))
    (when (string-integer-p x)
      (let ((x-int (string-to-number x))
            (bds (bounds-of-thing-at-point 'symbol)))
        (progn 
          (delete-region (car bds) (cdr bds))
          (insert (number-to-string (- x-int 1)))
        )
      )
    )
  )
)

;; Increment Int
(defun increment ()
  "Increment the integer that the cursor is on."
  (interactive)
  (let ((x (thing-at-point 'symbol)))
    (when (string-integer-p x)
      (let ((x-int (string-to-number x))
            (bds (bounds-of-thing-at-point 'symbol)))
        (progn 
          (delete-region (car bds) (cdr bds))
          (insert (number-to-string (+ x-int 1)))
        )
      )
    )
  )
)


;; https://github.com/benma/emacs.d/blob/a22f73ee26473bf94775f04c3f969523f6bbb145/init.el#L333
(defun whack-whitespace ()
  "Delete all white space from point to the next word."
  (interactive nil)
  (when (re-search-forward "[ \t\n]+" nil t)
    (replace-match "" nil nil)))

(defun align-repeat (start end regexp)
  "Repeat alignment with respect to 
     the given regular expression."
  (interactive "r\nsAlign regexp: ")
  (align-regexp start end 
                (concat "\\(\\s-*\\)" regexp) 1 1 t))


;; adding stuff to run command after hook and to remove them
(setq command-buffer-hooks (make-hash-table))

(defun command-buffer-kill-hook () 
  "Remove a key from <command-buffer-hooks> if it exists"
  (remhash (buffer-file-name) command-buffer-hooks)
)

(defun command-buffer-run-hook ()
  "Run a command if it exists in the hook"
  (let ((hook (gethash (buffer-file-name) command-buffer-hooks)))
    (when (not (eq hook nil))
        (shell-command hook)
    )
  )
)

;; add hooks
(add-hook 'kill-buffer-hook 'command-buffer-kill-hook)
(add-hook 'after-save-hook 'command-buffer-run-hook)


(defun command-on-save-buffer (c)
  "Run a command <c> every time the buffer is saved "
  (interactive "sShell command: ")
  (puthash (buffer-file-name) c command-buffer-hooks)
)
