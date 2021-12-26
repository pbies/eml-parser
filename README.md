eml-parser
==========

		Thunderbird eml files parser for copy/rename according to date inside the .eml file

	Getting Started
	---------------

		1. Download the script
		2. Put the script in a folder
		3. Save selected messages from Thunderbird to subfolder "in"
		4. Run the script
		5. The result are in "out" subfolder

	Prerequisites
	-------------

		Thunderbird and Linux/Cygwin/WSL. Perl is needed for .pl script. Perl DateTime package is needed.

	Installing
	----------

		Download. You may need some Perl packages. Please install them using: apt, apt-get, yum or Cygwin setup.

		To install Perl DateTime package use the following commands:

		perl -MCPAN -e shell

		cpan> install DateTime

	Running the tests
	-----------------

		Script is so easy, that it does not need testing. You may experience issues when there are no .eml files in the "in" folder.

	Purpose
	-------

		Script is made for copying .eml files to subfolder "out" renaming each file with "date-time" of the message.
		If there is the same date and time, filename will end with one or more "\_".

	Built With
	----------

		Midnight Commander

	Contributing
	------------

		Edits are allowed on separate branches.

	Versioning
	----------

		When there will be new version, the current one will be overwritten.

	Authors
	-------

		Piotr Biesiada - Initial work

	License
	-------

		This project is licensed under the GNU GENERAL PUBLIC LICENSE - see
		the LICENSE file for details.

		That means you must fulfill these requirements:
		1. your project have the same license
		2. you mention the original author (me)
		3. can't use scripts in commercial products if they are not free
		4. you can freely modify and use this project for personal usage

	Acknowledgments
	---------------

		If you like my work please share your opinion with me!
