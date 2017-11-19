��          t               �   M   �   6     o   R     �     �     �  �   �  M   �  !   �  T     �  j  �   \  ^   :  �   �     u     �  ;   �  "  �  �   �  2   �	  �   �	   (120; ∞) — the licensing source response has been timed out. Take action. (30; 120] — almost certainly something bad happened. (5, 30] — there may be some problems with connection, or with a local drive where the license file is stored. Exemplary response Request Retrieve Licensing Information The ``last_updated`` parameter in the response indicates how long ago the local license has been checked for the last time. Interpret its value (in seconds) as follows: You can use API to retrieve :ref:`licensing <licensing>` information in JSON. [0, 5] — everything is alright. ``"valid": false``: connection with the licensing source has never been established. Project-Id-Version: FindFace Enterprise Server SDK 2.5
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-11-08 12:33+0300
PO-Revision-Date: 2017-11-19 18:13+0300
Last-Translator: Sasha Carlos <info@ntechlab.com>
Language: ru
Language-Team: NtechLab Documentation Team
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.1
 (120; ∞) — не удается получить ответ от источника лицензирования в течение длительного времени. Необходимо вмешательство. (30; 120] — почти наверняка случилось что-то нехорошее. (5, 30] — возможно имеют место быть какие-то проблемы со связью, либо с локальным накопителем, где хранятся файлы лицензий. Пример ответа Запрос Получение информации о лицензии Параметр ``last_updated`` в ответе показывает, как давно в последний раз проверялась локальная лицензия. Интерпретируйте его значение (в секундах) следующим образом: Вы можете использовать API для получения информации о :ref:`лицензии <licensing>` в формате JSON. [0, 5] — все работает отлично. ``"valid": false``: связь с источником лицензирования так и не была установлена. 