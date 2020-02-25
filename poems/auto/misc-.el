(TeX-add-style-hook
 "misc-"
 (lambda ()
   (TeX-add-symbols
    "Ind")
   (LaTeX-add-environments
    '("display" LaTeX-env-args ["argument"] 0)
    '("array" LaTeX-env-args ["argument"] 1)
    '("table" LaTeX-env-args ["argument"] 0)
    '("figure" LaTeX-env-args ["argument"] 0)))
 :latex)

