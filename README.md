# tconfigbrowser

Simple Express api to serve tConfig mods and some metadata about them.

To use, put tConfig mod .obj files in the mods folder, run gen.sh to create blank metadata files, then run compile.sh to compile the metadata into a single json array.

Use npm start to run the Express server, which serves static obj files at /mods, the entire mods json array at /allmods, and individual mods at /modinfo?name=Some Obj file.obj. Frontend at /.

Instance hosted at https://ppeb.me/tconfigbrowser/ with a sizeable amount of mods.
