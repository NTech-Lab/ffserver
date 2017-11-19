��    )      d              �  =   �  &   �  @     �   S  �     E   �  `     @   n  >   �  y   �  ~   h  n  �  [   V	  L   �	  :   �	     :
     I
     `
  ,   z
  8   �
  *   �
  ^       j  }   �       .  "  '   Q  /   y  �   �  k   5  �  �  J  �  I   �  �  ,  6  �  2   �  <     %   Z     �  k      �  l  =   J  &   �  @   �  �   �  �   �  E   d  `   �  @     >   L  y   �  ~     n  �  [   �   L   O!  :   �!     �!     �!     �!  ,   "  8   D"  *   }"  ^  �"     $  }   %$     �$  .  �$  '   �%  /   &  �   F&  k   �&  �  >'  J  4)  I   +  �  �+  6  P-  2   �.  <   �.  %   �.     /  k   �/   1 ``tntapi`` shard can handle approximately 10,000,000 faces. Check the configuration files created. Configure the ``tntapi`` shard to autostart and start the shard. Create ``tntapi`` shards on each ``tntapi`` host. To learn how to shard, let's consider a case-study of a cluster environment containing 4 database hosts. We'll create 4 shards on each. Create a file that lists all the shards, each shard with a new line (click `here <https://raw.githubusercontent.com/NTech-Lab/FFSER-file-examples/master/s.txt>`__ to view the example). Disable the Tarantool example service autostart and stop the service. Disable the Tarantool example service autostart and stop the service. Do so for all the 4 hosts. Disable the shard created by default. Do so for all the 4 hosts. Download the :download:`exemplary script <_scripts/shard.sh>`. Edit the value due the number of faces a shard handles. The value ``1.2*1024*1024*1024`` corresponds to 1,000,000 faces:: Edit the value due to the number of faces the shard handles. The value ``1.2*1024*1024*1024`` corresponds to 1,000,000 faces:: For a small-scale project, the ``tntapi`` shard created by default (``tarantool@FindFace``) would suffice as 1 shard can handle up to 10,000,000 faces. Configuration settings of the default shard are defined in the file ``/etc/tarantool/instances.enabled/FindFace.lua``. We strongly recommend you not to add or edit anything in this file, except the maximum memory usage (``memtx_memory``), the NTLS IP address required for the ``tntapi`` licensing, and the remote access setting. The maximum memory usage should be set in bytes, depending on the number of faces the shard handles, at the rate roughly 1280 byte per face. Install ``tntapi`` on designated hosts. Tarantool will be installed automatically along it. Install ``tntapi``. Tarantool will be installed automatically along with it. Install and configure the ``tntapi`` component as follows: Install tntapi Install tntapi cluster Install tntapi standalone Launch all the 4 shards. Do so on each host. Move ``tntapi_cluster.json`` to the directory ``/etc/``. Now you allow access from any IP address:: On the ``findface-facenapi`` host, create a file ``tntapi_cluster.json`` containing the addresses and ports of all the shards. Distribute available shards evenly over ~1024 cells in one line. Click `here <https://raw.githubusercontent.com/NTech-Lab/FFSER-file-examples/master/tntapi_cluster.json>`__ to see the file for 4 hosts with 4 shards on each. Open the configuration file:: Retrieve the shard status. The command will return a service description, a status (should be Active), path and running time. Retrieve the shards status. Run the script below (click `here <https://raw.githubusercontent.com/NTech-Lab/FFSER-file-examples/master/creating_tntapi_cluster.json_script.md>`__ to view the script). As a result, a new file ``tntapi_cluster.json`` will be created and contain a list of all shards distributed evenly over 1024 cells. Run the script from the home directory. Specify the NTLS IP address if NTLS is remote:: The ``tntapi.json`` file containing the tntapi shard parameters is automatically installed along with ``tntapi`` into the ``/etc/`` folder. The number of shards on a single host should not exceed the number of its physical processor cores minus 1. The script below creates configuration files based on the default configuration settings stored in the file ``/etc/tarantool/instances.enabled/FindFace.lua``. We strongly recommend you not to add or edit anything in the default file, except the maximum memory usage (``memtx_memory``) and the NTLS IP address required for the ``tntapi`` licensing. The maximum memory usage should be set in bytes for each shard, depending on the number of faces a shard handles, at the rate roughly 1280 byte per face. The tntapi component connects the Tarantool database and the facenapi component, transferring search results from the database to facenapi for further processing. To increase search speed, multiple tntapi shards can be created on each Tarantool host. Their running concurrently leads to a remarkable increase in performance. Each shard can handle up to approximately 10,000,000 faces. In the case of standalone deployment, you need only one shard (created by default), while in a cluster environment the number of shards has to be calculated depending on several parameters (see below). When creating shards in large installations, observe the following rules: With standalone deployment, you can access Tarantool by default only locally (``127.0.0.1``). If you want to access Tarantool from a remote host, either specify the remote host IP address in the ``FindFace.start`` section, or change ``127.0.0.1`` to ``0.0.0.0`` there to allow access to Tarantool from any IP address. In the case-study below, you allow access only from ``192.168.113.10``:: Write a bash script ``shard.sh`` that will automatically create configuration files for all shards on a particular host. Do so for the 4 hosts. Use the following script as a base for your own code. The exemplary script creates 4 shards listening to the ports: tntapi ``33001..33004`` and http ``8001..8004``. You can create ``tntapi_cluster.json`` as follows: You can view the ``tntapi`` :ref:`logs <logs>` by executing: You should get the following output:: You will have to uncomment and specify the path to ``tntapi_cluster.json`` when :ref:`configuring network <configure-network>`. You will have to uncomment the path to ``tntapi.json`` when :ref:`configuring network <configure-network>`. Project-Id-Version: FindFace Enterprise Server SDK 2.5
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-11-16 13:09+0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: ru
Language-Team: ru <LL@li.org>
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.1
 1 ``tntapi`` shard can handle approximately 10,000,000 faces. Check the configuration files created. Configure the ``tntapi`` shard to autostart and start the shard. Create ``tntapi`` shards on each ``tntapi`` host. To learn how to shard, let's consider a case-study of a cluster environment containing 4 database hosts. We'll create 4 shards on each. Create a file that lists all the shards, each shard with a new line (click `here <https://raw.githubusercontent.com/NTech-Lab/FFSER-file-examples/master/s.txt>`__ to view the example). Disable the Tarantool example service autostart and stop the service. Disable the Tarantool example service autostart and stop the service. Do so for all the 4 hosts. Disable the shard created by default. Do so for all the 4 hosts. Download the :download:`exemplary script <_scripts/shard.sh>`. Edit the value due the number of faces a shard handles. The value ``1.2*1024*1024*1024`` corresponds to 1,000,000 faces:: Edit the value due to the number of faces the shard handles. The value ``1.2*1024*1024*1024`` corresponds to 1,000,000 faces:: For a small-scale project, the ``tntapi`` shard created by default (``tarantool@FindFace``) would suffice as 1 shard can handle up to 10,000,000 faces. Configuration settings of the default shard are defined in the file ``/etc/tarantool/instances.enabled/FindFace.lua``. We strongly recommend you not to add or edit anything in this file, except the maximum memory usage (``memtx_memory``), the NTLS IP address required for the ``tntapi`` licensing, and the remote access setting. The maximum memory usage should be set in bytes, depending on the number of faces the shard handles, at the rate roughly 1280 byte per face. Install ``tntapi`` on designated hosts. Tarantool will be installed automatically along it. Install ``tntapi``. Tarantool will be installed automatically along with it. Install and configure the ``tntapi`` component as follows: Install tntapi Install tntapi cluster Install tntapi standalone Launch all the 4 shards. Do so on each host. Move ``tntapi_cluster.json`` to the directory ``/etc/``. Now you allow access from any IP address:: On the ``findface-facenapi`` host, create a file ``tntapi_cluster.json`` containing the addresses and ports of all the shards. Distribute available shards evenly over ~1024 cells in one line. Click `here <https://raw.githubusercontent.com/NTech-Lab/FFSER-file-examples/master/tntapi_cluster.json>`__ to see the file for 4 hosts with 4 shards on each. Open the configuration file:: Retrieve the shard status. The command will return a service description, a status (should be Active), path and running time. Retrieve the shards status. Run the script below (click `here <https://raw.githubusercontent.com/NTech-Lab/FFSER-file-examples/master/creating_tntapi_cluster.json_script.md>`__ to view the script). As a result, a new file ``tntapi_cluster.json`` will be created and contain a list of all shards distributed evenly over 1024 cells. Run the script from the home directory. Specify the NTLS IP address if NTLS is remote:: The ``tntapi.json`` file containing the tntapi shard parameters is automatically installed along with ``tntapi`` into the ``/etc/`` folder. The number of shards on a single host should not exceed the number of its physical processor cores minus 1. The script below creates configuration files based on the default configuration settings stored in the file ``/etc/tarantool/instances.enabled/FindFace.lua``. We strongly recommend you not to add or edit anything in the default file, except the maximum memory usage (``memtx_memory``) and the NTLS IP address required for the ``tntapi`` licensing. The maximum memory usage should be set in bytes for each shard, depending on the number of faces a shard handles, at the rate roughly 1280 byte per face. The tntapi component connects the Tarantool database and the facenapi component, transferring search results from the database to facenapi for further processing. To increase search speed, multiple tntapi shards can be created on each Tarantool host. Their running concurrently leads to a remarkable increase in performance. Each shard can handle up to approximately 10,000,000 faces. In the case of standalone deployment, you need only one shard (created by default), while in a cluster environment the number of shards has to be calculated depending on several parameters (see below). When creating shards in large installations, observe the following rules: With standalone deployment, you can access Tarantool by default only locally (``127.0.0.1``). If you want to access Tarantool from a remote host, either specify the remote host IP address in the ``FindFace.start`` section, or change ``127.0.0.1`` to ``0.0.0.0`` there to allow access to Tarantool from any IP address. In the case-study below, you allow access only from ``192.168.113.10``:: Write a bash script ``shard.sh`` that will automatically create configuration files for all shards on a particular host. Do so for the 4 hosts. Use the following script as a base for your own code. The exemplary script creates 4 shards listening to the ports: tntapi ``33001..33004`` and http ``8001..8004``. You can create ``tntapi_cluster.json`` as follows: You can view the ``tntapi`` :ref:`logs <logs>` by executing: You should get the following output:: You will have to uncomment and specify the path to ``tntapi_cluster.json`` when :ref:`configuring network <configure-network>`. You will have to uncomment the path to ``tntapi.json`` when :ref:`configuring network <configure-network>`. 