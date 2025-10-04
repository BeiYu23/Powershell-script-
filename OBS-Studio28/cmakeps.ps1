# 如果只是构建 OBS 核心功能，可以尝试禁用某些模块
cmake -S . -B build64 -G "Visual Studio 17 2022" `
  -DCMAKE_PREFIX_PATH="E:/ENV/Qt/6.3.1/msvc2019_64;E:/workspace/OBS/make/obs-build-dependencies/windows-deps-2022-08-02-x64" `
  -DQt6_DIR="E:/ENV/Qt/6.3.1/msvc2019_64/lib/cmake/Qt6" `
  -DCMAKE_POLICY_VERSION_MINIMUM="3.5" `
  -DBUILD_BROWSER=OFF `
  -Wno-dev
