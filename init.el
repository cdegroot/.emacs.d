;;
;; Function for system-dependent stuff
;;
(defun system-setting (system default-setting settings-alist)
  (let ((setting (cdr (assoc system settings-alist))))
    (if setting
      setting
      default-setting)))

(defun default-system-setting (default-setting settings-alist)
  (system-setting (intern system-name) default-setting settings-alist))

;;
;; Setup SLIME
;;
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program
      (default-system-setting "sbcl"
	'((CASEAW . "C:\\Apps\\sbcl-1.3.0\\sbcl.exe"))))


