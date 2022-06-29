(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))
(setq doom-theme 'nord)

(use-package rjsx-mode
  :ensure t
  :mode "\\.js\\'")

(setq user-full-name "Ekrem Atmaca"
      user-mail-address "ekrema@wipdesign.de")

(setq org-directory "~/org/")
(setq display-line-numbers-type t)

(add-hook 'haskell-mode-hook #'lsp)
(add-hook 'haskell-literate-mode-hook #'lsp)

(use-package fira-code-mode
  :custom (fira-code-mode-disabled-ligatures '("[]" "</" "</>" "#{" "#(" "#_" "#_(" "x")) ;; List of ligatures to turn off
  :hook prog-mode) ;; Enables fira-code-mode automatically for programming major modes

(setq auto-mode-alist (delete '("\\.ts\\'" . typescript-tsx-mode) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("\\.java\\'" . java-mode))

(use-package lsp-mode
        :hook
        (typescript-mode . lsp))

(setq js2-mode-show-strict-warnings nil)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(setq package-selected-packages
  '(dart-mode lsp-mode lsp-dart lsp-treemacs flycheck company
    ;; Optional packages
    lsp-ui company hover))

(when (cl-find-if-not #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (mapc #'package-install package-selected-packages))

(add-hook 'dart-mode-hook 'lsp)

(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024))

;; Assuming usage with dart-mode
(use-package dart-mode
  ;; Optional
  :hook (dart-mode . flutter-test-mode))

(use-package flutter
  :after dart-mode
  :bind (:map dart-mode-map
              ("C-M-x" . #'flutter-run-or-hot-reload))
  :custom
  (flutter-sdk-path "/home/eko/flutter/"))

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

(global-set-key (kbd "M-s") 'unbind-key)
(global-set-key (kbd "M-s") 'split-window-vertically)
(global-set-key (kbd "M-v") 'unbind-key)
(global-set-key (kbd "M-v") 'split-window-horizontally)

(global-set-key (kbd "M-S") 'unbind-key)
(global-set-key (kbd "M-S") 'evil-surround-edit)

(global-set-key (kbd "M-f") 'unbind-key)
(global-set-key (kbd "M-f") 'rainbow-mode)
(global-set-key (kbd "M-y") 'lsp)

(global-set-key (kbd "M-G") 'unbind-key)
(global-set-key (kbd "M-G") 'beacon-blink)

(global-set-key (kbd "M-c") 'treemacs-switch-workspace)

(global-set-key (kbd "s-x") 'vterm-toggle)

(global-set-key (kbd "M-F") 'unbind-key)
(global-set-key (kbd "M-F") 'lorem-ipsum-insert-sentences)

(setq parinfer-auto-switch-indent-mode t)
(setq parinfer-auto-switch-indent-mode-when-closing t)

(setq org-src-tab-acts-natively t)
(setq org-src-preserve-indentation t)
(use-package org-auto-tangle
        :defer t
        :hook (org-mode . org-auto-tangle-mode)
        :config
        (setq org-auto-tangle-default t))

(beacon-mode 1)
(rainbow-mode 1)

(setq org-hide-emphasis-markers t)

(font-lock-add-keywords 'org-mode
                        '(("^ *\\([-]\\) "
                           (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(rainbow-mode 1)

(set-popup-rule! "*vterm*" :side 'bottom :size 20 :select t)

(setq)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#282c34" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#bbc2cf"])
 '(custom-safe-themes
   '("e3b2bad7b781a968692759ad12cb6552bc39d7057762eefaf168dbe604ce3a4b" default))
 '(exwm-floating-border-color "#191b20")
 '(fci-rule-color "#5B6268")
 '(highlight-tail-colors
   ((("#333a38" "#99bb66" "green")
     . 0)
    (("#2b3d48" "#46D9FF" "brightcyan")
     . 20)))
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#3f444a"))
 '(objed-cursor-color "#ff6c6b")
 '(pdf-view-midnight-colors (cons "#bbc2cf" "#282c34"))
 '(rustic-ansi-faces
   ["#282c34" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#bbc2cf"])
 '(vc-annotate-background "#282c34")
 '(vc-annotate-color-map
   (list
    (cons 20 "#98be65")
    (cons 40 "#b4be6c")
    (cons 60 "#d0be73")
    (cons 80 "#ECBE7B")
    (cons 100 "#e6ab6a")
    (cons 120 "#e09859")
    (cons 140 "#da8548")
    (cons 160 "#d38079")
    (cons 180 "#cc7cab")
    (cons 200 "#c678dd")
    (cons 220 "#d974b7")
    (cons 240 "#ec7091")
    (cons 260 "#ff6c6b")
    (cons 280 "#cf6162")
    (cons 300 "#9f585a")
    (cons 320 "#6f4e52")
    (cons 340 "#5B6268")
    (cons 360 "#5B6268")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(custom-set-variables
'(livedown-autostart nil) ; automatically open preview when opening markdown files
'(livedown-open t)        ; automatically open the browser window
'(livedown-port 1337)     ; port for livedown server
'(livedown-browser nil))  ; browser to use
