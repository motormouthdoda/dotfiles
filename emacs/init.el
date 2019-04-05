; ****************************************************
; Emacs Configuration
; Author -> Shravan Doda (shravanbharatdoda@gmail.com)
; ****************************************************


;; Package Source Configuration
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"    .    "http://orgmode.org/elpa")
                         ("gnu"    .    "http://elpa.gnu.org/packages/")
                         ("melpa"  .    "https://melpa.org/packages/")))
(package-initialize)
(unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

(eval-when-compile
  (require 'use-package))


;; UI Configuration
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode)
(show-paren-mode)
(electric-pair-mode)
(global-hl-line-mode t)
(setq initial-scratch-message "shravan@motormouthdoda")
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)


;; Package Configurations
;; Evil Leader Key
(use-package evil-leader
  :ensure t
  :commands (evil-leader-mode)
  :demand evil-leader
  :init
  (global-evil-leader-mode)
  :config
  (progn
    (evil-leader/set-leader ",")
    (evil-leader/set-key "b" 'ibuffer)
    (evil-leader/set-key "x" 'counsel-M-x)
    (evil-leader/set-key "f" 'counsel-find-files)
))

;; Evil Mode
(use-package evil
  :ensure t
  :defer .1
  :init
  (setq evil-want-C-u-scroll t)
  :config
  (progn
    (evil-mode 1)
    (define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
    (define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
    (define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
    (define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
))

;; Ivy Configuration
(use-package counsel
  :ensure t
  :after ivy
  :config (counsel-mode))

(use-package ivy
  :ensure t
  :defer 0.1
  :diminish
  :bind (("C-c C-r" . ivy-resume)
         ("C-x B" . ivy-switch-buffer-other-window))
  :custom
  (ivy-count-format "(%d/%d) ")
  (ivy-use-virtual-buffers t)
  :config (ivy-mode))

(use-package swiper
  :ensure t
  :after ivy
  :bind (("C-s" . swiper)
         ("C-r" . swiper)))




;; Customization Settings (Don't change)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (gruvbox-dark-hard)))
 '(custom-safe-themes
   (quote
    ("a22f40b63f9bc0a69ebc8ba4fbc6b452a4e3f84b80590ba0a92b4ff599e53ad0" default)))
 '(ivy-count-format "(%d/%d) ")
 '(ivy-use-virtual-buffers t)
 '(package-selected-packages (quote (gruvbox-theme counsel evil-leader))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#1d2021" :foreground "#fdf4c1" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight semi-bold :height 100 :width normal :foundry "ADBO" :family "Source Code Pro")))))
