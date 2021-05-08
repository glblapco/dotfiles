(setq inhibit-startup-screen t)
(setq make-backup-files nil) ;; do not make backup files

(require 'subr-x)
;; org-static-blog configuration

(setq org-static-blog-publish-title "Biel\'s Webpage")
(setq org-static-blog-publsh-url "biel.aperio.org")
(setq org-static-blog-publish-directory "~/proj/fun/orw/")
(setq org-static-blog-posts-directory "~/proj/fun/orw/posts/")
(setq org-static-blog-drafts-directory "~/proj/fun/orw/drafts/")
(setq org-static-blog-enable-tags t)
(setq org-export-with-toc t)
(setq org-export-with-section-numbers nil)

(setq org-static-blog-page-header
"<meta name=\"author\" content=\"Biel A. P.\">
<meta name=\"referrer\" content=\"no-referrer\">
<link href= \"static/style.css\" rel=\"stylesheet\" type=\"text/css\" />
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">")

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(set-frame-font "Terminus 12" t)

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
 '(package-selected-packages
   (quote
    (org-static-blog org ox-html5slide go-mode haskell-mode magit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
