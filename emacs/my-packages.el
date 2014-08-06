;; defining the list of packages I want
;; this is a change.
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(defvar toumorokoshi-packages
  '(
    ace-jump-mode
    afternoon-theme
    anything
    auto-complete
    butler
    color-theme
    emmet-mode
    elpy
    erlang
    evil
    dired+
    fiplr
    flx
    flx-ido
    flycheck
    flymake-cursor
    go-autocomplete
    go-mode
    go-snippets
    golden-ratio
    hackernews
    helm
    highlight-indentation
    ido-vertical-mode
    js2-mode
    less-css-mode
    linum-relative
    markdown-mode
    magit
    multiple-cursors
    powerline
    popwin
    prodigy
    projectile
    scala-mode2
    rainbow-mode
    visual-regexp
    web-mode
    yaml-mode
    yasnippet
   ) "A list of packages to ensure are installed at launch.")

;; http://stackoverflow.com/questions/10092322/how-to-automatically-install-emacs-packages-by-specifying-a-list-of-package-name
(setq url-http-attempt-keepalives nil)

(defun packages-installed-p ()
  (loop for p in toumorokoshi-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p toumorokoshi-packages)
    (when (not (package-installed-p p))
      (package-install p))))
