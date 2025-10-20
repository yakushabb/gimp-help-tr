#!bash

printf '\n\n\n'
echo '### Ana dosyalar güncelleniyor'
printf '\n\n\n'

msgmerge --previous --update appendix.po ../pot/appendix.pot
msgmerge --previous --update appendix.po ../pot/appendix.pot
msgmerge --previous --update concepts.po ../pot/concepts.pot
msgmerge --previous --update dialogs.po ../pot/dialogs.pot
msgmerge --previous --update filters.po ../pot/filters.pot
msgmerge --previous --update gimp.po ../pot/gimp.pot
msgmerge --previous --update glossary.po ../pot/glossary.pot
msgmerge --previous --update introduction.po ../pot/introduction.pot
msgmerge --previous --update menus.po ../pot/menus.pot
msgmerge --previous --update preface.po ../pot/preface.pot
msgmerge --previous --update toolbox.po ../pot/toolbox.pot
msgmerge --previous --update tutorial.po ../pot/tutorial.pot
msgmerge --previous --update using.po ../pot/using.pot

printf '\n\n\n'
echo '### filters alt klasöründeki dosyalar güncelleniyor'
printf '\n\n\n'

msgmerge --previous --update filters/animation.po ../pot/filters/animation.pot
msgmerge --previous --update filters/artistic.po ../pot/filters/artistic.pot
msgmerge --previous --update filters/blur.po ../pot/filters/blur.pot
msgmerge --previous --update filters/combine.po ../pot/filters/combine.pot
msgmerge --previous --update filters/decor.po ../pot/filters/decor.pot
msgmerge --previous --update filters/distort.po ../pot/filters/distort.pot
msgmerge --previous --update filters/edge-detect.po ../pot/filters/edge-detect.pot
msgmerge --previous --update filters/enhance.po ../pot/filters/enhance.pot
msgmerge --previous --update filters/generic.po ../pot/filters/generic.pot
msgmerge --previous --update filters/light-and-shadow.po ../pot/filters/light-and-shadow.pot
msgmerge --previous --update filters/map.po ../pot/filters/map.pot
msgmerge --previous --update filters/noise.po ../pot/filters/noise.pot
msgmerge --previous --update filters/render.po ../pot/filters/render.pot
msgmerge --previous --update filters/web.po ../pot/filters/web.pot

printf '\n\n\n'
echo '### menus alt klasöründeki dosyalar güncelleniyor'
printf '\n\n\n'

msgmerge --previous --update menus/colors.po ../pot/menus/colors.pot
msgmerge --previous --update menus/edit.po ../pot/menus/edit.pot
msgmerge --previous --update menus/file.po ../pot/menus/file.pot
msgmerge --previous --update menus/filters.po ../pot/menus/filters.pot
msgmerge --previous --update menus/help.po ../pot/menus/help.pot
msgmerge --previous --update menus/image.po ../pot/menus/image.pot
msgmerge --previous --update menus/layer.po ../pot/menus/layer.pot
msgmerge --previous --update menus/select.po ../pot/menus/select.pot
msgmerge --previous --update menus/view.po ../pot/menus/view.pot

printf '\n\n\n'
echo '### menus/colors alt klasöründeki dosyalar güncelleniyor'
printf '\n\n\n'


msgmerge --previous --update menus/colors/auto.po ../pot/menus/colors/auto.pot
msgmerge --previous --update menus/colors/components.po ../pot/menus/colors/components.pot
msgmerge --previous --update menus/colors/desaturate.po ../pot/menus/colors/desaturate.pot
msgmerge --previous --update menus/colors/info.po ../pot/menus/colors/info.pot
msgmerge --previous --update menus/colors/map.po ../pot/menus/colors/map.pot
msgmerge --previous --update menus/colors/tone-mapping.po ../pot/menus/colors/tone-mapping.pot

printf '\n\n\n'
echo '### toolbox alt klasöründeki dosyalar güncelleniyor'
printf '\n\n\n'

msgmerge --previous --update toolbox/paint.po ../pot/toolbox/paint.pot
msgmerge --previous --update toolbox/selection.po ../pot/toolbox/selection.pot
msgmerge --previous --update toolbox/transform.po ../pot/toolbox/transform.pot

printf '\n\n\n'
echo '### ✅ Pot dosyalarının güncellenmesi bitti. Eline sağlık!'
printf '\n\n\n'

# Güncelleme işleminin oluşturduğu artık dosyaları sil
find ./ -type f -name '*~' -delete
