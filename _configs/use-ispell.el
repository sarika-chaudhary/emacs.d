;;; use-ispell --- initialize ispell
;;; Commentary:
;;; Code:
(require 'use-package)

(use-package ispell
  :init
  (progn
    (when (file-exists-p "/usr/local/bin/aspell")
      (set-variable 'ispell-program-name "/usr/local/bin/aspell")))
  :config
  (setq ispell-dictionary "english")
  (add-hook 'text-mode-hook #'turn-on-flyspell)
  (add-hook 'prog-mode-hook #'flyspell-prog-mode))

(provide 'use-ispell)
;;; use-ispell ends here
