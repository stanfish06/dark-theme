(defun dark-faces-org ()
  "Face specs for org and markdown faces."
  (dark-with-colors
   (list
    `(org-level-1 ((t (:foreground ,fg :weight bold))))
    `(org-level-2 ((t (:foreground ,gray18 :weight bold))))
    `(org-level-3 ((t (:foreground ,gray17 :weight bold))))
    `(org-level-4 ((t (:foreground ,gray16))))
    `(org-level-5 ((t (:foreground ,gray15))))
    `(org-level-6 ((t (:foreground ,gray14))))
    `(org-level-7 ((t (:foreground ,gray14))))
    `(org-level-8 ((t (:foreground ,gray14))))
    `(org-link ((t (:foreground ,bright-blue :underline t))))
    `(org-todo ((t (:foreground ,faded-yellow :weight bold))))
    `(org-done ((t (:foreground ,faded-green :weight bold))))
    `(org-code ((t (:foreground ,gray16))))
    `(org-verbatim ((t (:foreground ,gray16))))
    `(org-block ((t (:background ,gray1 :foreground ,fg :extend t))))
    `(org-block-begin-line
      ((t (:foreground ,gray14 :background ,gray1 :extend t))))
    `(org-block-end-line
      ((t (:foreground ,gray14 :background ,gray1 :extend t))))
    `(markdown-header-face-1 ((t (:foreground ,fg :weight bold))))
    `(markdown-header-face-2 ((t (:foreground ,gray18 :weight bold))))
    `(markdown-header-face-3 ((t (:foreground ,gray17 :weight bold))))
    `(markdown-link-face ((t (:foreground ,bright-blue))))
    `(markdown-url-face ((t (:foreground ,bright-blue :underline t))))
    `(markdown-code-face ((t (:foreground ,fg :background ,gray8))))
    `(markdown-inline-code-face ((t (:foreground ,fg)))))))

(provide 'dark-faces-org)
