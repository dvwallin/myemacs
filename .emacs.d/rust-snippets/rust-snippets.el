;;; rust-snippets.el --- Rust snippets for yasnippet -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(require 'yasnippet)

(defvar rust-snippets-root
  (file-name-directory (or load-file-name (buffer-file-name))))

;;;###autoload
(defun rust-snippets/initialize ()
  "Make the rust snippets available to yasnippet."
  (let ((snip-dir (expand-file-name "snippets" rust-snippets-root)))
    (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs snip-dir t))
    (yas-load-directory snip-dir)))

;;;###autoload
(eval-after-load 'yasnippet
  '(rust-snippets/initialize))

(provide 'rust-snippets)
;;; rust-snippets.el ends here
