;; Mail Related Settings

(require 'mu4e)
(require 'mu4e-contrib)

;; mu4e settings
(setq mu4e-maildir "~/.mail"
      mu4e-contexts
      `( ,(make-mu4e-context :name "Personal"
                             :enter-func (lambda () (mu4e-message "Switched to Personal context"))
                             :match-func (lambda (msg)
                                           (when msg (mu4e-message-contact-field-matches msg :to "mckean.kylej@gmail.com")))
                             :vars '((user-mail-address . "mckean.kylej@gmail.com")
                                     (user-full-name . "Kyle McKean")
                                     (mu4e-trash-folder . "/personal/[Gmail].Trash")
                                     (mu4e-sent-folder . "/personal/Sent")
                                     (mu4e-drafts-folder . "/personal/Drafts")
                                     (mu4e-sent-messages-behavoir 'delete)))
         ,(make-mu4e-context :name "GSU"
                             :enter-func (lambda () (mu4e-message "Switched to GSU context"))
                             :match-func (lambda (msg)
                                           (when msg (mu4e-message-contact-field-matches msg :to "kmckean1@student.gsu.edu")))
                             :vars '((user-mail-address . "kmckean1@student.gsu.edu")
                                     (user-full-name . "Kyle McKean")
                                     (mu4e-trash-folder . "/gsu/Deleted")
                                     (mu4e-sent-folder . "/gsu/Sent")
                                     (mu4e-drafts-folder . "/gsu/Drafts")
                                     (mu4e-sent-messages-behavoir 'delete))))
      mu4e-maildir-shortcuts '(("/personal/INBOX" . ?p) ("/gsu/INBOX" . ?g))
      mu4e-html2text-command 'mu4e-shr2text
      mu4e-view-prefer-html t
      mu4e-get-mail-command "offlineimap"
      mu4e-view-show-images t)

(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-debug-info t
      smtpmail-starttls-credentials
        '(("smtp.gmail.com" 587 nil nil))
      smtpmail-stream-type 'starttls
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587)

;; use imagemagick, if available
(when (fboundp 'imagemagick-register-types)
  (imagemagick-register-types))
