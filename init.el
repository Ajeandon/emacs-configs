;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit thatfile with C-x C-f,
;; then enter the text in that file's own buffer.

;; CUSTOM THEMES 
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)

 (setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://stable.melpa.org/packages/")))




(add-to-list 'load-path "~/.emacs.d/elpa/tabbar-2.2")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(global-linum-mode t)
 '(linum-format (quote dynamic))
 '(package-selected-packages
   (quote
    (buffer-move nyan-mode web-mode treemacs tabbar php-mode neotree move-text evil-visual-mark-mode emmet-mode doom-themes company)))
 '(tabbar-background-color nil)
 '(tabbar-mode t nil (tabbar))
 '(tabbar-separator (quote (0.2))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#282a36" :foreground "#f8f8f2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 128 :width normal :foundry "DAMA" :family "Sans serif"))))
 '(buffer-menu-buffer ((t (:weight bold))))
 '(linum ((t (:background "#282a36" :foreground "#565761" :weight normal :width normal :family "sans-serif"))))
 '(mode-line ((t (:background "dodger blue" :box (:line-width 1 :color "#464752")))))
 '(php-variable-name ((t (:inherit font-lock-variable-name-face :foreground "dodger blue"))))
 '(php-variable-sigil ((t (:inherit default :foreground "dodger blue"))))
 '(tabbar-button ((t (:inherit tabbar-default :background "gray20" :box (:line-width 1 :color "white" :style released-button) :weight normal))))
 '(tabbar-default ((t (:inherit default :stipple "" :background "#282A57" :foreground "white" :box (:line-width 2 :color "grey75" :style released-button) :height 0.9 :width normal))))
 '(tabbar-selected ((t (:inherit tabbar-default :foreground "white" :box (:line-width 1 :color "white" :style pressed-button))))))


;;; tabbar navigation
(global-set-key [M-left] 'tabbar-backward-tab)
(global-set-key [M-right] 'tabbar-forward-tab)

;;; buffer move
(add-to-list 'load-path "~/.emacs.d/elpa/buffer-move-0.6.2")
(require 'buffer-move)
(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)

;;; move text
(global-set-key (kbd "<M-up>") 'move-text-up)
(global-set-key (kbd "<M-down>") 'move-text-down)

;;; resize window
(global-set-key (kbd "S-M-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-M-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-M-<down>") 'shrink-window)
(global-set-key (kbd "S-M-<up>") 'enlarge-window)
