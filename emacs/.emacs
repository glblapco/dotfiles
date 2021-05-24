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
 '(tab-bar ((t (:background "black" :foreground "white"))))
 '(tab-bar-tab
   ((t
     (:inherit tab-bar :box
	       (:line-width 1 :color "black" :style released-button)))))
 '(tab-bar-tab-inactive ((t (:inherit default :background "black"))))
 '(tab-line
   ((t
     (:inherit variable-pitch :background "grey85" :foreground "black" :height 1.0)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(htmlize org ox-html5slide go-mode haskell-mode magit))
 '(tab-bar ((t (:background "grey85" :foreground "black" :weight bold))))
 '(tab-bar-tab-inactive ((t (:inherit tab-bar-tab :background "grey75" :weight normal))))
 '(tab-line ((t (:background "grey85" :foreground "black" :height 0.9 :family "Terminus")))))
