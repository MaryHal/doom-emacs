;;; private/mary/config.el -*- lexical-binding: t; -*-

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

(setq-default frame-title-format '("Emacs"))
(setq +doom-dashboard-widgets '(shortmenu loaded))

(after! ivy
  (setq ivy-count-format "  %d/%d ")
  (setq ivy-format-function 'ivy-format-function-arrow))

(after! flyspell
  (cond
   ((executable-find "hunspell")
    (setq-default ispell-program-name "hunspell")
    (setq-default ispell-local-dictionary "en_US")
    (setq-default ispell-local-dictionary-alist
                  ;; Please note the list `("-d" "en_US")` contains ACTUAL parameters passed to hunspell
                  ;; You could use `("-d" "en_US,en_US-med")` to check with multiple dictionaries
                  '(("en_US" "[[:alpha:]]" "[^[:alpha:]]" "[']" nil ("-d" "en_US") nil utf-8)
                    )))

   ((executable-find "aspell")
    (setq-default ispell-program-name "aspell")
    ;; Please note ispell-extra-args contains ACTUAL parameters passed to aspell
    (setq-default ispell-extra-args '("--sug-mode=ultra" "--lang=en_US"))))

  ;; On windows, append .exe suffix
  (when (and (string= system-type "windows-nt")
             (not (s-suffix? ".exe" ispell-program-name)))
    (setq-default ispell-program-name (concat ispell-program-name ".exe"))))


(when (featurep! :feature evil)
  (load! +bindings)  ; my key bindings
  (load! +commands)) ; my custom ex commands
