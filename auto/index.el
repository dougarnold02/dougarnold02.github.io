(TeX-add-style-hook
 "index"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "a4paper")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "me"
    "hyperlatex"
    "frames"
    "bibentry")
   (TeX-add-symbols
    '("BibLink" 1)
    '("Student" 2)
    '("OldCourse" 3)
    '("CourseCat" 3)
    '("Course" 3)
    '("Item" 2)
    '("mybitmap" 2)
    '("hlink" 1)
    "new"
    "clgrouppapersdoug")
   (LaTeX-add-labels
    "lg111"
    "lg114"
    "lg211"
    "lg614"
    "lg213"
    "LG102"
    "sec:downloadable-papers"))
 :latex)

