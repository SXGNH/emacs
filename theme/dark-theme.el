 (deftheme dark
  "The mode that shield an eye theme")
(custom-theme-set-faces
 'dark
 
 '(default ((t (:foreground "lemonchiffon1" :background "steelblue4"))))
 '(region ((t (:foreground "gray25" :background "light sky blue"))))
 '(fringe ((t (:inherit 'default))))
 
 ;;mode-line setting
 '(mode-line ((t (:inherit default :font "consolas 12" :box (:line-width -1 :color "LemonChiffon1")))))
 '(mode-line-inactive ((t (:background "dodgerblue4" :foreground "gray80" :font "consolas 12" :box (:line-width -1 :color "black") ))))
 
 ;;company-mode
 '(company-scrollbar-bg ((t (:background "gray"))))
 '(company-scrollbar-fg ((t (:background "black"))))
 '(company-tooltip ((t (:background "lightgray" :foreground "black" ))))
 '(company-tooltip-annotation ((t (:foreground "sienna"))))
 '(company-tooltip-annotation-selection ((t (:foreground "black"))))
 '(company-tooltip-common ((t (:background "lightgray"))))
 '(company-tooltip-common-selection ((t (:background "steel blue3"))))
 '(company-tooltip-selection ((t (:background "steel blue3" :foreground "lemonchiffon1"))))

 '(rainbow-delimiters-depth-1-face ((t (:foreground "ghost white"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "cyan"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "green"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "red"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "magenta"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "navajowhitel"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "indian red"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "deepskyblue"))))
 ;;linum-mode
 '(linum ((t (:inherit 'default))))
 
 )
(provide-theme 'dark)
