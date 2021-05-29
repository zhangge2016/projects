import os
import re
import shutil
import argparse

try:
    from setuptools import setup, Extension
except ImportError:
    from distutils.core import setup
    from distutils.extension import Extension
from Cython.Build import cythonize

def get_file_list(pyfile_dir):
    files = os.listdir(pyfile_dir)
    file_list = []
    for file in files:
        if re.search('\.py$', file) and (re.match('main.py|so_packing.py', file) is None):
            file_list.append(os.path.join(pyfile_dir, file))
        else:
            pass
    return file_list

def encapsulation(file_list, build_dir):
    build_tmp_dir = os.path.join(build_dir, 'tmp')
    setup(
        ext_modules=cythonize(file_list),
        script_args=["build_ext", "-b", build_dir, "-t", build_tmp_dir]
    )

def delete_c(pyfile_dir, build_dir):
    pyfiles = os.listdir(pyfile_dir)
    for pyfile in pyfiles:
        if re.search('\.c$', pyfile):
            os.remove(os.path.join(pyfile_dir, pyfile))
        else:
            pass
    print("All .c files had removed!")
    sofiles = os.listdir(build_dir)
    for sofile in sofiles:
        if re.match('^tmp$', sofile):
            shutil.rmtree(os.path.join(build_dir, sofile))
        elif re.search('\.so$', sofile):
            newfile = sofile.replace('.cpython-37m-x86_64-linux-gnu', '')
            os.rename(os.path.join(build_dir, sofile), os.path.join(build_dir, newfile))
        else:
            pass
    print("All .o files had removed!")

def parsers():

    parser = argparse.ArgumentParser(description='soEncapsulation, a tool to encapsulate .py to .so.')
    parser.add_argument('--pyfile_dir', help='dir with all .py files')
    parser.add_argument('--build_dir',help='dir to save .so and .o files')
    args = parser.parse_args()

    if not args.pyfile_dir:
        print('You must supply a pyfile_dir\n')
        parser.print_help()
        exit(0)

    if not args.build_dir:
        print('You must supply a build_dir\n')
        parser.print_help()
        exit(0)

    return args

if __name__ == "__main__":
    args = parsers()
    file_list = get_file_list(pyfile_dir=args.pyfile_dir)
    if not os.path.exists(args.build_dir):
        os.mkdir(args.build_dir)
    encapsulation(file_list=file_list, build_dir=args.build_dir)
    delete_c(pyfile_dir=args.pyfile_dir, build_dir=args.build_dir)
