
==================================
alternatives
==================================

Salt formula for controlling the Linux alternatives functionality.

This formula has modified versions of the alternatives execution module
and state module to allow changing of a targets priority.



Sample pillars
==============



.. code-block:: yaml

    alternatives:
      editor:
        path: /usr/bin/vim.basic
        link: /usr/bin/editor
        priority: 100
      awk:
        disable: true

