(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(set-frame-font "Terminus 12" t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(setq create-lockfiles nil)
(setq org-src-fontify-natively t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(global-unset-key (kbd "C-z")) ;; C-z used to freeze the frame. this setting stops it.

(global-display-line-numbers-mode)

(setq org-html-htmlize-output-type 'css)
(setq org-html-htmlize-font-prefix "org-")

(setq inhibit-startup-screen t)
(setq make-backup-files nil) ;; do not make backup files

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(require 'dashboard)
(dashboard-setup-startup-hook)
(setq dashboard-banner-logo-title "BLEM")
(setq dashboard-startup-banner "/home/biel/proj/blem/dashboard/blem.txt")
;; (setq dashboard-center-content t)
(setq dashboard-show-shortcuts nil)
(setq dashboard-items '((recents  . 5)))
(setq dashboard-set-init-info nil) ;; Disables 'x packages loaded in x time.'
(setq dashboard-set-footer nil) ;; Disables random quote.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vectorn
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(create-lockfiles nil)
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   '("5f824cddac6d892099a91c3f612fcf1b09bb6c322923d779216ab2094375c5ee" default))
 '(nil nil t)
 '(package-selected-packages
   '(dashboard gruber-darker-theme clojure-mode android-mode multiple-cursors xah-fly-keys templatel org magit htmlize haskell-mode go-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(htmlize org ox-html5slide go-mode haskell-mode magit)))
