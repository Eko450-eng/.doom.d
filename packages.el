;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;(package! some-package)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/raxod502/straight.el#the-recipe-format
;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see raxod502/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;(package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;(unpin! pinned-package)
;; ...or multiple packages
;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;(unpin! t)
(package! gitconfig-mode
	  :recipe (:host github :repo "magit/git-modes"
			 :files ("gitconfig-mode.el")))
(package! gitignore-mode
	  :recipe (:host github :repo "magit/git-modes"
			 :files ("gitignore-mode.el")))



(package! ace-window)
(package! auto-yasnippet)
(package! auto-yasnippet)
(package! avy)
(package! beacon)
(package! bui)
(package! centered-window)
(package! cfrs)
(package! clippy)
(package! dap-mode)
(package! dash)
(package! epl)
(package! erc)
(package! f)
(package! fira-code-mode)
(package! fish-completion)
(package! fish-mode)
(package! flycheck)
(package! flymake-easy)
(package! gotham-theme)
(package! goto-chg)
(package! hide-mode-line)
(package! ht)
(package! htmltagwrap)
(package! intellij-theme)
(package! iter2)
(package! javap-mode)
(package! js-react-redux-yasnippets)
(package! js2-mode)
(package! livedown)
(package! lorem-ipsum)
(package! lsp-intellij)
(package! lsp-treemacs)
(package! lv)
(package! md-readme)
(package! nord-theme)
(package! nvm)
(package! org-bullets)
(package! org-preview-html)
(package! pfuture)
(package! pkg-info)
(package! pos-tip)
(package! posframe)
(package! rainbow-mode)
(package! request)
(package! rjsx-mode)
(package! s)
(package! simple-httpd)
(package! syntactic-close)
(package! tide)
(package! typescript-mode)
(package! vterm-toggle)
(package! yasnippet)
(package! org-auto-tangle)
(package! rust-mode)
(package! flutter)
(package! dart-mode)
(package! tree-sitter)
(package! tree-sitter-langs)
(package! coverlay)
(package! origami)
(package! scroll-on-jump)
(package! pulse)
(package! good-scroll)
