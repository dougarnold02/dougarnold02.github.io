(TeX-add-style-hook
 "poems"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "a4paper" "draft")))
   (TeX-run-style-hooks
    "latex2e"
    "matthew_arnold-"
    "rexroth-"
    "stopping_by_woods-"
    "houseman-"
    "masefield-"
    "auden-"
    "neruda-"
    "yeats-"
    "donne-"
    "fenton-"
    "lawrence-"
    "wordsworth-"
    "misc-"
    "article"
    "art10"
    "me"
    "hyperlatex"))
 :latex)

