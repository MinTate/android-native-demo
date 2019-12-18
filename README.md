# Cmake编译Android可执行文件

## 一、背景

最近接触到一些需要在Android平台上运行直接运行可执行文件的需求，初始其实有点懵，觉得Android难道不是只可以运行APK文件吗，二进制的可执行文件也可以？后来转念一想，作为一个类Linux系统，这样的需求应该可以满足，动手！

## 二、基础知识

- CMake
- NDK

## 三、运行

### 1、工程目录说明

```bash
[min@localhost:] android-native-demo $ tree
.
├── CMakeLists.txt   # CMake编译文件
├── README.md   
├── build            # 缓存目录
├── build.sh         # 编译脚本
├── dist             # 编译后结果目录
│   └── helloandroid   
└── src              # 源文件目录
    └── main.cpp 
```

### 2、运行

- 在build.sh中修改ANDROID_NDK_HOME为自己的NDK路径；

- 开始运行

  ```bash
  sh build.sh
  ```

- 验证结果

  ```bash
  adb push dist/helloandroid /data/local/tmp
  
  # 执行结果
  sagit:/data/local/tmp $ ./helloandroid
  Hello, Android!
  ```