(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

;; set theme to leuven
(require-package 'leuven-theme)
(load-theme 'leuven t)
(setq org-src-fontify-natively t)

;; for evil-mode
(require-package 'evil)
(require 'evil)
(evil-mode )
;; auto complete
(require-package 'auto-complete)
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(require-package 'yasnippet)
(require 'yasnippet)
(yas-global-mode 1)

(require-package 'auto-complete-c-headers)
(defun my:ac-c-header-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"/usr/include")
  (add-to-list 'achead:include-directories '"/usr/local/include")
  (add-to-list 'achead:include-directories '"/usr/lib/gcc/x86_64-redhat-linux/4.8.3/include")
  (add-to-list 'achead:include-directories '"/usr/lib/gcc/x86_64-redhat-linux/4.8.3/../../../../inclu
			   de/c++/4.8.3/backward")
  (add-to-list 'achead:include-directories '"/usr/lib/gcc/x86_64-redhat-linux/4.8.3/../../../../inclu
			   de/c++/4.8.3/x86_64-redhat-linux"))

;; now let's call this function from c/c++ hooks
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)

; Fix iedit bug in Mac
(require-package 'iedit)
(define-key global-map (kbd "C-c ;") 'iedit-mode)

;; start flymake-google-cpplint-load
;; let's define a function for flymake initialization

(require-package 'flymake-google-cpplint)
(require-package 'flymake-cursor)
 (defun my:flymake-google-init ()
   (require 'flymake-google-cpplint)
   (custom-set-variables
	 '(flymake-google-cpplint-command "/bin/cpplint"))
   (flymake-google-cpplint-load))
(add-hook 'c-mode-hook 'my:flymake-google-init)
(add-hook 'c++-mode-hook 'my:flymake-google-init)

; (eval-after-load 'flycheck
; 				 '(progn
; 					(require 'flycheck-google-cpplint)
; 					;; Add Google C++ Style checker.
; 					;; In default, syntax checked by Clang and Cppcheck.
; 					(flycheck-add-next-checker 'c/c++-clang
; 											   'c/c++-googlelint 'append)))

;; start google-c-style with emacs
(require-package 'google-c-style)
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

(semantic-mode 1)
;; let's define a function which adds semantic as a suggestion backend to auto complete
;; and hook this function to c-mode-common-hook
(defun my:add-semantic-to-autocomplete ()
  (add-to-list 'ac-sources 'ac-source-semantic))
(add-hook 'c-mode-common-hook 'my:add-semantic-to-autocomplete)
;; turn on ede mode
(global-ede-mode 1)
;; create a project for our program.
;; (ede-cpp-root-project "my project" :file "~/demos/my_program/src/main.cpp"
;; 					  :include-path '("/../my_inc"))
;; you can use system-include-path for setting up the system header file locations.
;; turn on automatic reparsing of open buffers in semantic
(global-semantic-idle-scheduler-mode 1)

;; add auctex and set default tex command to xelatex
(require-package 'auctex)
(require-package 'auctex-latexmk)

(add-hook 'LaTeX-mode-hook (lambda()
                             (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
                             (setq TeX-command-default "XeLaTeX")
                             (setq TeX-save-query  nil )
                             (setq TeX-show-compilation t)
                             (setq TeX-auto-save t)
                             (setq TeX-parse-self t)
                             (setq-default TeX-master nil)
                             ))


(require-package 'powerline)
(require 'powerline)
(powerline-default-theme)

(require-package 'powerline-evil)
(require 'powerline-evil)


(provide 'init-preload-local)
