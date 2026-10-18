(defun dark-faces-syntax ()
  "Face specs for font-lock faces."
  (dark-with-colors
   (list
    `(font-lock-comment-face
      ((t (:foreground ,gray14 :slant italic))))
    `(font-lock-comment-delimiter-face
      ((t (:inherit font-lock-comment-face))))
    `(font-lock-doc-face
      ((t
        (:foreground ,faded-aqua :background ,gray12 :slant italic))))
    `(font-lock-string-face ((t (:foreground ,green))))
    `(font-lock-keyword-face ((t (:foreground ,yellow))))
    `(font-lock-builtin-face ((t (:foreground ,nord))))
    `(font-lock-function-name-face ((t (:foreground ,nord))))
    `(font-lock-variable-name-face ((t (:foreground ,cool-gray))))
    `(font-lock-type-face ((t (:foreground ,purple))))
    `(font-lock-constant-face ((t (:foreground ,coral-red))))
    `(font-lock-warning-face
      ((t (:foreground ,faded-orange :weight bold))))
    `(font-lock-negation-char-face ((t (:foreground ,fg))))
    `(font-lock-preprocessor-face ((t (:foreground ,gray17))))
    `(font-lock-regexp-grouping-backslash ((t (:weight bold))))
    `(font-lock-regexp-grouping-construct ((t (:weight bold))))
    `(font-lock-number-face ((t (:foreground ,fg :weight bold))))
    `(font-lock-bracket-face ((t (:foreground ,fg))))
    `(font-lock-delimiter-face ((t (:foreground ,fg))))
    `(font-lock-escape-face ((t (:foreground ,green))))
    `(font-lock-misc-punctuation-face ((t (:foreground ,fg))))
    `(font-lock-operator-face ((t (:foreground ,fg))))
    `(font-lock-property-name-face ((t (:foreground ,gray16))))
    `(font-lock-property-use-face ((t (:foreground ,gray16))))
    `(font-lock-punctuation-face ((t (:foreground ,fg))))
    `(font-lock-variable-use-face ((t (:foreground ,cool-gray))))
    `(font-lock-function-call-face ((t (:foreground ,nord))))
    `(font-lock-doc-markup-face ((t (:foreground ,coral-red)))))))

(provide 'dark-faces-syntax)
