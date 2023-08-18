```
#install xmake
#update it to dev
xmake update -s dev
#compile LLVM from master

xmake f --toolchain=clang --ar=llvm-ar
xmake b -vD
```

```
checking for platform ... windows
checking for architecture ... x64
[  0%]: generating.module.deps src\main.cpp
checking for clang-scan-deps ... ok
checking for flags (-fvisibility-inlines-hidden) ... ok
> clang "-fvisibility-inlines-hidden" "-Qunused-arguments" "-m64"
checking for flags (-std=c++23) ... ok
> clang "-std=c++23" "-Qunused-arguments" "-m64"
checking for flags (-stdlib=libc++) ... ok
> clang "-stdlib=libc++" "-Qunused-arguments" "-m64"
checking for flags (-fexperimental-library) ... ok
> clang "-fexperimental-library" "-Qunused-arguments" "-m64"
clang-scan-deps --format=p1689 -- clang -x c++ -c src\main.cpp -o build\.objs\test\windows\x64\release\src\main.cpp.obj -Qunused-arguments -m64 -std=c++23 -Iinclude -fexceptions -fcxx-exceptions -stdlib=libc++ -fexperimental-library
checking for flags (clang_modules_cache_path) ... ok
> clang "-fmodules-cache-path=C:\Users\arthu\AppData\Local\Temp\.xmake\230818" "-Qunused-arguments" "-m64"
[  0%]: generating.module.deps stdmodules\std.cppm
checking for flags (-Wno-reserved-module-identifier) ... ok
> clang "-Wno-reserved-module-identifier" "-Qunused-arguments" "-m64"
clang-scan-deps --format=p1689 -- clang -x c++ -c stdmodules\std.cppm -o build\.objs\stdmodules\windows\x64\release\stdmodules\std.cppm.obj -Qunused-arguments -m64 -std=c++23 -fexceptions -fcxx-exceptions -isystem C:\Dev\llvm\include\c++\v1 -stdlib=libc++ -fexperimental-library -Wno-reserved-module-identifier
checking for flags (clang_module_output) ... ok
> clang "-fmodule-output=" "-Qunused-arguments" "-m64"
[  9%]: compiling.module.release std
clang -c -x c++-module -fmodule-output=build\.gens\stdmodules\windows\x64\release\rules\modules\cache\a3c3afdf\std.pcm -Qunused-arguments -m64 -std=c++23 -fexceptions -fcxx-exceptions -isystem C:\Dev\llvm\include\c++\v1 -stdlib=libc++ -fexperimental-library -Wno-reserved-module-identifier -fmodules-cache-path=build\.gens\stdmodules\windows\x64\release\rules\modules\cache -o build\.objs\stdmodules\windows\x64\release\stdmodules\std.cppm.obj stdmodules\std.cppm
checking for flags (-fdiagnostics-color=always) ... ok
> clang "-fdiagnostics-color=always" "-Qunused-arguments" "-m64"
checking for flags (clang_module_file) ... ok
> clang "-fmodule-file=C:\Users\arthu\AppData\Local\Temp\.xmake\230818\_C7FE4212A0024C20863C19F8BFE58C20.pcm" "-Qunused-arguments" "-m64"
[ 27%]: archiving.release stdmodules.lib
llvm-ar cr build\windows\x64\release\stdmodules.lib build\.objs\stdmodules\windows\x64\release\stdmodules\std.cppm.obj
[ 72%]: compiling.release src\main.cpp
clang -c -Qunused-arguments -m64 -std=c++23 -Iinclude -fexceptions -fcxx-exceptions -stdlib=libc++ -fexperimental-library -fmodule-file=std=build\.gens\stdmodules\windows\x64\release\rules\modules\cache\a3c3afdf\std.pcm -o build\.objs\test\windows\x64\release\src\main.cpp.obj src\main.cpp
checking for flags (-MMD -MF) ... ok
> clang "-MMD" "-MF" "C:\Users\arthu\AppData\Local\Temp\.xmake\230818\_B8EFBAE9785C4D1088A27F859A6B6850" "-Qunused-arguments" "-m64"
error: @programdir\modules\private\async\runjobs.lua:256: @programdir\modules\private\action\build\object.lua:91: @programdir\modules\core\tools\gcc.lua:797: In module 'std' imported from src\main.cpp:1:
C:\Dev\llvm\include\c++\v1\__expected\expected.h:87:29: error: missing '#include "expected.h"'; '_Err' must be declared before it is used
   87 |   throw bad_expected_access<_Err>(std::forward<_Arg>(__arg));
      |                             ^
C:\Dev\llvm\include\c++\v1\__expected\expected.h:84:17: note: declaration here is not visible
   84 | template <class _Err, class _Arg>
      |                 ^
C:\Dev\llvm\include\c++\v1\__expected\expected.h:87:40: error: missing '#include "C:/Dev/llvm/include/c++/v1/__utility/forward.h"'; 'forward' must be declared before it is used
   87 |   throw bad_expected_access<_Err>(std::forward<_Arg>(__arg));
      |                                        ^
C:\Dev\llvm\include\c++\v1\__utility\forward.h:25:1: note: declaration here is not visible
   25 | forward(_LIBCPP_LIFETIMEBOUND __libcpp_remove_reference_t<_Tp>& __t) _NOEXCEPT {
      | ^
In module 'std' imported from src\main.cpp:1:
C:\Dev\llvm\include\c++\v1\__expected\expected.h:87:48: error: missing '#include "expected.h"'; '_Arg' must be declared before it is used
   87 |   throw bad_expected_access<_Err>(std::forward<_Arg>(__arg));
      |                                                ^
C:\Dev\llvm\include\c++\v1\__expected\expected.h:84:29: note: declaration here is not visible
   84 | template <class _Err, class _Arg>
      |                             ^
C:\Dev\llvm\include\c++\v1\__expected\expected.h:87:40: error: missing '#include "C:/Dev/llvm/include/c++/v1/__utility/forward.h"'; 'forward' must be declared before it is used
   87 |   throw bad_expected_access<_Err>(std::forward<_Arg>(__arg));
      |                                        ^
C:\Dev\llvm\include\c++\v1\__utility\forward.h:25:1: note: declaration here is not visible
   25 | forward(_LIBCPP_LIFETIMEBOUND __libcpp_remove_reference_t<_Tp>& __t) _NOEXCEPT {
      | ^
In module 'std' imported from src\main.cpp:1:
C:\Dev\llvm\include\c++\v1\__expected\expected.h:87:54: error: missing '#include "expected.h"'; '__arg' must be declared before it is used
   87 |   throw bad_expected_access<_Err>(std::forward<_Arg>(__arg));
      |                                                      ^
C:\Dev\llvm\include\c++\v1\__expected\expected.h:85:63: note: declaration here is not visible
   85 | _LIBCPP_HIDE_FROM_ABI void __throw_bad_expected_access(_Arg&& __arg) {
      |                                                               ^
5 errors generated.
```