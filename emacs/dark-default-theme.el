(deftheme dark-default)

(let ((dir (file-name-directory (or load-file-name buffer-file-name))))
  (dolist (module
           '("dark-colors"
             "dark-faces-ui"
             "dark-faces-syntax"
             "dark-faces-diff"
             "dark-faces-org"
             "dark-faces-mail"))
    (load (expand-file-name module dir) nil t)))

(apply #'custom-theme-set-faces
       'dark-default
       (append
        (dark-faces-ui)
        (dark-faces-syntax)
        (dark-faces-diff)
        (dark-faces-org)
        (dark-faces-mail)))

(provide-theme 'dark-default)
