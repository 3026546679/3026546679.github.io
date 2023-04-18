---
title: hexo
tags: hexo
categories: 其他分享
abbrlink: 21358
date: 2022-08-16 16:58:02
---




> ##### 1.本地安装和配置Hexo ..

全局安装 hexo
```javascript
npm install -g hexo-cli
```
然后进入文件夹

```javascript
$ hexo init
$ cd
$ npm install
```
可以看到在文件夹下生成了很多文件，有了这些文件就可以在本地编写博客了。 安装完这一部后，我们一般会个性化配置我们的网站信息。 打开 ==_config.yml== 对下面这些代码进行配置。

```javascript
title: Wihend
subtitle: 'Wihend的博客'
description: '猪大肚不是很聪明'
keywords:
- javascript
- hexo
author: Wihend
language: zh-cn
timezone: ''
```

>  ##### 2.本地编写文章和预览
你可以执行下列命令来快速创建一篇新文章或者新的页面


```javascript
hexo new pinia
```
> 1、注意文件目录中的 `scaffolds` 文件是放到执行模板 例如 执行 `hexo new page 文章名称`
> 2、这里特殊提一下`hexo new page about` 执行后 访问 网址/about 就可跳转到此博客
> 3、与`hexo new pinia`的区别是一个会在文章列表中显示一个不显示，还有就是路径的区别

这样一键就创建好了文章编写页面。默认的位置是。

```javascript
\source\_posts\pinia.md
```
然后把你写的markdown文章直接复制进去，粘贴复制，保存。就完成了。接下来就需要查看一下自己的文章和网站的样子了。打开VSCode的终端，然后安装hexo-server，输入下面的命令。

```javascript
npm install hexo-server --save
```
刷的一瞬间，就完成了安装，然后启动服务。

```javascript
hexo server
```

在浏览器输入地址：[http://localhost:4000/](http://localhost:4000/),就可以看到你写的博客了。

>  ##### 3.把博客上传到云服务器 或者 github个人页面

###### 上传到github
首先在本地使用cmd创建自己本机的密钥。创建密钥的命令是 `ssh-keygen -t rsa`
然后在github中`settings/SSH and GPG keys` 里输入自己创建的密钥

修改本地的hexo配置文件`_config.yml`,打开文件后，拖动到最后边，输入下面的配置

```javascript
deploy:
  type: git
  repository: git@github.com:3026546679/3026546679.github.io.git
  branch: master

```

```javascript
npm install --save hexo-deployer-git
```

安装完成后，输入下面的命令

```javascript
hexo clean
hexo g -d
```

###### 上传到服务器
如果是用的服务器需在服务器上输入密钥

```javascript
su root //管理员账户 root 或者 其他
mkdir ~/.ssh   //创建存放密钥的文件夹
vim ~/.ssh/authorized_keys  //写入密钥
```

测试链接 更具自己的情况修改名称和服务器地址
```javascript
ssh -v wihend@123.45.789.66 //服务器ip
```

修改本地的hexo配置文件`_config.yml`,打开文件后，拖动到最后边，输入下面的配置

```javascript
deploy:
  type: git
  repository: wihend@123.45.789.66:/home/wihend/blog.git
  branch: master

```

```javascript
npm install --save hexo-deployer-git
```

安装完成后，输入下面的命令

```javascript
hexo clean
hexo g -d
```

如果一切正常，就可以直接传到服务器上，然后输入你的网址就可以完成博客的浏览了，我这里没有使用域名，如果你有域名，只要把域名解析到这个网址就可以了。

> 如果执行 `hexo g -d || hexo clean` 那就说明 `_config.yml` 中的配置不符合规范，可在[官网文档](https://hexo.io/zh-cn/docs/configuration)看看每个东西的注解

>  ##### 4.配置博客主题

可以在[官网主题](https://hexo.io/themes/)找到自己喜欢的主题

个人比较喜欢 [https://github.com/miiiku/flex-block](https://github.com/miiiku/flex-block)一种简洁neumorphism风格

每个风格的安装与配置皆有不同，许详细看主题中的github去配置


>  ##### 5.遇到的问题

 1. 挑选主题最好不要挑复杂的 楼主试了 [https://louisbarranqueiro.github.io/hexo-theme-tranquilpeak/](https://louisbarranqueiro.github.io/hexo-theme-tranquilpeak/)踩了挺久的坑
 2. 如果你内页加载的js和css都是404 要么是主题的问题，需要配置你下载的主题 要么是 `_config.yml中的relative_link设置成了true` 不知道这个是干啥的，官网的解释不大明白






