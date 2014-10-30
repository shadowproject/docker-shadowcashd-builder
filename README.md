docker-shadowcashd-builder
==========================

Based on https://github.com/zerodivide1/docker-bitcoind-builder
Docker container to automatically build and output the shadowcashd binary.
Currently this container builds the binary using Ubuntu.

Requirements
============
* Docker installed and running
* 1GB+ memory for builds
* 4GB free space for builds

Usage
=====
1. Make a directory that will serve as the output of the build and will contain the `shadowcashd` binary when complete:
   ```
   $ mkdir ~/output
   ````
2. Run the builder, specifying the output directory as an argument to Docker:
   ```
   $ docker run -v ~/output:/shadowcash-out docker-shadowcashd-builder
   ```
3. ...
4. Profit! (if build succeeded, you'll see the `shadowcashd` binary in the `~/output` folder)
5. _Optional:_ To clean up the container:
 1. Find the name of the container that was just run:
    ```
    $ docker ps -a | grep docker-shadowcashd-builder
    ```
 2. Remove the used image:
    ```
    $ docker rm xxxx
    ```
    where `xxxx` is the name of the container from the previous step (e.g. `evil_heisenberg`)

License
=======
This Docker container is released under a GNU v2 Public License. See [LICENSE.md](LICENSE.md) for more details.
