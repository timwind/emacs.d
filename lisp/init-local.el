;;设置行号
(global-nlinum-mode t)

;;默认竖向分割窗口
;;(setq split-height-threshold nil)
;;(setq split-width-threshold 0)

;;;(color-theme-sanityinc-tomorrow-night)

;;设置字体
(set-default-font "-outline-YaHei Consolas Hybrid-normal-normal-normal-sans-17-*-*-*-p-*-iso8859-1")

;;新增helm
;;;(load "~/emacs.d/my-helm.el")

;; 中文路径
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



(provide 'init-local)


;;; init-local.el ends here
