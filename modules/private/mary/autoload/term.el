;;;###autoload
(defun +mary:term:open-terminal ()
  "Just open a terminal in the cwd using the $TERMINAL environment variable."
  (interactive)
  (if (string= system-type "gnu/linux")
      (call-process-shell-command "eval $TERMINAL" nil 0)
    (call-process-shell-command "start powershell.exe" nil 0)))
