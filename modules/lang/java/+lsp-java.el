;;; lang/java/+lsp-java.el -*- lexical-binding: t; -*-

(def-package! lsp-java
  :commands lsp-java-enable
  :init
  (add-hook! 'java-mode-hook #'lsp-java-enable)
  :config
  (setq lsp-java-server-install-dir (concat doom-etc-dir "eclipse.jdt.ls/server/")))
