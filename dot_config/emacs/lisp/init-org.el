(use-package org
  :ensure t)


(use-package org-roam
  :ensure t
  :demand t  ;; Ensure org-roam is loaded by default
  :init
  (setq org-roam-v2-ack t)
  :config
  (setq org-roam-directory "~/org/notes"
	org-roam-dailies-directory "~/org/daily")
  (org-roam-setup))

(provide 'init-org)
