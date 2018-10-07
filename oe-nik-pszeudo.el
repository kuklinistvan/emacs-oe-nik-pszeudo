;;; oe-nik-pszeudo-mode --- Óbudai Egyetem Pszeudó kód mód

;;; Commentary:
;; Az előadásdiákon látott kódhoz szintaxis kiemelés.

;; Pszeudó-kód szintaxis kiemelés az Óbudai Egyetem kódjaihoz, oe-nik-pszeudo-mode

;;; Code:

(defvar oe-nik-pszeudo-highlights)

(setq oe-nik-pszeudo-highlights
      (let* (
            (x-keywords '("függvény vége" "függvény" "ciklus vége" "ciklus" "elágazás vége" "különben" "ha" "Létrehoz" "vissza"))
            (x-types '("egész" "logikai"))
            (x-keywords-regexp (regexp-opt x-keywords 'words))
            (x-types-regexp (regexp-opt x-types 'words))
            )

        `(
          ("\\(függvény\\)\s\\(.*\\)\(.*\)" . (2 font-lock-function-name-face))
          (,x-types-regexp . font-lock-type-face)
          (,x-keywords-regexp . font-lock-keyword-face)
          )))

(define-derived-mode oe-nik-pszeudo-mode fundamental-mode "oe-nik-pszeudo"
  "Majore Mode OE-NIK pszeudó kód szerkesztéséhez."
  (setq font-lock-defaults '(oe-nik-pszeudo-highlights)))

(provide 'oe-nik-pszeudo)
;;; oe-nik-pszeudo.el ends here
