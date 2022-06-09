;; Appearance stuff
(defun disable-all-themes ()
  "Disable all active themes."
  (interactive)
  (dolist (i custom-enabled-themes)
    (disable-theme i)))

(use-package modus-themes
  :ensure t
  :init
  ;; https://www.reddit.com/r/emacs/comments/qcwg80/modusthemessyntax_customization/
  (setq modus-themes-syntax '(faint green-strings yellow-comments alt-syntax)
	modus-themes-vivendi-color-overrides '((bg-main . "#1d2021")
                                               (fg-main . "#c2c2c2")))
  (modus-themes-load-themes)
  :config
  (modus-themes-load-vivendi)
  (global-set-key (kbd "<f5>") (lambda () (interactive) (disable-all-themes) (modus-themes-load-vivendi)))
  (global-set-key (kbd "<f6>") (lambda () (interactive) (disable-all-themes) (modus-themes-load-operandi))))


(provide 'init-appearance)
