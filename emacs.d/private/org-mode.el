(setq org-capture-templates
      '(("p" "Project Todo Files" entry (file+regexp (tonini-org-project-file) "^\*\s*.+\n")
         "** TODO %?\n  %T")))
