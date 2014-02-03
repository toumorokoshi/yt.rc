; emacs themes I use

(defvar toumorokoshi-themes
  '(
    afternoon
    Greyhound
    deeper-blue
    ) "A list of themes to switch between" )

(defun random-theme()
  "load a random theme"
  (interactive)
  (let ((theme (elt toumorokoshi-themes (random (length toumorokoshi-themes)))))
    (message "choosing theme %s" theme)
    (load-theme theme)
  )
)
