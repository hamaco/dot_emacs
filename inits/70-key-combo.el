(global-key-combo-mode 1)

(setq key-combo-common-mode-hooks
      '(php-mode-hook
        ruby-mode-hook
        ))

(setq key-combo-common-default
      '(
        ("=" . (" = "  " == " " === "  "="   ))
        ("=>". (" => "                       ))
        (">" . (">"    " => " " >= "         ))
        ("+" . (" + "  "++"   " += "   "+"   ))
        ("-" . ("-"    "--"   " -= "   " - " ))
        ("!" . ("!"    " != " " !== "        ))
        ("!=". (" != "                       ))
        ("<" . ("<"    " <= " "<<<EOM"       ))
        ("." . ("."    " .= " " . "    ".."  ))
        ))

(key-combo-define-hook key-combo-common-mode-hooks
                       'key-combo-common-load-default
                       key-combo-common-default)
