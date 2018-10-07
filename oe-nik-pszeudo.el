;;; oe-nik-pszeudo-mode --- Óbudai Egyetem Pszeudó kód mód

;;; Commentary:
;; Az előadásdiákon látott kódhoz szintaxis kiemelés.

;; Pszeudó-kód szintaxis kiemelés az Óbudai Egyetem kódjaihoz, oe-nik-pszeudo-mode

;;; Code:

(defvar oe-nik-pszeudo-highlights
      '(("(?<=függvény\s).*(?=\\(.*\\))" . font-lock-function-name-face)))

(define-derived-mode oe-nik-pszeudo-mode fundamental-mode "oe-nik-pszeudo"
  "Majore Mode OE-NIK pszeudó kód szerkesztéséhez."
  (setq font-lock-defaults '(oe-nik-pszeudo-highlights)))

(provide 'oe-nik-pszeudo)
;;; oe-nik-pszeudo.el ends here
