(deftheme alexandre
  "Created 2018-09-01.")

(custom-theme-set-variables
 'alexandre
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("melpa" . "https://stable.melpa.org/packages/")))))

(custom-theme-set-faces
 'alexandre
 '(minibuffer-prompt ((t (:foreground "#906cff"))))
 '(mode-line ((t (:background "dodger blue" :box nil)))))

(provide-theme 'alexandre)
