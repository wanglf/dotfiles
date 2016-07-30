;;; PYTHON ELPY CONFIGURATION

(defvar myPackages
  '(elpy
    jedi
    flycheck
    py-autopep8))

(mapc #'(lambda (package)
          (unless (package-installed-p package)
            (package-install package)))
      myPackages)

(elpy-enable)
(elpy-use-ipython)
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "--colors NoColor -i")
;;(setq elpy-rpc-backend "jedi")
;;(add-hook 'python-mode-hook 'jedi:setup)
;;(setq jedi:complete-on-dot t)                 ; optional

;; use flycheck not flymake with elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 formatting on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(provide 'init-elpy)
