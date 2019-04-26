;; edit server 起動
(when (require 'edit-server nil t)
  (setq edit-server-new-frame nil)
;; major-mode-sample
;;  (setq edit-server-url-major-mode-alist
;;        '(("kiririmode\\.hatenablog\\.jp" . markdown-mode)))
  (edit-server-start))
