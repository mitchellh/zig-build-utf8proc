const std = @import("std");

pub fn build(b: *std.Build) !void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const lib = b.addStaticLibrary(.{
        .name = "utf8proc",
        .target = target,
        .optimize = optimize,
    });
    lib.linkLibC();
    lib.addIncludePath(.{ .path = "upstream" });
    lib.addCSourceFiles(srcs, &.{});
    lib.installHeader("upstream/utf8proc.h", "utf8proc.h");

    b.installArtifact(lib);
}

const srcs = &.{
    "upstream/utf8proc.c",
};
