# apparmor-sshd

Example app to set apparmor profiles from an application service

The application contains one service:

* **apparmor**: A service that loads before other services and loads
								apparmor profiles for the system.

The enforcing of the profiles is controlled with an `ENFORCE` device variable
that should be applied to all services so that they all restart on changes.

Kernel configuration
====================

The kernel needs to have apparmor support enabled and apparmor needs to be
registered as security module.

If that is not the default, you can pass the following in the kernel
command line arguments:

```
apparmor=1 security=apparmor
```
