(require 'dark-colors)

(defun dark-faces-ui ()
  "Face specs for UI, search, completion and whitespace faces."
  (dark-with-colors
   (list
    `(default
      ((t
        (:family
         "Iosevka"
         :width normal
         :height 140
         :weight normal
         :slant normal
         :foreground ,fg
         :distant-foreground ,gray12
         :background ,bg))))
    `(tab-line ((t (:foreground ,fg :background ,gray10))))
    `(tab-line-tab ((t (:foreground ,fg :background ,gray12))))
    `(tab-line-tab-active ((t (:foreground ,fg :background ,gray12))))
    `(tab-line-tab-inactive
      ((t (:foreground ,fg ,:background ,gray12))))
    `(tab-line-tab-current
      ((t (:weight bold :foreground ,bg ,:background ,faded-green))))
    `(tab-line-tab-highlight
      ((t (:foreground ,fg :background ,gray12))))
    `(cursor ((t (:background ,cursor-bg))))
    `(fixed-pitch ((t (:family "Monospace"))))
    `(variable-pitch ((t (:family "Sans Serif"))))
    `(fringe ((t (:background ,bg))))
    `(highlight ((t (:background ,gray11))))
    `(region ((t (:background ,dark-gray))))
    `(secondary-selection ((t (:background ,gray12))))
    `(trailing-whitespace ((t (:background ,faded-red))))
    `(shadow ((t (:foreground ,gray15))))
    `(escape-glyph ((t (:foreground ,faded-blue))))
    `(homoglyph ((t (:foreground ,faded-blue))))
    `(line-number
      ((t (:foreground ,gray16 :background ,bg :inherit 'default))))
    `(line-number-current-line
      ((t
        (:foreground
         ,yellow
         :background ,bg-alt
         :weight bold
         :inherit 'default))))
    `(hl-line ((t (:background ,bg-alt))))
    `(mode-line
      ((t
        (:family
         "DejaVu Sans Mono"
         :foreground ,fg
         :background ,gray12
         :box nil))))
    `(mode-line-inactive
      ((t
        (:family
         "DejaVu Sans Mono"
         :foreground ,gray16
         :background ,gray10
         :box nil))))
    `(mode-line-buffer-id ((t (:weight bold))))
    `(mode-line-emphasis ((t (:weight bold))))
    `(mode-line-highlight ((t (:background ,gray12))))
    `(isearch
      ((t (:foreground ,bg :background ,bright-blue :weight bold))))
    `(isearch-fail ((t (:background ,faded-red))))
    `(lazy-highlight ((t (:foreground ,bg :background ,faded-blue))))
    `(match ((t (:foreground ,bg :background ,gray16))))
    `(query-replace ((t (:inherit isearch))))
    `(link ((t (:foreground ,bright-blue :underline t))))
    `(link-visited ((t (:foreground ,faded-purple :underline t))))
    `(button ((t (:inherit link))))
    `(minibuffer-prompt ((t (:foreground ,fg :weight bold))))
    `(completions-common-part ((t (:foreground ,fg))))
    `(completions-first-difference
      ((t (:foreground ,yellow :weight bold))))
    `(header-line
      ((t (:foreground ,fg :background ,gray12 :box nil))))
    `(tooltip ((t (:foreground ,fg :background ,gray11))))
    `(error ((t (:foreground ,faded-red :weight bold))))
    `(warning ((t (:foreground ,faded-yellow :weight bold))))
    `(success ((t (:foreground ,faded-green :weight bold))))
    `(show-paren-match
      ((t (:foreground ,yellow-neural :weight bold :underline t))))
    `(show-paren-mismatch ((t (:foreground ,faded-red :weight bold))))
    `(whitespace-space ((t (:foreground ,gray11))))
    `(whitespace-tab ((t (:foreground ,gray11))))
    `(whitespace-newline ((t (:foreground ,gray11))))
    `(whitespace-trailing ((t (:background ,faded-red))))
    `(whitespace-line ((t (:background ,gray1))))
    `(next-error ((t (:inherit region))))
    `(vertical-border ((t (:foreground ,gray11)))))))

(provide 'dark-faces-ui)
