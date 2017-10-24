;;; private/mary/config.el -*- lexical-binding: t; -*-

;; No line numbers
(setq doom-line-numbers-style nil)

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

(after! ivy
  (setq ivy-count-format "%d/%d ")
  (setq ivy-format-function 'ivy-format-function-arrow))

(when (featurep! :feature evil)
  (load! +bindings)  ; my key bindings
  (load! +commands)) ; my custom ex commands
