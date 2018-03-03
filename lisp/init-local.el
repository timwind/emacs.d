;;设置行号
(global-nlinum-mode t)

;;默认竖向分割窗口
;;(setq split-height-threshold nil)
;;(setq split-width-threshold 0)

;;; 不再设置主题，使用默认
;;;(color-theme-sanityinc-tomorrow-night)

;;设置路径
(setenv "PATH"
        (concat "D:/Program Files/python36/Scripts/;D:/Program Files/python36/;"
                (getenv "PATH")))


;;设置字体
(set-default-font "-outline-YaHei Consolas Hybrid-normal-normal-normal-sans-17-*-*-*-p-*-iso8859-1")

;; windows下安装helm
(require 'init-helm)
;; 安装go
(require 'init-go-mode)
;; 安装ecb
(require 'init-ecb)

;; 设置UTF-8
(define-coding-system-alias 'UTF-8 'utf-8)

;; 右键打开支持中文路径
(setq file-name-coding-system 'chinese-gbk)
(setq locale-coding-system 'chinese-gbk)

;; 默认文件coding
(prefer-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)


;;设置右键打开
;;注册表新增command: D:\green\emacs\bin\emacsclientw.exe --server-file=D:\green\emacs\.emacs.d\server\server "%1"

;; org下自动换行
(add-hook 'org-mode-hook (lambda() (setq truncate-lines nil)))

;; 自动扩充时识别大小写
(setq company-dabbrev-downcase nil)

;; 其他设置
;;(autoload 'visual-basic-mode "visual-basic-mode" "Visual Basic mode." t)
;;(setq auto-mode-alist (append '(("\\.log$" .textile-mode)) auto-mode-alist))

;;;; 自动启动ecb，并且不显示每日提示
(setq ecb-auto-activate t ecb-tip-of-the-day nil)
;;(global-set-key (kbd "<f8>") 'ecb-hide-ecb-windows)
;;(global-set-key (kbd "<f9>") 'ecb-show-ecb-windows)

;; 开启菜单栏
(menu-bar-mode t)

;; xml格式化
(defun bf-pretty-print-xml-region (begin end)
  "Pretty format XML markup in region. You need to have nxml-mode
http://www.emacswiki.org/cgi-bin/wiki/NxmlMode installed to do
this.  The function inserts linebreaks to separate tags that have
nothing but whitespace between them.  It then indents the markup
by using nxml's indentation rules."
  (interactive "r")
  (save-excursion
    (nxml-mode)
    (goto-char begin)
    (while (search-forward-regexp "\>[ \\t]*\<" nil t)
      (backward-char) (insert "\n"))
    (indent-region begin end))
  (message "Ah, much better!"))


(provide 'init-local)


;;; init-local.el ends here
