(autoload 'sql-mode "sql" "SQL Edit mode" t)
(add-to-list 'auto-mode-alist '("/\\.hql$'" . sql-mode))
(eval-after-load "sql"
  '(load-library "sql-indent"))
