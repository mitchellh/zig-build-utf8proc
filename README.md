# utf8proc built with Zig

This project builds [utf8proc](https://github.com/JuliaStrings/utf8proc)
with Zig. These are _not Zig language bindings_ to the project. The goal of
this project is to enable the upstream project to be used with the Zig
package manager. Downstream users may also not be Zig language users, they
may just be using Zig as a build system.

This is not strictly a fork (the source for the upstream project is copied
into the "upstream" directory unmodified unless noted). For security reasons,
you can checksum the contents of the "upstream" directory with the official
matching Git SHA and they should match.

I implore that you do not blindly trust me -- pin this repository to a
specific version and verify the checksums match yourself.

## Versions

This project makes no guarantee to stay up to date with every released
version of the upstream project. If you'd like to contribute a new version,
please do and we will tag it accordingly.

**The current version is always available in `upstream.txt`.** This is
the Git commit hash of the "upstream" folder.
