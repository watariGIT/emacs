
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cask)
(cask-initialize)
(require 'pallet)
(require 'init-loader)

(pallet-mode t)

(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")

