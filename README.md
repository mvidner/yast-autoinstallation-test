Integration Test of YaST Autoinstallation (AutoYaST)
====================================================

AutoYaST is ...

The goal is to test various installation profiles (and boot-time parameters,
and hardware configurations) to check for regressions when refactoring the
code and fixing bugs.

Test Suites and Test Cases
--------------------------

One test suite consists of the following:

- an autoinstallation profile
  (autoinst.xml), required
- test cases as programs following the [Test Anything Protocol][TAP]
  (t/*.t), required
- hardware description (number and model of hard disks, network cards...),
  optional
- boot command line parameters, optional

[TAP]: https://en.wikipedia.org/wiki/Test_Anything_Protocol


