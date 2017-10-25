;;; private/mary/config.el -*- lexical-binding: t; -*-

(when (string= system-type "windows-nt")
  (set-selection-coding-system 'utf-16-le))

;; No line numbers
(setq doom-line-numbers-style nil)

;; (setq doom-theme 'doom-one-light)
;; (setq doom-theme 'doom-tomorrow-night)

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

(setq-default frame-title-format '("Emacs"))
(setq +doom-dashboard-widgets '(shortmenu loaded))

(after! ivy
  (setq ivy-count-format "%d/%d ")
  (setq ivy-format-function 'ivy-format-function-arrow))

(when (featurep! :feature evil)
  (load! +bindings)  ; my key bindings
  (load! +commands)) ; my custom ex commands
