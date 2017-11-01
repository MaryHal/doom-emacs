;;; private/mary/init.el -*- lexical-binding: t; -*-

(def-package-hook! rainbow-delimiters :disable)
(def-package-hook! solaire-mode :disable)

(when (string= system-type "windows-nt")
  (set-selection-coding-system 'utf-16-le))

;; No line numbers
(setq doom-line-numbers-style nil)

;; (setq doom-theme 'doom-molokai)
;; (setq doom-theme 'doom-nova)
;; (setq doom-theme 'doom-one)
;; (setq doom-theme 'doom-one-light)
(setq doom-theme 'doom-tomorrow-night)
;; (setq doom-theme 'doom-vibrant)

(setq doom-font
      (font-spec :family "Inziu Iosevka Slab J"
                 :size 12))
(setq doom-big-font
      (font-spec :family "Inziu Iosevka Slab J"
                 :size 18))
(setq doom-variable-pitch-font
      (font-spec :family "Inziu Roboto J"
                 :size 12))
(setq doom-unicode-font
      (font-spec :family "Noto Sans Mono CJK JP"
                 :size 12))

(setq-default frame-title-format '("%b - Emacs"))
(setq +doom-dashboard-widgets '(shortmenu loaded))
