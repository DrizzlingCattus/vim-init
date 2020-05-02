## 구성

```
project
  ├── bundle : 플러그인들이 설치되는 디렉토리
  ├── init.vim : 메인 vim script
  ├── local : init.vim에서 모듈화가 필요한 부분을 따로 분리시킨 vimscript가 모여있는 디렉토리
  ├── playground : 작업중에 그때그때 만든 vimscript가 모여있는 디렉토리
  └── README.md
```


## 플러그인 구성

플러그인들은 모두 bundle 디렉토리에 설치되어있다.

플러그인 메니저는 vim-plug를 사용중이다.

vim-plug를 설치 후 `:PlugInstall` 명령을 통해 플러그인들을 설치하자.


## 계획

1. system에 따라서 neovim을 설치하는 스크립트 만들기

- dotfiles 프로젝트에 병합할 예정

2. local에 있는 모듈을 분리해서 플러그인으로 만들기
