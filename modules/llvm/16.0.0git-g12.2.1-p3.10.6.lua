local modulename = "llvm"
local version = "16.0.0git"
local compiler = "g12.2.1-p3.10.6"
local basepath = pathJoin(os.getenv("HOME"), "local/opt", modulename, version, compiler)

whatis("Loads "..modulename.." ("..version..") compiled with "..compiler)

-- requires
load("python/mforge-3.10.6")
prereq("python/mforge-3.10.6")

-- conflicts
conflict("llvm")

prepend_path('PATH', pathJoin(basepath, "/libexec"))
prepend_path('PATH', pathJoin(basepath, "/bin"))
prepend_path('INCLUDE', pathJoin(basepath, "/include"))
prepend_path('CPATH', pathJoin(basepath, "/include"))
prepend_path('LD_LIBRARY_PATH', pathJoin(basepath, "/lib"))
prepend_path('LIBRARY_PATH', pathJoin(basepath, "/lib"))
prepend_path('MANPATH', pathJoin(basepath, "/share/man"))

