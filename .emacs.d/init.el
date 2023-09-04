(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; Enable Evil
(use-package evil
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  (setq evil-want-C-i-jump nil)
  :config
  (evil-mode 1))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("b1a691bb67bd8bd85b76998caf2386c9a7b2ac98a116534071364ed6489b695d" "2ff9ac386eac4dffd77a33e93b0c8236bb376c5a5df62e36d4bfa821d56e4e20" "d80952c58cf1b06d936b1392c38230b74ae1a2a6729594770762dc0779ac66b7" default))
 '(package-selected-packages
   '(lsp-javacomp use-package ## lsp-java lsp-mode rainbow-delimiters gruvbox-theme evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Enable rainbow delimiter
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(scroll-bar-mode -1) ; Disable scrollbar
(tool-bar-mode -1) ; Disable toolbar
(menu-bar-mode -1) ; Disable menu bar

(load-theme 'gruvbox-dark-hard)

;; Enable line number.
(column-number-mode)
(global-display-line-numbers-mode t)

;; Disable line number for some modes

;; Global highlight current line
(global-hl-line-mode +1)

;; Download LSP
(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c l")  ;; Or 'C-l', 's-l'
  :hook (lsp-mode . efs/lsp-mode-setup)
	(prog-mode-hook . lsp-deferred)
	(lsp-mode . lsp-enable-which-key-integration))

(add-hook 'prog-mode-hook #'lsp-deferred)
