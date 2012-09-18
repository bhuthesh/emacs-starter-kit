;; Load the ensime lisp code...

(add-to-list 'load-path (concat "~/.emacs.d/" (getenv "USER") "/ensime/elisp"))
(require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; Show ensime info as tooltips on hover too (apart from the messages
;; buffer)
(add-hook 'scala-mode-hook 'tooltip-mode)

;; sbt may not be on emac's exec-path, even if it is in $PATH
(setq exec-path (append exec-path (list "/usr/local/bin" )))
