```
   _           _                    _        _   _
  | |____ _ __| |_ __ _ _ _  ___ __| |__ _  | |_(_)_____ ___  _ __ _
  | / / _` (_-<  _/ _` | ' \/ -_) _` / _` |_| / / / -_) V / || / _` |
  |_\_\__,_/__/\__\__,_|_||_\___\__,_\__,_(_)_\_\_\___|\_(_)_,_\__,_|

```

Personal homepage
-----------------

Просто личный сайт со всякой ерундой.


Планы на ближайшее время:
-------------------------

 * пересмотреть и, возможно, упростить CSS
 * вернуть .htaccess с редиректами
 * сделать себе в fluxbox'е хоткей для создания нового поста в блог
 * сделать три разных layout'а — просто статья, блогопост и титульник
 * ~~сделать RSS feed для блога~~
 * добавить в заголовки
    - ссылку на RSS feed на титульнике
    - description
    - что-то из open graph
    - twitter card
    - canonical url
 * сделать (частичную) многоязычность
 * сдедать текст чуть более ч0тким и ровным, убрать смехуёчки и мат
 * возможно, прикрутить [Staticman](https://staticman.net/)?
   (или соорудить свой велосипед).
 * ~~у меня когда-то (во времена самопальных движков на PHP) была
   на каждой странице кнопка «Show source»; так вот, надо бы
   реализовать нечто подобное через GitHub~~ done!
 * добавить в CSS что-то про `@media (prefers-color-scheme: dark)`

Пожалуй, с CSS и JS на данный момент всё относительно хорошо.
То есть ещё не идеально, но уже можно не париться.
Лучше заняться контентом.


Синхронизация с Dreamwidth
--------------------------

Думаю о механизме автоматической публикации и автоматического обновления
копий моих постов в Dreamwidth.

Также мне потребуется действенный механизм для обновления mtime постов,
ну и придётся где-то хранить информацию о том, что уже синхронизировано.
Вероятно, это всё стоит писать на PHP.

 - https://wiki.dreamwidth.net/wiki/index.php/Dreamwidth_API
 - https://www.livejournal.com/doc/server/ljp.csp.flat.postevent.html
 - https://www.livejournal.com/doc/server/ljp.csp.flat.editevent.html

```json
{"last_sync_date":1583099313}
```

 - update mtime?