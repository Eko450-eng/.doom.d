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

(package! beacon)
(package! clippy)
(package! popup)

(package! syntactic-close)
(package! rjsx-mode)
(package! org-preview-html)
(package! md-readme)
(package! lsp-python-ms)
(package! lsp-intellij)
(package! lorem-ipsum)
(package! js-react-redux-yasnippets)
(package! javap-mode)
(package! intellij-theme)
(package! htmltagwrap)
(package! hide-mode-line)
(package! gotham-theme)
(package! evil)
(package! company)
(package! centered-window)
(package! auto-yasnippet)

(package! ace-window)
(package! auto-yasnippet)
(package! avy)
(package! beacon)
(package! bui)
(package! centered-window)
(package! cfrs)
(package! company)
(package! dap-mode)
(package! dash)
(package! epl)
(package! evil)
(package! f)
(package! flycheck)
(package! flymake-easy)
(package! gotham-theme)
(package! goto-chg)
(package! hide-mode-line)
(package! ht)
(package! htmltagwrap)
(package! hydra)
(package! iter2)
(package! javap-mode)
(package! js2-mode)
(package! js-react-redux-yasnippets)
(package! lorem-ipsum)
(package! lsp-intellij)
(package! lsp-python-ms)
(package! lsp-treemacs)
(package! lv)
(package! markdown-mode)
(package! md-readme)
(package! nvm)
(package! org-preview-html)
(package! pfuture)
(package! pkg-info)
(package! popup)
(package! posframe)
(package! pos-tip)
(package! request)
(package! rjsx-mode)
(package! s)
(package! simple-httpd)
(package! syntactic-close)
(package! treemacs)
(package! typescript-mode)
(package! yasnippet)
(package! rjsx-mode)
(package! org-bullets)
(package! tide)
(package! rainbow-mode)
(package! bitlbee)
(package! erc)
(package! nord-theme)
(package! fish-mode)
(package! fish-completion)
(package! gotham-theme)
(package! fira-code-mode)
(package! vterm)
(package! vterm-toggle)
(package! livedown)
(package! lsp-haskell)
