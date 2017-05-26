ruby-rpm-builder
================

This code uses Docker and Mock (a chroot based RPM building tool) to build a Ruby RPM from someone else's spec file (file that describes how to build an RPM). Perhaps this seems a bit nutty since this is in effect two layers of isolation.

Docker is a container tool which provides brilliant isolation (beyond just filesystem isolation, it provides network, process isolation as well as a very handuy means to specify the contents/state of the container). Mock is a chroot based tool which is designed for building RPMs in an isolated environment. Isolation forces us to be very explicit about ensuring that we install only the precise dependencies for the package (all of which are specified in the spec file).

---

Run `build.sh`

SRPMs should pop out into a directory called `SRPMS`.
RPMs should pop out into a directory called, unsurprisingly, `RPMS`.
If anything goes wrong, read the logs that should pop out into the `results` directory.

Running `clean.sh` cleans up the things.
