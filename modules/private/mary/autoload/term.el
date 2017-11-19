;;;###autoload
(defun +mary:term:open-terminal ()
  "Just open a terminal in the cwd using the $TERMINAL environment variable."
  (interactive)
  (if IS-LINUX
      (call-process-shell-command (getenv "TERMINAL") nil 0)
    (call-process-shell-command "start powershell.exe" nil 0)))
