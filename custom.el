(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(gdscript-godot-executable "~/Desktop/Godot_v3.3.3-stable_x11.64")
 '(package-selected-packages
   '(vterm hide-mode-line prettier htmltagwrap company tide rjsx-mode evil treemacs)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(global-set-key (kbd "M-l") 'evil-window-right)
(global-set-key (kbd "M-h") 'evil-window-left)
(global-set-key (kbd "M-j") 'evil-window-down)
(global-set-key (kbd "M-k") 'evil-window-up)
(defun run-py ()
  (interactive)
  (shell-command (concat "python3 " buffer-file-name)))
(global-set-key (kbd "M-c") 'run-py)

