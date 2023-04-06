# 环境搭建（linux+windows）

[TOC]

## 1 linux

下载 miniconda：[https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh](https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh)

安装 miniconda

```sh
bash Miniconda3-latest-Linux-x86_64.sh
```

在安装过程中，会提示指定安装路径

加载环境变量配置文件，使之生效

```sh
source ~/.bashrc
```

miniconda 安装完成后，每次打开终端都会激活其默认的 base 环境，我们可通过以下命令，禁止激活默认 base 环境。

```sh
conda config --set auto_activate_base false
```

配置 conda 国内镜像

```sh
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free

conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main
```

创建 python3.9 环境

```sh
conda create --name superset python=3.9

# 如果一直无法创建，将镜像https修改为http
```

conda 环境管理常用命令:

	创建环境：conda create -n env_name python=3.9
	查看所有环境：conda info --envs
	删除一个环境：conda remove -n env_name --all

激活 superset 环境

```sh
(base) [root@bigdata101 ~]# conda activate superset
(superset) [root@bigdata101 ~]# 
```

退出当前环境

```sh
(superset) [root@bigdata101 ~]# conda deactivate
```

安装以下所需依赖

```sh
yum install -y gcc c++ libffi-devel python-devel python-pip python-wheel python setuptools openssl-devel cyrus-sasl-devel openldap-devel

#ubuntu20
sudo apt-get install build-essential libssl-dev libffi-dev python3-dev python3-pip libsasl2-dev libldap2-dev default-libmysqlclient-dev
```

安装（更新）setuptools 和 pip

```sh
pip install --upgrade setuptools pip -i https://pypi.douban.com/simple/
```

安装 supetset，版本是1.3.2. 如果不指定版本会下载最新的，但是会出现很多依赖版本问题。

```sh
pip install apache-superset==1.3.2 -i https://pypi.douban.com/simple/

#如果豆瓣镜像不能下载，使用如果镜像：
pip install apache-superset==1.3.2 --trusted-host https://repo.huaweicloud.com -i https://repo.huaweicloud.com/repository/pypi/simple
```

初始化 supetset 数据库

```sh
superset db upgrade
```

创建管理员用户

```sh
(superset) [root@bigdata101 ~]# export FLASK_APP=superset
(superset) [root@bigdata101 ~]# superset fab create-admin
logging was configured successfully
2022-01-01 14:52:41,669:INFO:superset.utils.logging_configurator:logging was configured successfully
2022-01-01 14:52:41,675:INFO:root:Configured event logger of type <class 'superset.utils.log.DBEventLogger'>
/opt/miniconda3/envs/superset/lib/python3.7/site-packages/flask_caching/__init__.py:202: UserWarning: Flask-Caching: CACHE_TYPE is set to null, caching is effectively disabled.
  "Flask-Caching: CACHE_TYPE is set to null, "
Username [admin]: zgg
User first name [admin]:   # 这里可以空下
User last name [user]: 
Email [admin@fab.org]: 
Password: 
Repeat for confirmation: 
Recognized Database Authentications.
Admin User zgg created.
```

这里设置的用户名和密码需要在登录页面时使用。

superset 初始化

```sh
superset init
```

安装 gunicorn

```sh
pip install gunicorn -i https://pypi.douban.com/simple/
```

启动 superset

```sh
gunicorn --workers 5 --timeout 120 --bind bigdata101:8787 "superset.app:create_app()" --daemon
```

访问 `http://bigdata101:8787`，登录 superset


停掉 gunicorn 进程

```sh
ps -ef | awk '/superset/ && !/awk/{print $2}' | xargs kill -9
```

退出 superset 环境

```sh
conda deactivate
```

创建启停脚本: superset.sh 文件

```sh
#!/bin/bash
superset_status(){
    result=`ps -ef | awk '/gunicorn/ && !/awk/{print $2}' | wc -l`
    if [[ $result -eq 0 ]]; then
        return 0
    else
        return 1
    fi
}
superset_start(){
    source ~/.bashrc
    superset_status >/dev/null 2>&1
    if [[ $? -eq 0 ]]; then
        conda activate superset ; gunicorn --workers 5 --timeout 120 --bind bigdata101:8787 --daemon 'superset.app:create_app()'
    else
         echo "superset 正在运行"
    fi
}
superset_stop(){
    superset_status >/dev/null 2>&1
    if [[ $? -eq 0 ]]; then
        echo "superset 未在运行"
    else
        ps -ef | awk '/gunicorn/ && !/awk/{print $2}' | xargs kill -9
    fi
}
case $1 in
    start )
        echo "启动 Superset"
        superset_start
    ;;
    stop )
        echo "停止 Superset"
        superset_stop
    ;;
    restart )
        echo "重启 Superset"
        superset_stop
        superset_start
    ;;
    status )
        superset_status >/dev/null 2>&1
        if [[ $? -eq 0 ]]; then
            echo "superset 未在运行"
        else
            echo "superset 正在运行"
        fi
esac
```

