(require-package 'helm)

;; helm config
;;自定义helm的相关配置

;;替换默认的M-x
                                        ;(global-set-key (kbd "M-x") 'helm-M-x)
                                        ;(setq helm-M-x-fuzzy-match t)

;;替换默认的M-y
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

;;设置helm-mini
(global-set-key (kbd "C-x b") 'helm-mini)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)

;;打开文件
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;;搜索
(global-set-key (kbd "C-s") 'helm-occur)

;; helm-lisp-completion-at-point lisp自动补全
;;(setq helm-lisp-fuzzy-completion t)

;;查看全局mark环
(global-set-key (kbd "C-h SPC") 'helm-all-mark-rings)

;;查看并列出emacs寄存器
;;(global-set-key (kbd "C-c h x") 'helm-register)


(provide 'init-helm)
