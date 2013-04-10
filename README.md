yt.rc
=====

My RC Files, sprinter configuration, etc.

Installing
----------

If you have sprinter, installation is:

    sprinter install https://raw.github.com/toumorokoshi/yt.rc/master/toumorokoshi.cfg

Additional steps
----------------
* add ssh key to github (~/.sprinter/toumorokoshi/github/github.pub)

Ubuntu 12.04 Specific Setup
---------------------------

Install compiz settings:

    sudo apt-get install compiz compizconfig-settings-manager compiz-fusion-plugins-extra compiz-fusion-plugins-main compiz-plugins wmctrl

To get to settings manager type:

    ccsm

The notable configuration is:

* 'grid' for aero-like window snapping

toumorokoshi's emacs environment 
================================
This the emacs environment I use to do almost anything coding-related. Feel free to fork it if you'd like,
always looking for more improvements on this.

NOTES
-----

I've categorized my emacs dependencies into two sections: with externals and without externals.

By "externals" I mean any .el files, folders, or scripts that need to be downloaded. .emacs.noexternals with 
work fine with just the basic emacs out right now (23.3)

Create a symbolic link to the version that you would like. The .externals is considerably harder,
as this requires you to go around and find every include I've added. Sounds like emacs24 will have a 
package manager, so at that point I'm sure the .external version will be much more accessible.

Anyway, I have .externals depending on .noexternals, so you only to use one:

.emacs.externals (loads) -> .emacs.noexternals

Externals to install
--------------------

jedi should be installed (python code complete):
$ easy_install jedi
epc should be installed (python code complete):
$ easy_install epc
virtualenv should be installed (unused but required for install of jedi):
$ easy_install virtualenv


Installing compiz-fusion
------------------------


