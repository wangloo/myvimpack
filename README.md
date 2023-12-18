## 介绍
此项目为了方便我同步 `~/.vim/pack` 目录下的插件. 

*pack system* 是vim8.0 版本引入的, 属于管理插件的一种更加简单的方式.

Any directory under `~/.vim/pack` is considered a package. A package can hold
plugins in two different directories, start and opt. The plugins under `start/`
folder are loaded on startup, while the plugins under `opt/` folder are loaded 
manually by the user with the command `:packadd`.

> More about *pack system*, see [Here](https://medium.com/@paulodiovani/installing-vim-8-plugins-with-the-native-pack-system-39b71c351fea).

## 使用方式


```sh
mkdir ~/.vim/pack/
cd ~/.vim/pack/
git clone https://github.com/wangloo/myvimpack.git
cd myvimpack/

# run `check.sh` first, check dependence
./check.sh
git submodule update --init
```