加执行权限

```sh
chmod +x superset.sh
```

启动 superset

```sh
superset.sh start
```

停止 superset

```sh
superset.sh stop
```

## 2 windows

1. 下载安装 miniconda，打开用户名目录下的 `.condarc` 文件，添加如下内容：

    ```
    ssl_verify: true
    channels:
      - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
      - https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/
      - https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/msys2/
      - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
     
    show_channel_urls: true
    ```

2. 安装、配置 VC++14 环境

    下载链接：[https://pan.baidu.com/s/11gJPbaLjvc6cDMpecI4q2A](https://pan.baidu.com/s/11gJPbaLjvc6cDMpecI4q2A)

    提取码：bq0h

    此链接来自：[https://www.jianshu.com/p/8b27ff71429f](https://www.jianshu.com/p/8b27ff71429f)


3. 打开 miniconda 命令行，执行如下命令创建虚拟环境，并激活

    ```sh
    conda create -n superset python=3.9

    (base) E:\Miniconda3>conda activate superset
    ```

4. 安装 superset

    ```sh
    (superset) E:\Miniconda3>pip install apache-superset==1.3.2  -i https://pypi.douban.com/simple
    Looking in indexes: https://pypi.douban.com/simple
    Collecting apache-superset==1.3.2
      Using cached apache_superset-1.3.2-py3-none-any.whl
    Collecting simplejson>=3.15.0
    ......
    ```

5. 初始化 supetset 数据库

    ```sh
    (superset) E:\Miniconda3\envs\superset\Lib\site-packages\superset>superset db upgrade
    logging was configured successfully
    2022-01-07 16:37:24,718:INFO:superset.utils.logging_configurator:logging was configured successfully
    2022-01-07 16:37:24,740:INFO:root:Configured event logger of type <class 'superset.utils.log.DBEventLogger'>
    E:\Miniconda3\envs\superset\lib\site-packages\flask_caching\__init__.py:202: UserWarning: Flask-Caching: CACHE_TYPE is set to null, caching is effectively disabled.
      "Flask-Caching: CACHE_TYPE is set to null, "
    WARNI [alembic.env] SQLite Database support for metadata databases will         be removed in a future version of Superset.
    INFO  [alembic.runtime.migration] Context impl SQLiteImpl.
    INFO  [alembic.runtime.migration] Will assume transactional DDL.
    ```

6. 创建管理员账号

    ```sh
    (superset) E:\Miniconda3\envs\superset\Lib\site-packages\superset>set FLASK_APP=superset

    (superset) E:\Miniconda3\envs\superset\Lib\site-packages\superset>superset fab create-admin
    logging was configured successfully
    2022-01-07 16:46:32,733:INFO:superset.utils.logging_configurator:logging was configured successfully
    2022-01-07 16:46:32,743:INFO:root:Configured event logger of type <class 'superset.utils.log.DBEventLogger'>
    E:\Miniconda3\envs\superset\lib\site-packages\flask_caching\__init__.py:202: UserWarning: Flask-Caching: CACHE_TYPE is set to null, caching is effectively disabled.
      "Flask-Caching: CACHE_TYPE is set to null, "
    Username [admin]: zgg
    User first name [admin]:
    User last name [user]:
    Email [admin@fab.org]:
    Password:
    Repeat for confirmation:
    Recognized Database Authentications.
    Admin User zgg created.
    ```

7. 创建默认角色和权限

    ```sh
    (superset) E:\Miniconda3\envs\superset\Lib\site-packages\superset>superset init
    logging was configured successfully
    2022-01-07 16:48:55,498:INFO:superset.utils.logging_configurator:logging was configured successfully
    2022-01-07 16:48:55,509:INFO:root:Configured event logger of type <class 'superset.utils.log.DBEventLogger'>
    E:\Miniconda3\envs\superset\lib\site-packages\flask_caching\__init__.py:202: UserWarning: Flask-Caching: CACHE_TYPE is set to null, caching is effectively disabled.
      "Flask-Caching: CACHE_TYPE is set to null, "
    Syncing role definition
    ....
    ```

8. 汉化

    进入 `E:\Miniconda3\envs\superset\Lib\site-packages\superset` 目录下，修改config.py文件

    ```python
    # ---------------------------------------------------
    # Babel config for translations
    # ---------------------------------------------------
    # Setup default language
    BABEL_DEFAULT_LOCALE = "zh"
    # Your application default translation path
    BABEL_DEFAULT_FOLDER = "superset/translations"
    # The allowed translation for you app
    LANGUAGES = {
        # "en": {"flag": "us", "name": "English"},
        # "es": {"flag": "es", "name": "Spanish"},
        # "it": {"flag": "it", "name": "Italian"},
        # "fr": {"flag": "fr", "name": "French"},
        "zh": {"flag": "cn", "name": "Chinese"},
        # "ja": {"flag": "jp", "name": "Japanese"},
        # "de": {"flag": "de", "name": "German"},
        # "pt": {"flag": "pt", "name": "Portuguese"},
        # "pt_BR": {"flag": "br", "name": "Brazilian Portuguese"},
        # "ru": {"flag": "ru", "name": "Russian"},
        # "ko": {"flag": "kr", "name": "Korean"},
        # "sl": {"flag": "si", "name": "Slovenian"},
    }
    ```

    linux 文件路径：`/opt/module/miniconda3/envs/superset/lib/python3.7/site-packages/superset`

    确保 `translations/zh/LC_MESSAGES` 目录下，是否有 `messages.mo` 文件

9. 启动服务

    ```sh
    (superset) E:\Miniconda3\envs\superset\Lib\site-packages\superset>superset run
    logging was configured successfully
    2022-01-07 17:40:57,597:INFO:superset.utils.logging_configurator:logging was configured successfully
    2022-01-07 17:40:57,777:INFO:root:Configured event logger of type <class 'superset.utils.log.DBEventLogger'>
    E:\Miniconda3\envs\superset\lib\site-packages\flask_caching\__init__.py:202: UserWarning: Flask-Caching: CACHE_TYPE is set to null, caching is effectively disabled.
      "Flask-Caching: CACHE_TYPE is set to null, "
     * Serving Flask app "superset"
     * Environment: production
       WARNING: This is a development server. Do not use it in a production deployment.
       Use a production WSGI server instead.
     * Debug mode: off
    2022-01-07 17:41:03,200:INFO:werkzeug: * Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)
    ```

10. web 页面

    在浏览器输入 `http://127.0.0.1:5000/`

    ![w10安装](./image/w10安装.png)

-------------------------------------------------

参考：

[尚硅谷superset教程](https://www.bilibili.com/video/BV1SL4y1a7WK?spm_id_from=333.999.0.0)

[https://blog.csdn.net/qq_33659001/article/details/109478889?utm_term=superset%E7%9A%84%E7%94%A8%E6%88%B7%E5%90%8D%E5%AF%86%E7%A0%81%E6%80%8E%E4%B9%88%E6%89%BE&utm_medium=distribute.pc_aggpage_search_result.none-task-blog-2~all~sobaiduweb~default-0-109478889&spm=3001.4430](https://blog.csdn.net/qq_33659001/article/details/109478889?utm_term=superset%E7%9A%84%E7%94%A8%E6%88%B7%E5%90%8D%E5%AF%86%E7%A0%81%E6%80%8E%E4%B9%88%E6%89%BE&utm_medium=distribute.pc_aggpage_search_result.none-task-blog-2~all~sobaiduweb~default-0-109478889&spm=3001.4430)

安装中出现的相关问题解决参考：

[https://www.jianshu.com/p/8b27ff71429f](https://www.jianshu.com/p/8b27ff71429f)

[https://www.cnblogs.com/calmzeal/p/7359144.html](https://www.cnblogs.com/calmzeal/p/7359144.html)


[https://www.cnblogs.com/gambler/p/12949162.html](https://www.cnblogs.com/gambler/p/12949162.html)

[https://blog.csdn.net/seek97/article/details/109552886](https://blog.csdn.net/seek97/article/details/109552886)

[https://blog.csdn.net/sinat_29297223/article/details/89363726](https://blog.csdn.net/sinat_29297223/article/details/89363726)


