(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(set-frame-font "Terminus 12" t)
;;(menu-bar-mode -1)
;;(tool-bar-mode -1)
(toggle-scroll-bar -1)
(setq create-lockfiles nil)
(setq org-src-fontify-natively t)
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

(typo-global-mode 1)
(add-hook 'text-mode-hook 'typo-mode)

;; Fly Keys config

(require 'xah-fly-keys)
(xah-fly-keys-set-layout "qwerty")
(xah-fly-keys 1)

(define-minor-mode xah-fly-keys
  "A modal keybinding set, like vim, but based on ergonomic principles, like Dvorak layout.
URL `http://ergoemacs.org/misc/ergoemacs_vi_mode.html'"
  :group 'xah-fly-keys
  :global t
  :lighter ""
  :keymap xah-fly-insert-map
  (if xah-fly-keys
      ;; Construction:
      (progn
        (add-hook 'minibuffer-setup-hook 'xah-fly-insert-mode-activate)
        (add-hook 'minibuffer-exit-hook 'xah-fly-command-mode-activate)
        (add-hook 'isearch-mode-end-hook 'xah-fly-command-mode-activate)
        (when (and (keymapp xah-fly-key-map)
                   (not (memq xah-fly-key-map (list xah-fly-command-map
                                                    xah-fly-insert-map))))
          (set-keymap-parent xah-fly-key-map xah-fly-shared-map)
          (setq xah-fly-shared-map xah-fly-key-map))
        (xah-fly-command-mode-activate))
    ;; Teardown:
    (remove-hook 'minibuffer-setup-hook 'xah-fly-insert-mode-activate)
    (remove-hook 'minibuffer-exit-hook 'xah-fly-command-mode-activate)
    (remove-hook 'shell-mode-hook 'xah-fly-insert-mode-activate)
    (remove-hook 'isearch-mode-end-hook 'xah-fly-command-mode-activate)
    (xah-fly-insert-mode-init :no-indication)
    (setq mode-line-front-space '(:eval (if (display-graphic-p) " " "-")))))




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
 '(nil nil t)
 '(package-selected-packages
   (quote
    (typo multiple-cursors xah-fly-keys templatel org magit htmlize haskell-mode go-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (htmlize org ox-html5slide go-mode haskell-mode magit))))
