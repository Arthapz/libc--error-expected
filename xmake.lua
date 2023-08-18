add_sysincludedirs("C:/Dev/llvm/include/c++/v1")
add_linkdirs("C:/Dev/llvm/lib")
add_cxxflags("-stdlib=libc++", "-fexperimental-library")

target("stdmodules")
    set_kind("static")
    set_languages("c++latest")

    add_files("stdmodules/**.cppm")
target_end()

target("test")
    set_kind("binary")
    set_languages("c++latest")

    add_files("src/*.cpp")

    add_includedirs("include")

    add_deps("stdmodules")