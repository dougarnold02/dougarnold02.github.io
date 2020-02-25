(TeX-add-style-hook
 "yeats-"
 (lambda ()
   (LaTeX-add-environments
    '("array" LaTeX-env-args ["argument"] 1)
    '("table" LaTeX-env-args ["argument"] 0)
    '("figure" LaTeX-env-args ["argument"] 0))))

