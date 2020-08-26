# iris-r-heroku
 
# Развернем учебное веб-приложение по предсказанию вида цветов iris, созданного при помощи R Shiny на Heroku

Heroku по-умолчанию не имеет поддержки языка R для деплоя приложений
Поэтому в разделе Settings/Add Buildpack нужно добавить кастомную сборку:

https://github.com/virtualstaticvoid/heroku-buildpack-r.git

Приложение развернуто по адресу: https://iris-r-heroku.herokuapp.com/

