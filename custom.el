(custom-set-faces)
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 

(setq auto-mode-alist (delete '("\\.ts\\'" . typescript-tsx-mode) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("\\.java\\'" . java-mode))

;; Keybinds
;; Moving windows
(global-set-key (kbd "M-l") 'evil-window-right)
(global-set-key (kbd "M-h") 'evil-window-left)
(global-set-key (kbd "M-j") 'evil-window-down)
(global-set-key (kbd "M-k") 'evil-window-up)
(global-set-key (kbd "M-C-l") '+evil/window-move-right)
(global-set-key (kbd "M-C-h") '+evil/window-move-left)
(global-set-key (kbd "M-C-j") '+evil/window-move-down)
(global-set-key (kbd "M-C-k") '+evil/window-move-up)
(global-set-key (kbd "M-L") 'evil-window-increase-width)
(global-set-key (kbd "M-H") 'evil-window-decrease-width)
(global-set-key (kbd "M-J") 'evil-window-decrease-height)
(global-set-key (kbd "M-K") 'evil-window-increase-height)
(global-set-key (kbd "M-v") 'unbind-key)
(global-set-key (kbd "M-v") 'split-window-vertically)
(global-set-key (kbd "M-s") 'unbind-key)
(global-set-key (kbd "M-s") 'split-window-horizontally)

;; Blink the cursor
(global-set-key (kbd "M-G") 'unbind-key)
(global-set-key (kbd "M-G") 'beacon-blink)
;; Open bookmarks
(global-set-key (kbd "M-c") 'treemacs-switch-workspace)
;; Toggling vterm
(global-set-key (kbd "s-x") '+vterm/toggle)

;; Organize and import java imports
(global-set-key (kbd "C-x C-u") 'lsp-java-organize-imports)

(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))

(setq doom-theme 'doom-dark+)

;; Beacon config
(beacon-mode 1)
