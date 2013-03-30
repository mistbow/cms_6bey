##找朋友一起学 Rails

原帖开始于http://ruby-china.org/topics/9358
演示地址：
   sinaSAE: http://6bey.scfapp.com/
   heroku: http://bey6.herokuapp.com/

##目标

本项目将致力于，通过社区协作，共同提高Ruby on Rails开发能力
###开发本地部署特别注意
运行bundle
```ruby
  bundle --without production
```
数据添加
```ruby
  rake db:init_categories               # 初始化商品大类
  rake db:init_deals                    # 初始化deals
  rake db:init_tags                     # 初始化商品大类

```
##How to deploy to Heroku

```ruby
gem 'pg'
bundle --without production
git add .
git commit -m "changed"

#while up to date
git branch production
git checkout production
#do some code changes
git commit -am "some desparate code changes to try fix heroku"
git push heroku production:master
```

##新手指南

需要贡献开源代码的参照以下具体步骤：
#### 1.在github创建指定项目分支
登录github，打开[cms_6bey](https://github.com/mistbow/cms_6bey)项目地址，点击右上角的fork按钮，将项目fork到自己的github资源库中。地址为:https://github.com/YOUR_USERNAME/cms_6bey
#### 2.克隆项目到本地
由于此时项目只是存在与远程GitHub，所以必须克隆到本地用于开发，
执行如下命令
```ruby
    git clone https://github.com/YOUR_USERNAME/cms_6bey
```
这样即在本地创建了一个项目。
#### 3.配置本地库与原始库的关联
由于克隆后的本地库的只有一个与自己的GitHub上的分支关联的名为origin的远程，所以要提交自己的更新到原始库，必须配置与原始库https://github.com/mistbow/cms_6bey的关联，名为upstream
执行如下命令：
```ruby
    cd cms_6bey #进入项目目录
    git remote add upstream https://github.com/mistbow/cms_6bey #添加跟原始资源库关联，名为upstream
    git fetch upstream #从原始库上获取最新更新
```
#### 4.修改代码并提交和PUSH
修改项目中的代码，git add 你修改的文件
```ruby
    git commit  -m '这里是备注'
    git push origin master  #这里是提交push到自己项目的分支库
    git fetch upstream  #更新远程代码到本地
    git merge upstream/master  #将自己的代码合并到自己的项目分支库
```
#### 5.发送Pull Requests
进入自己的cms_6bey分支库，点击右上角的“Pull Request” 按钮，进入发送Pull Request界面。上方左边是原始库，右边为自己的分支库，在下方填写标题及评论。点击“Send pull request”按钮，则Pull Request 发送成功。然后就等原始库的维护人员审核，是否采用你的Pull Request，采用则你的代码更新会合并到原始库，完成代码贡献。


##开创者原文

>This project is used for study. Maybe someday it will become a product :)
>Welcome to our website 6bey.com. 
>Our QQ group is 280706929.
>Wiki will be update after I push my code :)
>My english will be better someday haha!

