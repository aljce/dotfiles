;; Mail Related Settings

(require 'mu4e)

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
         ,(make-mu4e-context :name "Work"
                             :enter-func (lambda () (mu4e-message "Switched to Personal context"))
                             :match-func (lambda (msg)
                                           (when msg (mu4e-message-contact-field-matches msg :to "kmckean@layer3com.com")))
                             :vars '((user-mail-address . "kmckean@layer3com.com")
                                     (user-full-name . "Kyle McKean")
                                     (mu4e-trash-folder . "/work/Deleted")
                                     (mu4e-sent-folder . "/work/Sent")
                                     (mu4e-drafts-folder . "/work/Drafts")
                                     (mu4e-sent-messages-behavoir 'delete))))
      mu4e-maildir-shortcuts '(("/personal/INBOX" . ?p) ("/work/INBOX" . ?w))
      mu4e-html2text-command "html2text"
      mu4e-get-mail-command "offlineimap"
      mu4e-view-show-images t)

(setq message-send-mail-function 'smtpmail-send-it
      message-kill-buffer-on-exit t
      smtpmail-stream-type 'starttls
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587)


;; use imagemagick, if available
(when (fboundp 'imagemagick-register-types)
  (imagemagick-register-types))

