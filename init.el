(setq package-archives '(("melpa" . "http://elpa.emacs-china.org/melpa/")))

(setq inhibit-startup-echo-area-message "hello sgnh")
(require 'package)
(package-initialize)
;;(global-linum-mode)

(setq custom-theme-directory
	  "E:/emacs245/.emacs.d/theme/")
(load-theme 'dark t)

(require 'rainbow-delimiters)

(set-face-foreground 'rainbow-delimiters-depth-1-face "ghost white")
(set-face-foreground 'rainbow-delimiters-depth-2-face "yellow")
(set-face-foreground 'rainbow-delimiters-depth-3-face "cyan")
(set-face-foreground 'rainbow-delimiters-depth-4-face "green")
(set-face-foreground 'rainbow-delimiters-depth-5-face "red")
(set-face-foreground 'rainbow-delimiters-depth-6-face "magenta")
(set-face-foreground 'rainbow-delimiters-depth-7-face "navajowhite1")
(set-face-foreground 'rainbow-delimiters-depth-8-face "indian red")
(set-face-foreground 'rainbow-delimiters-depth-9-face "deepskyblue")

(set-face-attribute 'mode-line nil :underline nil :overline nil)

(tool-bar-mode 0)
(scroll-bar-mode 0)

(setq-default cursor-type 'bar)
(setq make-backup-files nil)
(setq inhibit-startup-message t)
(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq frame-title-format "SGNH@%b")
(getenv "HOME")
(global-set-key (kbd "M-p") 'iy-go-to-char-backward)
(global-set-key (kbd "M-n") 'iy-go-to-char)

(display-time-mode)
(setq display-time-24hr-format t)

;;(require 'powerline)
;;(setq powerline-default-separator 'arrow)
;;(set-face-background 'powerline-active2 "green")
;;(set-face-foreground 'powerline-active2 "gray33")
;;(set-face-background 'powerline-active1 "yellow")
;;(set-face-foreground 'powerline-active1 "gray33")
;;(powerline-default-theme)

(require 'highlight-indentation)
(set-face-background 'highlight-indentation-face "steelblue4")

;;(set-background-color "steelblue4")
;;(set-foreground-color "gray95")

;;(fringe-mode 1)
;;(set-face-background 'region "light sky blue")
;;(set-face-foreground 'region "gray25")

(add-hook 'c++-mode-hook (lambda ()
						 (add-to-list 'company-backends 'company-clang) 
						   ))

(electric-indent-mode)
;;(global-highlight-parentheses-mode)

(add-to-list 'load-path "E:/emacs245/.emacs.d/window-numbering")
(require 'window-numbering)
(window-numbering-mode t)

(require 'linum)
(setq linum-format "%3d |")
(global-linum-mode)
(setq left-fringe nil)

(setq company-show-numbers t)
(cd "e:/project/")

(global-set-key (kbd "C-c C-SPC") 'ace-jump-mode)
(global-set-key (kbd "C-c c SPC") 'ace-jump-line-mode)
(global-set-key (kbd "C-c SPC ") 'ace-jump-char-mode)
(set-frame-height (selected-frame) 25)
(set-frame-width (selected-frame) 100)
;;(emacs-version)
(setq global-font-lock-mode t)

(require 'company)
(display-graphic-p)

(setq company-idle-delay 0.1)

(setq company-minimum-prefix-length 1)

;;(setq elpy-rpc-python-command "pythonw3")

;;(elpy-enable)
;;(elpy-use-ipython)

;;(elpy-use-ipython)
(yas-global-mode)
(add-to-list 'company-backends '(company-yasnippet company-elisp))

(slime-setup '(slime-company))

(require 'hyperspec)
(setq common-lisp-hyperspec-root "e:/emacs245/HyperSpec/")

(add-hook 'python-mode-hook (lambda ()
							  (elpy-mode)
							  (linum-mode)
							  (electric-pair-mode)))
(setq browse-url-browser-function "w3m")
(add-to-list 'exec-path "~/w3m")
(setq w3m-use-favicon nil)
(setq w3m-command-arguments '("-cookie" "-F"))
(setq w3m-home-page "http://www.baidu.com")
(setq w3m-use-cookies t)

(require 'w3m)
(setq browse-url-browser-function '(("hyperspec" . w3m-browse-url)
									("." . browse-url-default-browser)))
;;(eval-after-load "slime"
;;  '(progn
;;	 (setq common-lisp-hyperspec-root
;;		   "e:/emacs245/HyperSpec/")
;;	 (setq common-lisp-hyperspec-symbol-table
;;		   (concat common-lisp-hyperspec-root "Data/Map_Sym.txt"))
;;	 (setq common-lisp-hyperspec-issuex-table
;;		   (concat common-lisp-hyperspec-root "Data/Map_IssX.txt"))))


;;(elpy-enable)
;;(add-to-list 'company-backends 'company-yasnippet)
;;(require 'elpy)
;;(elpy-use-ipython)
;;(setq elpy-rpc-python-command "python3")

;;tramp set
;;(require 'tramp)
;;(setq tramp-default-method "plink")
(require 'slime)
(slime-setup '(slime-fancy slime-company))

(setq inferior-lisp-program "e:/soft/sbcl/sbcl.exe")

(require 'company-quickhelp)
(setq company-quickhelp-delay 3)
(setq company-quickhelp-color-background "gray")


(set-face-attribute 'default nil :font "consolas 12")
(dolist (charset '(kana han cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font) charset
		    (font-spec :family "微软雅黑":size 14)))
(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(add-hook 'emacs-lisp-mode-hook 'electric-pair-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
(add-hook 'emacs-lisp-mode-hook 'company-mode)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)

(setq company-transformers '(company-sort-by-occurrence))

(global-set-key (kbd "<f6>") 'youdao-dictionary-search-at-point-tooltip)
(global-set-key (kbd "<f5>") 'open-init-file)
(require 'smooth-scrolling)
(smooth-scrolling-mode)
(setq smooth-scroll-margin 5)

;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(company-scrollbar-bg ((t (:background "gray"))))
 ;;'(company-scrollbar-fg ((t (:background "black"))))
;; '(company-tooltip ((t (:background "lightgray" :foreground "black" ))))
;; '(company-tooltip-annotation ((t (:foreground "sienna"))))
;; '(company-tooltip-annotation-selection ((t (:foreground "black"))))
;; '(company-tooltip-common ((t (:background "lightgray"))))
;; '(company-tooltip-common-selection ((t (:background "steel blue3"))))
;; '(company-tooltip-selection ((t (:background "steel blue3" :foreground "black"))))
;; 
;; '(fringe ((t (:background "SteelBlue4"))))
;; '(linum ((t (:foreground "LemonChiffon1"))))
;; '(mode-line ((t (:background "cornflower blue" :foreground "ghost white" :box (:line-width -1 :style released-button)))))
;; '(mode-line-buffer-id ((t (:weight bold))))
;; '(mode-line-inactive ((t (:inherit mode-line :background "grey30" :foreground "ghost white" :box (:line-width -1 :color "grey40") :weight light)))))


(require 'pyim)
(require 'pyim-basedict)
(pyim-basedict-enable)
(setq pyim-default-scheme "quanpin")
(setq default-input-method "pyim")
(setq pyim-page-tooltip 'pos-tip)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("0fb9b7f02ba99d59e6ea0b15a16d51d18c94ad80d18ed067069801ad85d18aad" "ea1aebcb5c0b288b35c1dae8386b68a49bbbe5e494be4bb0a6e763bba29d195f" "96b42f37a2414a96efe68a687e8fefac882ca72873d65216f23b35dc5aefbae6" default)))
 '(package-selected-packages
   (quote
    (youdao-dictionary yalinum w3m use-package undo-tree sr-speedbar smooth-scrolling smex slime-company rich-minority rainbow-delimiters rainbow-blocks pyim powerline paredit iy-go-to-char highlight-parentheses elpy ecb company-quickhelp common-lisp-snippets auto-complete ace-jump-mode))))

