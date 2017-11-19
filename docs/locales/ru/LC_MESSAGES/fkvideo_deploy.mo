��          �               �  j   �  (   �     !  �   @  J   �     <  Z   M  x   �     !     )     2     H     g  L   �  �   �  C   T  >   �  5   �  %     �   3  �   �  >   f  �  �  �   �	  ?   �
  "   �
  1  �
  �        �  �   �  ^  `     �  
   �  '   �  =   �  7   =  l   u  �   �  �   �  �     �   �  d   D  �   �  �   M  g   �   Check service status. The command will return a service description, a status should be active (running). Configure and Start Video Face Detection Execute the following command: If you have more than one camera, use the Server to store all your cameras. Add your camera to server by POST request v1/camera. For    example, add camera to detector=detec1: If you have only one camera, you can add it in the new configuration file. In this section: Make a copy of the configuration file ``/etc/fkvideo.ini``. Open the new file for editing. Now edit your configuration file. For example, detector will connect to server, and get all cameras with detector=detec1 Request Response Specify Video Streams Start Component as Application Start Component as Service The fkvideo_detector component has to be :ref:`installed <fkvideo-install>`. This section will guide you through the :program:`fkvideo_detector` deployment process. Follow the steps below minding the sequence. To run the face detection component as a service, do the following: To specify video streams for face detection, do the following: To start fkvideo_detector as an application, execute: Use this method for testing purposes. You can find an example of the configuration file `here <https://raw.githubusercontent.com/NTech-Lab/FFSER-file-examples/master/fk_local_config.ini>`__. You can find an example of the configuration file `here <https://raw.githubusercontent.com/NTech-Lab/FFSER-file-examples/master/fk_server_config.ini>`__. You can get the list of your cameras by the following request: Project-Id-Version: FindFace Enterprise Server SDK 2.5
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-11-16 13:09+0300
PO-Revision-Date: 2017-11-17 18:26+0300
Last-Translator: Sasha Carlos <info@ntechlab.com>
Language: ru
Language-Team: NtechLab Documentation Team
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.1
 Убедитесь, что сервис активен. Команда вернет описание сервиса, его статус (должен быть Активен), путь и длительность текущей сессии. Настройка и запуск видеодетектора Выполните команду: Если у вас несколько видеокамер, храните список видеокамер на Сервере FindFace. Для этого добавьте каждую видеокамеру с помощью запроса ``POST v1/camera`` в виртуальный детектор, соответствующий определенному списку камер. Например, для того чтобы добавить видеокамеру в детектор ``detec1``, выполните следующие действия: Если у вас только одна видеокамера, вы можете добавить ее через файл конфигурации. В этом разделе: Скопируйте файл конфигурации ``/etc/fkvideo.ini``. Откройте копию для редактирования. Теперь отредактируйте файл конфигурации. Запущенный с приведенным ниже файлом конфигурации видеодетектор лиц подключится к Серверу и запросит список камер из виртуального детектора ``detec1``. Запрос Ответ Задание видеопотоков Запуск компонента как приложения Запуск компонента как сервиса Компонент ``fkvideo_detector`` должен быть :ref:`установлен <fkvideo-install>`. Для развертывания обнаружения лиц на видео выполните по порядку приведенные ниже инструкции.  Для запуска видеодетектора лиц как сервиса выполните следующие действия: Для того чтобы задать видеопотоки для обработки, выполните следующие действия: Вы можете запустить видеодетектор лиц как приложение, используя следующую команду: Используйте данный метод для тестирования компонента. Пример файла конфигурации см. `здесь <https://raw.githubusercontent.com/NTech-Lab/FFSER-file-examples/master/fk_local_config.ini>`__. Пример файла конфигурации см. `здесь <https://raw.githubusercontent.com/NTech-Lab/FFSER-file-examples/master/fk_server_config.ini>`__. Вы можете отобразить список всех камер, отправив запрос: 