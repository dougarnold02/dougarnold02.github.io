(TeX-add-style-hook "index"
 (lambda ()
    (LaTeX-add-environments
     '("faq" 1))
    (TeX-run-style-hooks
     "me"
     "latex2e"
     "art10"
     "article"
     "a4paper")))

