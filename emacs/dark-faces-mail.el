(require 'dark-colors)

(defun dark-faces-mail ()
  "Face specs for mu4e, gnus and shr faces."
  (dark-with-colors
   (list
    `(mu4e-unread-face
      ((t (:foreground ,yellow-neural :underline t))))
    `(mu4e-header-highlight-face ((t (:foreground ,fg))))
    `(mu4e-header-key-face ((t (:foreground ,yellow))))
    `(mu4e-title-face ((t (:foreground ,fg))))
    `(gnus-header-name ((t (:foreground ,fg))))
    `(gnus-header-from ((t (:foreground ,gray17))))
    `(gnus-header-content ((t (:foreground ,gray17))))
    `(gnus-header-subject ((t (:foreground ,gray17))))
    `(shr-text ((t (:foreground ,fg :background ,gray10)))))))

(provide 'dark-faces-mail)
