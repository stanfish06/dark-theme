(require 'dark-colors)

(defun dark-faces-diff ()
  "Face specs for diff and compilation faces."
  (dark-with-colors
   (list
    `(diff-added ((t (:foreground ,neutral-green :background ,bg))))
    `(diff-removed ((t (:foreground ,neutral-red :background ,bg))))
    `(diff-changed ((t (:foreground ,neutral-blue :background ,bg))))
    `(diff-header ((t (:foreground ,gray16 :background ,bg))))
    `(diff-file-header ((t (:foreground ,fg :weight bold))))
    `(diff-refine-added
      ((t (:foreground ,bright-green :background ,gray11))))
    `(diff-refine-removed
      ((t (:foreground ,bright-red :background ,gray11))))
    `(diff-refine-changed
      ((t (:foreground ,bright-blue :background ,gray11))))
    `(compilation-info ((t (:foreground ,neutral-green))))
    `(compilation-warning ((t (:foreground ,neutral-yellow))))
    `(compilation-error ((t (:foreground ,neutral-red)))))))

(provide 'dark-faces-diff)
