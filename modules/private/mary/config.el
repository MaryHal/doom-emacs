;;; private/mary/config.el -*- lexical-binding: t; -*-

(after! doom-modeline
  ;; De-bold some icons in doom-modeline
  (set-face-attribute 'doom-modeline-info            nil :weight 'normal)
  (set-face-attribute 'doom-modeline-buffer-modified nil :weight 'normal)
  (set-face-attribute 'doom-modeline-warning         nil :weight 'normal)
  (set-face-attribute 'doom-modeline-urgent          nil :weight 'normal))

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

(after! all-the-icons
  (setq inhibit-compacting-font-caches t))

(after! company
  (setq company-idle-delay 0
        company-minimum-prefix-length 2
        company-show-numbers nil
        company-require-match 'never
        company-selection-wrap-around t))

(when (featurep! :feature evil)
  (load! +bindings)  ; my key bindings
  (load! +commands)) ; my custom ex commands
