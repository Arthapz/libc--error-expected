```
#install xmake
#compile LLVM from master

xmake f --toolchain=clang
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
In file included from stdmodules\std.cppm:187:
stdmodules/std/ctime.inc:23:12: warning: '_ctime64' is deprecated: This function or variable may be unsafe. Consider using _ctime64_s instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details. [-Wdeprecated-declarations]
   23 |     return _ctime64(_Time);
      |            ^
C:\Program Files (x86)\Windows Kits\10\Include\10.0.22621.0\ucrt\time.h:168:16: note: '_ctime64' has been explicitly marked deprecated here
  168 | _Check_return_ _CRT_INSECURE_DEPRECATE(_ctime64_s)
      |                ^
C:\Program Files (x86)\Microsoft Visual Studio\2022\Preview\VC\Tools\MSVC\14.38.32919\include\vcruntime.h:355:55: note: expanded from macro '_CRT_INSECURE_DEPRECATE'
  355 |         #define _CRT_INSECURE_DEPRECATE(_Replacement) _CRT_DEPRECATE_TEXT(    \
      |                                                       ^
C:\Program Files (x86)\Microsoft Visual Studio\2022\Preview\VC\Tools\MSVC\14.38.32919\include\vcruntime.h:345:47: note: expanded from macro '_CRT_DEPRECATE_TEXT'
  345 | #define _CRT_DEPRECATE_TEXT(_Text) __declspec(deprecated(_Text))
      |                                               ^
In file included from stdmodules\std.cppm:187:
stdmodules/std/ctime.inc:31:12: warning: '_gmtime64' is deprecated: This function or variable may be unsafe. Consider using _gmtime64_s instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details. [-Wdeprecated-declarations]
   31 |     return _gmtime64(_Time);
      |            ^
C:\Program Files (x86)\Windows Kits\10\Include\10.0.22621.0\ucrt\time.h:211:16: note: '_gmtime64' has been explicitly marked deprecated here
  211 | _Check_return_ _CRT_INSECURE_DEPRECATE(_gmtime64_s)
      |                ^
C:\Program Files (x86)\Microsoft Visual Studio\2022\Preview\VC\Tools\MSVC\14.38.32919\include\vcruntime.h:355:55: note: expanded from macro '_CRT_INSECURE_DEPRECATE'
  355 |         #define _CRT_INSECURE_DEPRECATE(_Replacement) _CRT_DEPRECATE_TEXT(    \
      |                                                       ^
C:\Program Files (x86)\Microsoft Visual Studio\2022\Preview\VC\Tools\MSVC\14.38.32919\include\vcruntime.h:345:47: note: expanded from macro '_CRT_DEPRECATE_TEXT'
  345 | #define _CRT_DEPRECATE_TEXT(_Text) __declspec(deprecated(_Text))
      |                                               ^
In file included from stdmodules\std.cppm:187:
stdmodules/std/ctime.inc:35:12: warning: '_localtime64' is deprecated: This function or variable may be unsafe. Consider using _localtime64_s instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details. [-Wdeprecated-declarations]
   35 |     return _localtime64(_Time);
      |            ^
C:\Program Files (x86)\Windows Kits\10\Include\10.0.22621.0\ucrt\time.h:235:16: note: '_localtime64' has been explicitly marked deprecated here
  235 | _Check_return_ _CRT_INSECURE_DEPRECATE(_localtime64_s)
      |                ^
C:\Program Files (x86)\Microsoft Visual Studio\2022\Preview\VC\Tools\MSVC\14.38.32919\include\vcruntime.h:355:55: note: expanded from macro '_CRT_INSECURE_DEPRECATE'
  355 |         #define _CRT_INSECURE_DEPRECATE(_Replacement) _CRT_DEPRECATE_TEXT(    \
      |                                                       ^
C:\Program Files (x86)\Microsoft Visual Studio\2022\Preview\VC\Tools\MSVC\14.38.32919\include\vcruntime.h:345:47: note: expanded from macro '_CRT_DEPRECATE_TEXT'
  345 | #define _CRT_DEPRECATE_TEXT(_Text) __declspec(deprecated(_Text))
      |                                               ^
3 warnings generated.
checking for flags (clang_module_file) ... ok
> clang "-fmodule-file=C:\Users\arthu\AppData\Local\Temp\.xmake\230818\_97F12A032492476081EB24748F01B070.pcm" "-Qunused-arguments" "-m64"
[ 27%]: archiving.release stdmodules.lib
llvm-ar cr build\windows\x64\release\stdmodules.lib build\.objs\stdmodules\windows\x64\release\stdmodules\std.cppm.obj
[ 72%]: compiling.release src\main.cpp
clang -c -Qunused-arguments -m64 -std=c++23 -Iinclude -fexceptions -fcxx-exceptions -stdlib=libc++ -fexperimental-library -fmodule-file=std=build\.gens\stdmodules\windows\x64\release\rules\modules\cache\a3c3afdf\std.pcm -o build\.objs\test\windows\x64\release\src\main.cpp.obj src\main.cpp
checking for flags (-MMD -MF) ... ok
> clang "-MMD" "-MF" "C:\Users\arthu\AppData\Local\Temp\.xmake\230818\_2FE7BB27284D486088C75F5580600180" "-Qunused-arguments" "-m64"
error: @programdir\modules\private\async\runjobs.lua:256: @programdir\modules\private\action\build\object.lua:91: @programdir\modules\core\tools\gcc.lua:797: In module 'std' imported from src\main.cpp:1:
C:\Dev\llvm\include\c++\v1\__expected\expected.h:87:29: error: missing '#include "expected.h"'; '_Err' must be declared before it is used
   87 |   throw bad_expected_access<_Err>(std::forward<_Arg>(__arg));
      |                             ^
C:\Dev\llvm\include\c++\v1\__expected\expected.h:84:17: note: declaration here is not visible
   84 | template <class _Err, class _Arg>
      |                 ^
C:\Dev\llvm\include\c++\v1\__expected\expected.h:87:48: error: missing '#include "expected.h"'; '_Arg' must be declared before it is used
   87 |   throw bad_expected_access<_Err>(std::forward<_Arg>(__arg));
      |                                                ^
C:\Dev\llvm\include\c++\v1\__expected\expected.h:84:29: note: declaration here is not visible
   84 | template <class _Err, class _Arg>
      |                             ^
C:\Dev\llvm\include\c++\v1\__expected\expected.h:87:54: error: missing '#include "expected.h"'; '__arg' must be declared before it is used
   87 |   throw bad_expected_access<_Err>(std::forward<_Arg>(__arg));
      |                                                      ^
C:\Dev\llvm\include\c++\v1\__expected\expected.h:85:63: note: declaration here is not visible
   85 | _LIBCPP_HIDE_FROM_ABI void __throw_bad_expected_access(_Arg&& __arg) {
      |                                                               ^
In module 'std' imported from src\main.cpp:1:
C:\Dev\llvm\include\c++\v1\print:339:42: error: missing '#include "print"'; '_Args' must be declared before it is used
  339 |   std::print(stdout, __fmt, std::forward<_Args>(__args)...);
      |                                          ^
C:\Dev\llvm\include\c++\v1\print:337:20: note: declaration here is not visible
  337 | template <class... _Args>
      |                    ^
C:\Dev\llvm\include\c++\v1\print:339:22: error: use of undeclared identifier '__fmt'
  339 |   std::print(stdout, __fmt, std::forward<_Args>(__args)...);
      |                      ^
C:\Dev\llvm\include\c++\v1\print:339:49: error: use of undeclared identifier '__args'
  339 |   std::print(stdout, __fmt, std::forward<_Args>(__args)...);
      |                                                 ^
C:\Dev\llvm\include\c++\v1\print:339:14: error: call to function '__acrt_iob_func' that is neither visible in the template definition nor found by argument-dependent lookup
  339 |   std::print(stdout, __fmt, std::forward<_Args>(__args)...);
      |              ^
C:\Program Files (x86)\Windows Kits\10\Include\10.0.22621.0\ucrt\corecrt_wstdio.h:37:17: note: expanded from macro 'stdout'
   37 | #define stdout (__acrt_iob_func(1))
      |                 ^
src\main.cpp:10:8: note: in instantiation of function template specialization 'std::__1::print<int>' requested here
   10 |   std::print("Hello World", foo().value());
      |        ^
C:\Program Files (x86)\Windows Kits\10\Include\10.0.22621.0\ucrt\corecrt_wstdio.h:34:28: note: '__acrt_iob_func' should be declared prior to the call site
   34 | _ACRTIMP_ALT FILE* __cdecl __acrt_iob_func(unsigned _Ix);
      |                            ^
7 errors generated.
