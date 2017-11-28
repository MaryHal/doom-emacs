;;; lang/lsp/config.el -*- lexical-binding: t; -*-

(def-package! lsp-mode)

(def-package! company-lsp
  :when (featurep! :completion company)
  :after lsp-mode)
