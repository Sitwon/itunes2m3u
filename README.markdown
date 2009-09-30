itunes2m3u
==========

How to use
----------

This is just a simple XSLT stylesheet. It's written in XSLT 1.0 so it should work on any XSLT processor you want to throw it at. My preference is Saxon9 which is what I use for development and testing. 

### Windows:

#### Method 1:

1.	Open the XML playlist in a text editor.
1.	Add the following line as the 2nd line in the file (after `<?xml ... ?>`):
	`<?xml-stylesheet type="text/xsl" href="itunes2m3u.xsl"?>`
1.	Save and close the file.
1.	Copy the itunes2m3u.xsl stylesheet into the same directory where you saved your playlist.
1.	Drag and drop the playlist into IE. IE will run the transformation and render the XML file as an M3U. You can then copy and paste into a new file or right-click and "view source" which will open the M3U in notepad allowing you to re-save it. 

#### Method 2:

1.	Download the [msxsl.exe][] utility from Microsoft.
1.	Copy msxsl.exe into your Windows/System32 folder (or any other directory in your %PATH%).
1.	Copy the itunes2m3u.xsl stylesheet into the same directory as your playlist.
1.	Open a CMD window and navigate to the folder containing the playlist and stylesheet. Then run this command:
	`> msxsl playlist.xml itunes2m3u.xsl -o playlist.m3u`

[msxsl.exe]: http://www.microsoft.com/downloads/details.aspx?FamilyID=2fb55371-c94e-4373-b0e9-db4816552e41&DisplayLang=en

### Other Operating Systems:

todo: Add instructions for using Saxon.
