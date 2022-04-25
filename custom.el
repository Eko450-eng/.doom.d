(setq auto-mode-alist (delete '("\\.ts\\'" . typescript-tsx-mode) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("\\.java\\'" . java-mode))

;; Keybinds
;; Moving windows
(global-set-key (kbd "M-l") 'evil-window-right)
(global-set-key (kbd "M-h") 'evil-window-left)
(global-set-key (kbd "M-j") 'evil-window-down)
(global-set-key (kbd "M-k") 'evil-window-up)

(global-set-key (kbd "M-L") '+evil/window-move-right)
(global-set-key (kbd "M-H") '+evil/window-move-left)
(global-set-key (kbd "M-J") '+evil/window-move-down)
(global-set-key (kbd "M-K") '+evil/window-move-up)

(global-set-key (kbd "M-C-l") 'evil-window-increase-width)
(global-set-key (kbd "M-C-h") 'evil-window-decrease-width)
(global-set-key (kbd "M-C-j") 'evil-window-decrease-height)
(global-set-key (kbd "M-C-k") 'evil-window-increase-height)

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
(global-set-key (kbd "s-x") 'vterm-toggle)

;; Open vterm at bottom
(setq vterm-toggle-fullscreen-p nil)
(add-to-list 'display-buffer-alist
             '((lambda(bufname _) (with-current-buffer bufname
                                   (or (equal major-mode 'vterm-mode)
                                       (string-prefix-p vterm-buffer-name bufname))))
               (display-buffer-reuse-window display-buffer-at-bottom)
               (window-height . 0.2)))

;; Organize and import java imports
;; (global-set-key (kbd "C-x C-u") 'lsp-java-organize-imports)

;; Anything else
(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))

(setq doom-theme 'doom-dark+)

;; Enable packages
(beacon-mode 1)

;; Org mode
(setq org-hide-emphasis-markers t)

(font-lock-add-keywords 'org-mode
                        '(("^ *\\([-]\\) "
                           (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(use-package fira-code-mode
  :custom (fira-code-mode-disabled-ligatures '("[]" "</" "#{" "#(" "#_" "#_(" "x")) ;; List of ligatures to turn off
  :hook prog-mode) ;; Enables fira-code-mode automatically for programming major modes

(setq js2-mode-show-strict-warnings nil)

;; (use-package tide
;;   :after (typescript-mode company flycheck)
;;   :hook ((typescript-mode . tide-setup)
;;          (typescript-mode . tide-hl-identifier-mode)
;;          (before-save . tide-format-before-save)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#1e1e1e" "#D16969" "#579C4C" "#D7BA7D" "#339CDB" "#C586C0" "#85DDFF" "#d4d4d4"])
 '(custom-safe-themes
   '("e3b2bad7b781a968692759ad12cb6552bc39d7057762eefaf168dbe604ce3a4b" default))
 '(exwm-floating-border-color "#252526")
 '(fci-rule-color "#37474F")
 '(highlight-tail-colors ((("#232a22" "#232a21") . 0) (("#283134" "#243034") . 20)))
 '(jdee-db-active-breakpoint-face-colors (cons "#171F24" "#237AD3"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#171F24" "#579C4C"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#171F24" "#777778"))
 '(objed-cursor-color "#D16969")
 '(pdf-view-midnight-colors (cons "#d4d4d4" "#1e1e1e"))
 '(rustic-ansi-faces
   ["#1e1e1e" "#D16969" "#579C4C" "#D7BA7D" "#339CDB" "#C586C0" "#85DDFF" "#d4d4d4"])
 '(vc-annotate-background "#1e1e1e")
 '(vc-annotate-color-map
   (list
    (cons 20 "#579C4C")
    (cons 40 "#81a65c")
    (cons 60 "#acb06c")
    (cons 80 "#D7BA7D")
    (cons 100 "#d8ab79")
    (cons 120 "#d99c76")
    (cons 140 "#DB8E73")
    (cons 160 "#d38b8c")
    (cons 180 "#cc88a6")
    (cons 200 "#C586C0")
    (cons 220 "#c97ca3")
    (cons 240 "#cd7286")
    (cons 260 "#D16969")
    (cons 280 "#ba6c6c")
    (cons 300 "#a37070")
    (cons 320 "#8d7374")
    (cons 340 "#37474F")
    (cons 360 "#37474F")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
