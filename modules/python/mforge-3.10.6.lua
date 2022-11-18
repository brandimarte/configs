local modulename = "python"
local distrib = "miniforge3"
local version = "3.10.6"
local basepath = pathJoin(os.getenv("HOME"), "local/opt", modulename, distrib, version)

whatis("Loads "..modulename.." ("..version..") from "..distrib.." distribution")

-- conflicts
conflict("python")

setenv('CONDA_PREFIX', basepath)
setenv('CONDA_EXE', pathJoin(basepath, "bin/conda"))
setenv('CONDA_PYTHON_EXE', pathJoin(basepath, "/bin/python"))
setenv('CONDA_DEFAULT_ENV', "base")
setenv('CONDA_SHLVL', '1')
-- setenv('_CE_M', '')
-- setenv('_CE_CONDA', '')

prepend_path('PATH', pathJoin(basepath, "/condabin"))
prepend_path('PATH', pathJoin(basepath, "/bin"))
prepend_path('PYTHONPATH', pathJoin(basepath, "/bin"))
prepend_path('INCLUDE', pathJoin(basepath, "/include"))
prepend_path('CPATH', pathJoin(basepath, "/include"))
-- -- prepend_path('LD_LIBRARY_PATH', pathJoin(basepath, "/lib"))
prepend_path('LIBRARY_PATH', pathJoin(basepath, "/lib"))
prepend_path('PKG_CONFIG_PATH', pathJoin(basepath, "/lib/pkgconfig"))
prepend_path('MANPATH', pathJoin(basepath, "/share/man"))

-- To activate conda's base environment in your current shell session:
-- eval "$(${HOME}/local/opt/python/miniforge3/3.10.8/bin/conda shell.bash hook)"

