
==================================
alternatives
==================================

Salt formula for controlling the Linux alternatives functionality.

This formula has modified versions of the alternatives execution module
and state module to allow changing of a targets priority.

If the ''name'' argument is not provided then it uses the section name.



Sample pillars
==============



.. code-block:: yaml

alternatives:
  editor-vim-basic:
    name: editor
    path: /usr/bin/vim.basic
    link: /usr/bin/editor
    priority: 100
  editor:
    path: /bin/nano
    link: /usr/bin/editor
    priority: 50
  w-disable:
    name: w
    disable: true
  awk:
    disable: true
