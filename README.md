data_generator
==============

Generates test data and copies it to clipboard.

Version 0.1 - Early days yet, friends. Handle with care.

Usage
==============

You will need: 
- Ruby (this was developed on ruby-1.9.3-p194)
- OSX or Windows

1. Fire up your command line prompt.
2. Enter any of the following:

For random words:
ruby datagen.rb words [number]<br/>
e.g. ruby datagen.rb words 2<br/>
will copy two random words to clipboard

For random email address (using the Gmail + variable):
ruby datagen.rb email [email address]<br/>
e.g. ruby datagen.rb bob@example.com<br/>
will copy "bob+somethingrandom@example.com" to clipboard

Instructions for integrating with keyboard shortcuts (some vague details about this here: http://trishkhoo.com/2010/12/go-faster-linking-data-generation-to-hotkeys/)

Credit where credit's due:<br/>
Many of these concepts and bits of code were copied with permission from James Martin [https://github.com/jamesmartin]