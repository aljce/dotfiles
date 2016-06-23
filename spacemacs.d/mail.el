;; Mail Related Settings

(require 'mu4e)

;; mu4e settings
(setq mu4e-maildir "~/Maildir"
      mu4e-contexts
      `( ,(make-mu4e-context :name "Personal"
                             :enter-func (lambda () (mu4e-message "Switch to Personal context"))
                             :match-func (lambda (msg)
                                           (when msg (mu4e-message-contact-field-matches msg :to "mckean.kylej@gmail.com")))
                             :vars '((user-mail-address . "mckean.kylej@gmail.com")
                                     (user-full-name . "Kyle McKean")
                                     (mu4e-trash-folder . "/Personal/[Gmail].Trash")
                                     (mu4e-sent-folder . "/Personal/[Gmail].Sent Mail")
                                     (mu4e-drafts-folder . "/Personal/[Gmail].Drafts")
                                     (mu4e-sent-messages-behavoir 'delete))))
      mu4e-maildir-shortcuts '(("/Personal/INBOX" . ?i))
      mu4e-html2text-command "html2text -utf8 -width 72"
      mu4e-get-mail-command "offlineimap"
      mu4e-view-show-images t)

;; smtpmail settings
(setq message-send-mail-function 'smtpmail-send-it
      starttls-use-gnutls t
      smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
      smtpmail-auth-credentials
      '(("smtp.gmail.com" 587 "mckean.kylej@gmail.com" nil))
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587
      message-kill-buffer-on-exit t)

;; use imagemagick, if available
(when (fboundp 'imagemagick-register-types)
  (imagemagick-register-types))

