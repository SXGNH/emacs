

(deftheme steelblue "steel-blue theme")
(custom-theme-set-faces
 'steelblue
 
 '(default ((t (:foreground "gray95" :background "steelblue4"))))
 '(region ((t (:foreground "gray25" :background "light sky blue"))))
 '(fringe ((t (:inherit 'default))))
 
 ;;mode-line setting
 '(mode-line ((t (:foreground "ghost white" :background "cornflower blue"))))
 '(mode-line-inactive ((t (:inherit mode-line :background "grey30" :foreground "ghost white" :box (:line-width -1 :color "grey40") :weight light))))
 
 ;;company-mode
 '(company-scrollbar-bg ((t (:background "gray"))))
 '(company-scrollbar-fg ((t (:background "black"))))
 '(company-tooltip ((t (:background "lightgray" :foreground "black" ))))
 '(company-tooltip-annotation ((t (:foreground "sienna"))))
 '(company-tooltip-annotation-selection ((t (:foreground "black"))))
 '(company-tooltip-common ((t (:background "lightgray"))))
 '(company-tooltip-common-selection ((t (:background "steel blue3"))))
 '(company-tooltip-selection ((t (:background "steel blue3" :foreground "black"))))

 ;;linum-mode
 '(linum ((t (:foreground "LemonChiffon1" :inherit 'default))))
 
 )

;;;###autoload
(defun steelblue-theme ()
  "fdsa"
  (interactive)
  (load-theme 'steelblue t))


(provide-theme 'steelblue)
