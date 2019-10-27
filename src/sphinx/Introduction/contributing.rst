.. _Contributing:

============
Contributing
============

As an open-source project, we strongly encourage contributions of code, bug fixes, optimizations, new features, documentation updates, and any other useful changes.



Bug Reports
===========

Bugs are tracked as `GitHub issues <https://guides.github.com/features/issues>`_. Before creating bug reports, please 

* check the :ref:`FAQs` for a list of common questions and problems.
* find the right repository (:ref:`Directions`) and browse through the issues section a to see if the problem has already been reported. If it has, and the issue is still open, add a comment to the existing issue instead of opening a new one. If you are not sure where to create the issue, take `sick_scan_base <https://github.com/SickScan/sick_scan_base/issues>`_.

.. note::  
  
  If you find a **Closed** issue that seems like it is the same thing that you're experiencing, open a new issue and include a link to the original issue in the body of your new one.

When you are creating a bug report, please include as many details as possible:

* Use a clear and descriptive title for the issue to identify the problem.
* Describe the exact steps which reproduce the problem in as many details as possible.
* Describe the behavior you observed after following the steps and point out what exactly is the problem with that behavior.
* Explain which behavior you expected to see instead and why.
* Include screenshots
* Include console output and crash messages

Include details about your configuration and environment:

* Which version / commit of SSBL are you using?
* What's the name and version of the OS you're using?
* What's the name and version of the Compiler you're using?


Contributing Code
=================

Contributions can be submitted using Pull Requests, see `GitHub Forking <https://guides.github.com/activities/forking>`_.

**All contributions must meet the following requirements:**

* Follow the code / doxygen style used in the source code. It is a interpretation of `Google C++ Style Guide <https://google.github.io/styleguide/cppguide.html>`_.
* Code must compile with all supported OS / Compiler / Architecture combinations
* SSBL is licensed under the permissive Apache 2.0 license. We will / can not include code which is using a different license (except for the samples which may use differently licensed 3rd party libraries)
* To assure that licencing requirements are met, we require a developer to follow the Developer Certificate of Origin (DCO) process. The DCO is an attestation attached to every contribution made by every developer. In the commit message of the contribution the developer simply adds a Signed-off-by statement and thereby agrees to the DCO. The DCO text can either be manually added to your commit body, or you can add
  either ``-s`` or ``--signoff`` to your usual Git commit commands. 

  Example:

  .. code-block:: console
    
    git commit -s -am"FIXED: ..."
    
  If you forget to add the sign-off you can also amend a previous commit with the sign-off by
  running ``git commit --amend -s``. If you've pushed your changes to GitHub
  already you'll need to force push your branch after this with ``git push -f``.

  Here's to what you agree / confirm:

  .. code-block:: none

      Developer's Certificate of Origin 1.1

      By making a contribution to this project, I certify that:

      (a) The contribution was created in whole or in part by me and I
          have the right to submit it under the open source license
          indicated in the file; or

      (b) The contribution is based upon previous work that, to the
          best of my knowledge, is covered under an appropriate open
          source license and I have the right under that license to
          submit that work with modifications, whether created in whole
          or in part by me, under the same open source license (unless
          I am permitted to submit under a different license), as
          Indicated in the file; or

      (c) The contribution was provided directly to me by some other
          person who certified (a), (b) or (c) and I have not modified
          it.

      (d) I understand and agree that this project and the contribution
          are public and that a record of the contribution (including
          all personal information I submit with it, including my
          sign-off) is maintained indefinitely and may be redistributed
          consistent with this project or the open source license(s)
          involved.