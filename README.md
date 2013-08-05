= RailsCasts Example Application

Run these commands to try it out.

  bundle
  rake db:migrate
  rake db:seed
  rails s

    遇到错误 Sprockets::FileNotFound couldn't find file 'jquery-ui'
    需指定 jquery-rails 的版本 

    gem 'jquery-rails', '~> 2.3.0'

admin无法登录 首先去数据库检查是否存在adminuser,若不存在则用如下命令在 rails c 中手动创建

    AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')