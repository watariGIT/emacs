(autoload 'cperl-mode "cperl-mode" "alternate mode for editing Perl programs" t)
(add-to-list 'auto-mode-alist '("\.\([pP][Llm]\|al\|t\|cgi\)\'" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl5" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("miniperl" . cperl-mode))

;;; cperl-mode is preferred to perl-mode

;;; "Brevity is the soul of wit"

(defalias 'perl-mode 'cperl-mode)
(setq cperl-indent-level 4
cperl-continued-statement-offset 4
cperl-close-paren-offset -4
cperl-label-offset -4
cperl-comment-column 40
cperl-highlight-variables-indiscriminately t
cperl-indent-parens-as-block t
cperl-tab-always-indent nil
cperl-font-lock t)
(add-hook 'cperl-mode-hook
'(lambda ()
(progn
(setq indent-tabs-mode nil)
(setq tab-width nil)



;; perl-completion
(add-hook 'cperl-mode-hook
          (lambda()
            (require 'perl-completion)
            (perl-completion-mode t)))

(add-hook  'cperl-mode-hook
           (lambda ()
             (when (require 'auto-complete nil t) ; no error whatever auto-complete.el is not installed.
               (auto-complete-mode t)
               (make-variable-buffer-local 'ac-sources)
               (setq ac-sources
                     '(ac-source-perl-completion)))))
