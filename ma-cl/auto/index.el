(TeX-add-style-hook "index"
 (lambda ()
    (TeX-add-symbols
     '("lnk" 2))
    (TeX-run-style-hooks
     "me"
     "latex2e"
     "art10"
     "article"
     "a4paper")))

