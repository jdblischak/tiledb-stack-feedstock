About tiledb-stack-feedstock
============================

Feedstock license: [BSD-3-Clause](https://github.com/conda-forge/tiledb-stack-feedstock/blob/main/LICENSE.txt)


About tiledb-stack
------------------

Home: http://tiledb.io

Package license: MIT

Summary: TileDB stack to deploy to TileDB Cloud

Development: https://github.com/TileDB-Inc/TileDB

Documentation: http://docs.tiledb.io

Special set of linux binaries for easy deployment


About tiledb
------------

Home: http://tiledb.io

Package license: MIT

Summary: TileDB sparse and dense multi-dimensional array data management

Development: https://github.com/TileDB-Inc/TileDB

Documentation: http://docs.tiledb.io

TileDB is an efficient multi-dimensional array management system which introduces
a novel on-disk format that can effectively store dense and sparse array data with
support for fast updates and reads. It features excellent compression, and an efficient
parallel I/O system with high scalability.


About r-tiledb
--------------

Home: https://www.tiledb.com

Package license: MIT

Summary: R interface to the TileDB array storage manager

Development: https://github.com/TileDB-Inc/TileDB-R

Documentation: https://docs.tiledb.com/developer/

TileDB is a highly-parallelized, cloud native array storage engine.


About tiledb-py
---------------

Home: http://tiledb.io

Package license: MIT

Summary: Python interface to the TileDB sparse and dense multi-dimensional array storage manager

Development: https://github.com/TileDB-Inc/TileDB-Py

Documentation: https://api-reference.tiledb.io/python-api.html

TileDB-Py is the python interface to the TileDB array storage manager.
TileDB  is an efficient multi-dimensional array management system which introduces
a novel on-disk format that can store dense and sparse array data with
support for fast reads and updates and reads. It features excellent compression, and an efficient
parallel I/O system with high scalability.


About tiledb-stack
------------------

Home: https://www.tiledb.com

Package license: MIT

Summary: TileDB Cloud stack

Development: https://github.com/TileDB-Inc/TileDB

Documentation: http://docs.tiledb.io

The conda binaries deployed to TileDB Cloud


Current build status
====================


<table>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=&branchName=main">
            <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/tiledb-stack-feedstock?branchName=main">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>linux_64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/tiledb-stack-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_64_" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-r--tiledb-green.svg)](https://anaconda.org/tiledb/r-tiledb) | [![Conda Downloads](https://img.shields.io/conda/dn/tiledb/r-tiledb.svg)](https://anaconda.org/tiledb/r-tiledb) | [![Conda Version](https://img.shields.io/conda/vn/tiledb/r-tiledb.svg)](https://anaconda.org/tiledb/r-tiledb) | [![Conda Platforms](https://img.shields.io/conda/pn/tiledb/r-tiledb.svg)](https://anaconda.org/tiledb/r-tiledb) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-tiledb-green.svg)](https://anaconda.org/tiledb/tiledb) | [![Conda Downloads](https://img.shields.io/conda/dn/tiledb/tiledb.svg)](https://anaconda.org/tiledb/tiledb) | [![Conda Version](https://img.shields.io/conda/vn/tiledb/tiledb.svg)](https://anaconda.org/tiledb/tiledb) | [![Conda Platforms](https://img.shields.io/conda/pn/tiledb/tiledb.svg)](https://anaconda.org/tiledb/tiledb) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-tiledb--py-green.svg)](https://anaconda.org/tiledb/tiledb-py) | [![Conda Downloads](https://img.shields.io/conda/dn/tiledb/tiledb-py.svg)](https://anaconda.org/tiledb/tiledb-py) | [![Conda Version](https://img.shields.io/conda/vn/tiledb/tiledb-py.svg)](https://anaconda.org/tiledb/tiledb-py) | [![Conda Platforms](https://img.shields.io/conda/pn/tiledb/tiledb-py.svg)](https://anaconda.org/tiledb/tiledb-py) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-tiledb--stack-green.svg)](https://anaconda.org/tiledb/tiledb-stack) | [![Conda Downloads](https://img.shields.io/conda/dn/tiledb/tiledb-stack.svg)](https://anaconda.org/tiledb/tiledb-stack) | [![Conda Version](https://img.shields.io/conda/vn/tiledb/tiledb-stack.svg)](https://anaconda.org/tiledb/tiledb-stack) | [![Conda Platforms](https://img.shields.io/conda/pn/tiledb/tiledb-stack.svg)](https://anaconda.org/tiledb/tiledb-stack) |

Installing tiledb-stack
=======================

Installing `tiledb-stack` from the `tiledb/label/for-cloud` channel can be achieved by adding `tiledb/label/for-cloud` to your channels with:

```
conda config --add channels tiledb/label/for-cloud
conda config --set channel_priority strict
```

Once the `tiledb/label/for-cloud` channel has been enabled, `r-tiledb, tiledb, tiledb-py, tiledb-stack` can be installed with `conda`:

```
conda install r-tiledb tiledb tiledb-py tiledb-stack
```

or with `mamba`:

```
mamba install r-tiledb tiledb tiledb-py tiledb-stack
```

It is possible to list all of the versions of `r-tiledb` available on your platform with `conda`:

```
conda search r-tiledb --channel tiledb/label/for-cloud
```

or with `mamba`:

```
mamba search r-tiledb --channel tiledb/label/for-cloud
```

Alternatively, `mamba repoquery` may provide more information:

```
# Search all versions available on your platform:
mamba repoquery search r-tiledb --channel tiledb/label/for-cloud

# List packages depending on `r-tiledb`:
mamba repoquery whoneeds r-tiledb --channel tiledb/label/for-cloud

# List dependencies of `r-tiledb`:
mamba repoquery depends r-tiledb --channel tiledb/label/for-cloud
```




Updating tiledb-stack-feedstock
===============================

If you would like to improve the tiledb-stack recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`tiledb` channel, whereupon the built conda packages will be available for
everybody to install and use from the `tiledb` channel.
Note that all branches in the conda-forge/tiledb-stack-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@ihnorton](https://github.com/ihnorton/)
* [@jdblischak](https://github.com/jdblischak/)
* [@shelnutt2](https://github.com/shelnutt2/)

