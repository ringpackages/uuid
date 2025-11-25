load "stdlibcore.ring"

cPathSep = "/"

if isWindows()
	cPathSep = "\\"
ok

# Remove the uuid.ring file from the load directory
remove(exefolder() + "load" + cPathSep + "uuid.ring")

# Remove the uuid.ring file from the Ring2EXE libs directory
remove(exefolder() + ".." + cPathSep + "tools" + cPathSep + "ring2exe" + cPathSep + "libs" + cPathSep + "uuid.ring")

# Change current directory to the samples directory
chdir(exefolder() + ".." + cPathSep + "samples")

# Remove the UsingUUID directory if it exists
if direxists("UsingUUID")
	OSDeleteFolder("UsingUUID")
ok