(use-package org
  :ensure t)


(use-package org-roam
  :ensure t
  :demand t  ;; Ensure org-roam is loaded by default
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n i" . org-roam-node-insert)
	 ("C-c n g" . org-roam-graph)
         ("C-c n d"   . org-roam-dailies-find-date)
         ("C-c n c"   . org-roam-dailies-capture-today)
         ("C-c n C r" . org-roam-dailies-capture-tomorrow)
         ("C-c n t"   . org-roam-dailies-goto-today)
         ("C-c n y"   . org-roam-dailies-goto-yesterday)
         ("C-c n r"   . org-roam-dailies-goto-tomorrow)  
  :init
  (setq org-roam-v2-ack t)
  :config
  (setq org-roam-directory "~/org/notes"
	org-roam-dailies-directory "~/org/daily")
  (org-roam-setup))

(provide 'init-org)
