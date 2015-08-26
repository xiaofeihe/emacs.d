(put 'upcase-region 'disabled nil)
(require 'package)
(add-to-list 'package-archives'
  ("elpa" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives'
  ("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives'
  ("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(require 'emmet-mode)

(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(put 'scroll-left 'disabled nil)



   (require 'js2-refactor)
    (add-hook 'js2-mode-hook #'js2-refactor-mode)
    (js2r-add-keybindings-with-prefix "C-c C-m")


(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
     	(tern-ac-setup)))

;;(require 'auto-complete-mode)


(add-to-list 'load-path "~/.emacs.d/tern/emacs/")
(autoload 'tern-mode "tern.el" nil t)
(add-hook 'js-mode-hook (lambda () (tern-mode t)))


