;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Shravan' Emacs Configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Package Configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Customize Settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (gruvbox-dark-hard)))
 '(custom-safe-themes
   (quote
    ("a22f40b63f9bc0a69ebc8ba4fbc6b452a4e3f84b80590ba0a92b4ff599e53ad0" default)))
 '(package-selected-packages
   (quote
    (htmlize flycheck spaceline-all-the-icons spaceline all-the-icons-ivy gruvbox-theme python-mode company-anaconda anaconda-mode evil company counsel-projectile ivy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :foreground "#fdf4c1" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight semi-bold :height 104 :width normal :foundry "ADBO" :family "Source Code Pro")))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; General Configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-splash-screen t)
(setq initial-scratch-message "shravan@motormouthdoda")
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Package Configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Ivy Configuration
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)

;; Counsel-Projectile Configuration
(projectile-mode 1)
(counsel-projectile-mode 1)
(global-set-key (kbd "C-c p f") 'counsel-projectile-find-file)

;; Company Mode Configuration
(add-hook 'after-init-hook 'global-company-mode)
(setq company-dabbrev-downcase 0)
(setq company-idle-delay 0)
(with-eval-after-load 'company
  (define-key company-active-map (kbd "<tab>") 'company-complete-common-or-cycle))

;; Evil Mode Configuration
(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-mode 1)

;; Python Configuration
(require 'rx)
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)
(eval-after-load "company"
 '(add-to-list 'company-backends 'company-anaconda))

;; Spaceline Configuration
(require 'spaceline-config)
(spaceline-emacs-theme)

;; Flycheck Configuration
(add-hook 'python-mode-hook #'flycheck-mode)
(setq flycheck-check-syntax-automatically '(save mode-enable))

;; Org Bullets
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; Browser Configuration
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "chromium-browser")
