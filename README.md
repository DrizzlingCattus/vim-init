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

플러그인 매니저인 Vundle을 제외한 나머지는 `:VundleInstall`을 통해서 설치할 수 있다.

하지만 Vundle은 관리를 용이하게 하기위해 git submodule로 설정되어있다.

그래서 처음에 git pull로 받아오면, bundle/Vundle.vim 폴더만 있고 내용물은 없다.

Neovim을 실행하기전에 submodule을 업데이트해주면 된다.

```
# init Vundle.vim submodule
git submodule init

# Get Vundle.vim from Vundle.vim origin
git submodule update
```


