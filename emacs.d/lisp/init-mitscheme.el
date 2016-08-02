;;; add mit scheme support
(setq scheme-program-name  "/usr/local/bin/mit-scheme")
(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (progn
    (message "Microsoft Windows")))
 ((string-equal system-type "darwin") ; Mac OS X
  (setenv "MITSCHEME_LIBRARY_PATH" "/Applications/mit-scheme.app/Contents/Resources"))
 ((string-equal system-type "gnu/linux") ; linux
  (setenv "MITSCHEME_LIBRARY_PATH" "/opt/mit-scheme/lib/mit-scheme-x86-64")))

(provide 'init-mitscheme)
