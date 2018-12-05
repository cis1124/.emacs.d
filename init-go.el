;;;custom go ide
 
 (require 'go-mode)
 
(defun go-compile ()
  (setq compile-command (format "go run %s" (shell-quote-argument(buffer-file-name))))
  (define-key (current-local-map) "\C-c\C-c" 'compile)
  (add-hook 'before-save-hook 'gofmt-before-save))
  
 (add-hook 'go-mode-hook 'go-compile)
 
 (provide 'init-go)
;;;