;;; emacs-rc-python.el ---

;; Copyright (C) Alex Ott
;;
;; Author: Alex Ott <alexott@gmail.com>
;; Keywords:
;; Requirements:
;; Status: not intended to be distributed yet

(defun electric-pair ()
  "Insert character pair without sournding spaces"
  (interactive)
  (let (parens-require-spaces)
    (insert-pair)))

(defun my-python-mode-hook ()
;;  (setq tab-width 2)
  (setq indent-tabs-mode t)
  (auto-fill-mode 1)
  (turn-on-eldoc-mode)
  (local-set-key [return] 'newline-and-indent)
  (local-set-key "C-m" 'newline-and-indent)
  (local-set-key "\C-c:" 'uncomment-region)
  (local-set-key "\C-c;" 'comment-region)

  (define-key python-mode-map "\"" 'electric-pair)
  (define-key python-mode-map "\'" 'electric-pair)
  (define-key python-mode-map "(" 'electric-pair)
  (define-key python-mode-map "[" 'electric-pair)
  (define-key python-mode-map "{" 'electric-pair)
  )
(add-hook 'python-mode-hook 'my-python-mode-hook)

(add-hook 'python-mode-hook 'flyspell-prog-mode)

;;; emacs-rc-python.el ends here
