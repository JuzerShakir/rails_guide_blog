# Project: Blog
> *A simple blog web-app built on rails.*

----

## What needs to be done?
This web-app must accomplish the following:
- [x] Able to create an article with a minimum of 10 chars and delete it.
- [x] Able to comment on article.
- [x] Comments of an artcile delete from database if that article is deleted.
- [x] Able set visibility of an article and its comments to private and public.
- [x] Only authenticated users can edit and delete articles and comment.

----

## Required Gems

**This project was built on Ruby version *2.7.2*.**

Following gems were installed in these versions:

| **Gem Names** |       **Gem**       | **Version** |                      **Use**                     |
| :-----------: |   :------------:    | :---------: |                    :---------:                   |
|    Rails      |       'rails'       | **~>6.1.1** |    *Use for executing and rendering web-app*     |
|    SQLite     |       'sqlite3'     |  **~>1.4**  | *Use sqlite3 as the database for Active Record*  |


You can find all gems in this [Gemfile](https://github.com/JuzerShakir/rails_guide_blog/blob/master/Gemfile).


----

## Execution

Run the following commands to execute locally:

The following will install required version of ruby (make sure [rvm is installed](https://rvm.io/rvm/install).)
```bash
rvm install 2.7.2
```
```bash
rvm use 2.7.2
```
```bash
git clone git@github.com:JuzerShakir/rails_guide_blog.git
```
```bash
cd rails_guide_blog
```
```bash
bundle install
```
```bash
rails db:setup
```
```bash
rails s
```
