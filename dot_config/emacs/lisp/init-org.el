

(use-package org
  ;;; (setq-default org-catch-invisible-edits 'smart)
  ;;; (setq org-ctrl-k-protect-subtree t)
  ;;; (setq org-catch-invisible-edits 'smart)

  :ensure t)

(use-package org-roam
  :ensure t)



;; (use-package org-roam
;;   :ensure t
;;   :demand t  ;; Ensure org-roam is loaded by default
;;   :bind (("C-c n l" . org-roam-buffer-toggle)
;;          ("C-c n f" . org-roam-node-find)
;;          ("C-c n i" . org-roam-node-insert)
;; 	 ("C-c n g" . org-roam-graph)
;;          ("C-c n d"   . org-roam-dailies-find-date)
;;          ("C-c n c"   . org-roam-dailies-capture-today)
;;          ("C-c n C r" . org-roam-dailies-capture-tomorrow)
;;          ("C-c n t"   . org-roam-dailies-goto-today)
;;          ("C-c n y"   . org-roam-dailies-goto-yesterday)
;;          ("C-c n r"   . org-roam-dailies-goto-tomorrow))
;;   :init
;;   (setq org-roam-v2-ack t)
;;   :custom

;;   (org-roam-capture-templates 
;;    '(
;;      ("d" "default" plain "%?" :target
;;       (file+head "notes/%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}
;; ")
;;       :unnarrowed t)

;;      ("p" "people" plain "%?" :target
;;       (file+head "people/%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}
;; ")
;;       :unnarrowed t)))
	 
;;   :config
;;   (setq org-roam-directory "~/org"
;; 	org-roam-dailies-directory "~/org/daily")
;;   (org-roam-setup))

(use-package org-roam-ui
  :straight
    (:host github :repo "org-roam/org-roam-ui" :branch "main" :files ("*.el" "out"))
    :after org-roam
;;         normally we'd recommend hooking orui after org-roam, but since org-roam does not have
;;         a hookable mode anymore, you're advised to pick something yourself
;;         if you don't care about startup time, use
;;  :hook (after-init . org-roam-ui-mode)
    :config
    (setq org-roam-ui-sync-theme t
          org-roam-ui-follow t
          org-roam-ui-update-on-save t
          org-roam-ui-open-on-start t))


(provide 'init-org)
