Integration Test of YaST Autoinstallation (AutoYaST)
====================================================

AutoYaST is ...

The goal is to test various installation profiles (and boot-time parameters,
and hardware configurations) to check for regressions when refactoring the
code and fixing bugs.

Test Suites and Test Cases
--------------------------

One test suite consists of the following:

- an [autoinstallation profile][AY]
  (autoinst.xml), required
- test cases as programs following the [Test Anything Protocol][TAP]
  (t/*.t), required
- hardware description (number and model of hard disks, network cards...),
  optional
- boot command line parameters, optional

[AY]:  https://doc.opensuse.org/projects/autoyast/
[TAP]: https://en.wikipedia.org/wiki/Test_Anything_Protocol

Requirements
------------

- [os-autoinst]( http://www.os-autoinst.org/)
    - which in turn requires qemu-kvm (tested) or VirtualBox
    - version X.X required which supports AutoYaST
- an ISO image of a [SUSE CD/DVD](http://software.opensuse.org/)
  (tested with [SLES11-SP2](https://www.suse.com/products/server/eval.html))

Running
-------

    cd .../yast-autoinstallation-test
    OS_AUTOINST_DIR=.../os-autoinst ./run [.../SLES.iso]


