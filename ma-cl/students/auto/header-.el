(TeX-add-style-hook "header-"
 (lambda ()
    (TeX-add-symbols
     '("mh" 1)
     '("homepage" 1))
    (TeX-run-style-hooks
     "me"
     "latex2e"
     "art10"
     "article"
     "a4paper")))

