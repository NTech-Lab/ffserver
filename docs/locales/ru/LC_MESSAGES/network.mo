��          \               �   p   �   �    ~   �     7  7   I  B   �  �   �  �  K  �   =  �    �   �	  !   �
  r     �   �  �   #   After you install the FindFace Server components, configure their interaction with each other. Do the following: By default, if one or several tntapi shards are out of service during face identification, :program:`findface-facenapi` returns an error. If necessary, uncomment the ``tntapi_ignore_search_error`` parameter and assign it ``True``. In this case findface-facenapi will use available tntapi shards to obtain face identification results, indicating the number of available servers vs the total number of servers in the response:: Check the services status. The command will return the services description, status (should be Active), path and running time. Configure Network Open the ``findface-facenapi.ini`` configuration file:: The ``findface-facenapi.ini`` content must be correct Python code. Uncomment and/or edit the settings to align with your network specifications, substituting the suggested values with actual location:: Project-Id-Version: FindFace Enterprise Server SDK 2.5
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-11-16 13:09+0300
PO-Revision-Date: 2017-11-14 16:55+0300
Last-Translator: Sasha Carlos <info@ntechlab.com>
Language: ru
Language-Team: NtechLab Documentation Team
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.1
 После установки компонентов Сервера FindFace настройте их взаимодействие друг с другом.  Выполните следующие действия: По умолчанию, если один или несколько шардов ``tntapi`` будут недоступны во время идентификации лица, компонент ``findface-facenapi`` вернет ошибку. При необходимости раскомментируйте параметр ``tntapi_ignore_search_error`` и присвойте ему значение ``True``. В этом случае ``findface-facenapi`` будет использовать для идентификации только доступные шарды ``tntapi`` и укажет в ответе отношение количества доступных шардов ``tntapi`` к их общему количеству. :: Проверьте статус сервисов. Команда вернет описание сервисов, их статус (должен быть Активен), путь и длительность текущей сессии. Сетевые настройки Откройте для редактирования файл конфигурации ``findface-facenapi.ini``:: Содержимое файла ``findface-facenapi.ini`` должно представлять собой синтаксически верный код Python. Отредактируйте настройки в соответствии с фактическим распределением компонентов:: 