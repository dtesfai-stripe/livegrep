workspace(name = "com_github_livegrep_livegrep")

load(
    "@bazel_tools//tools/build_defs/repo:git.bzl",
    "git_repository",
)
load(
    "@bazel_tools//tools/build_defs/repo:http.bzl",
    "http_archive",
)

http_archive(
    name = "divsufsort",
    build_file = "//third_party:BUILD.divsufsort",
    sha256 = "9164cb6044dcb6e430555721e3318d5a8f38871c2da9fd9256665746a69351e0",
    strip_prefix = "libdivsufsort-2.0.1",
    type = "tgz",
    url = "https://codeload.github.com/y-256/libdivsufsort/tar.gz/2.0.1",
)

git_repository(
    name = "gflags",
    commit = "e171aa2d15ed9eb17054558e0b3a6a413bb01067",  # v2.2.2
    remote = "https://github.com/gflags/gflags",
    shallow_since = "1541971260 +0000",
)

git_repository(
    name = "com_github_nelhage_rules_boost",
    commit = "03a871125484f8bea934761d5e8673f5d4979b57",
    remote = "https://github.com/nelhage/rules_boost",
)
# local_repository(
#   name = "com_github_nelhage_boost",
#   path = "../rules_boost",
# )

load(
    "@com_github_nelhage_rules_boost//:boost/boost.bzl",
    "boost_deps",
)

boost_deps()

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "6734a719993b1ba4ebe9806e853864395a8d3968ad27f9dd759c196b3eb3abe8",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.45.1/rules_go-v0.45.1.zip",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.45.1/rules_go-v0.45.1.zip",
    ],
)

http_archive(
    name = "bazel_gazelle",
    integrity = "sha256-12v3pg/YsFBEQJDfooN6Tq+YKeEWVhjuNdzspcvfWNU=",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.37.0/bazel-gazelle-v0.37.0.tar.gz",
        "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.37.0/bazel-gazelle-v0.37.0.tar.gz",
    ],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies", "go_repository")

go_repository(
    name = "com_github_vmihailenco_tagparser_v2",
    importpath = "github.com/vmihailenco/tagparser/v2",
    sum = "h1:y09buUbR+b5aycVFQs/g70pqKVZNBmxwAhO7/IwNM9g=",
    version = "v2.0.0",
)

go_repository(
    name = "com_github_facebookgo_clock",
    importpath = "github.com/facebookgo/clock",
    sum = "h1:yDWHCSQ40h88yih2JAcL6Ls/kVkSE8GFACTGVnMPruw=",
    version = "v0.0.0-20150410010913-600d898af40a",
)

go_repository(
    name = "com_github_facebookgo_limitgroup",
    importpath = "github.com/facebookgo/limitgroup",
    sum = "h1:IeaD1VDVBPlx3viJT9Md8if8IxxJnO+x0JCGb054heg=",
    version = "v0.0.0-20150612190941-6abd8d71ec01",
)

go_repository(
    name = "com_github_vmihailenco_msgpack_v5",
    importpath = "github.com/vmihailenco/msgpack/v5",
    sum = "h1:5gO0H1iULLWGhs2H5tbAHIZTV8/cYafcFOr9znI5mJU=",
    version = "v5.3.5",
)

load(
    "//tools/build_defs:go_externals.bzl",
    "go_externals",
)

go_rules_dependencies()

go_register_toolchains(version = "1.21.3")

gazelle_dependencies()

go_externals()

http_archive(
    name = "com_github_libgit2",
    build_file = "//third_party:BUILD.libgit2",
    sha256 = "adf17310b590e6e7618f070c742b5ee028aeeed2c60099bc4190c386b5060de1",
    strip_prefix = "libgit2-0.27.9/",
    url = "https://github.com/libgit2/libgit2/archive/v0.27.9.tar.gz",
)

http_archive(
    name = "com_google_absl",
    sha256 = "497ebdc3a4885d9209b9bd416e8c3f71e7a1fb8af249f6c2a80b7cbeefcd7e21",
    strip_prefix = "abseil-cpp-20230802.1/",
    url = "https://github.com/abseil/abseil-cpp/archive/refs/tags/20230802.1.zip",
)

git_repository(
    name = "com_github_grpc_grpc",
    commit = "591d56e1300b6d11948e1b821efac785a295989c",  # 1.44.0
    remote = "https://github.com/grpc/grpc.git",
    shallow_since = "1644573434 +0100",
)

load("@com_github_grpc_grpc//bazel:grpc_deps.bzl", "grpc_deps")

grpc_deps()

load("@com_github_grpc_grpc//bazel:grpc_extra_deps.bzl", "grpc_extra_deps")

grpc_extra_deps()

git_repository(
    name = "io_bazel_buildifier",
    commit = "ae772d29d07002dfd89ed1d9ff673a1721f1b8dd",
    remote = "https://github.com/bazelbuild/buildifier.git",
)

http_archive(
    name = "hedron_compile_commands",

    url = "https://github.com/hedronvision/bazel-compile-commands-extractor/archive/e16062717d9b098c3c2ac95717d2b3e661c50608.tar.gz",
    sha256 = "ed5aea1dc87856aa2029cb6940a51511557c5cac3dbbcb05a4abd989862c36b4",
    strip_prefix = "bazel-compile-commands-extractor-e16062717d9b098c3c2ac95717d2b3e661c50608",
)

load("@hedron_compile_commands//:workspace_setup.bzl", "hedron_compile_commands_setup")

hedron_compile_commands_setup()

git_repository(
    name = "com_google_googletest",
    commit = "0ea2d8f8fa1601abb9ce713b7414e7b86f90bc61",
    remote = "https://github.com/google/googletest",
)

http_archive(
    name = "aspect_rules_js",
    sha256 = "66ecc9f56300dd63fb86f11cfa1e8affcaa42d5300e2746dba08541916e913fd",
    strip_prefix = "rules_js-1.13.0",
    url = "https://github.com/aspect-build/rules_js/archive/refs/tags/v1.13.0.tar.gz",
)

load("@aspect_rules_js//js:repositories.bzl", "rules_js_dependencies")

rules_js_dependencies()

load("@rules_nodejs//nodejs:repositories.bzl", "DEFAULT_NODE_VERSION", "nodejs_register_toolchains")

nodejs_register_toolchains(
    name = "nodejs",
    node_version = DEFAULT_NODE_VERSION,
)

load("@aspect_rules_js//npm:npm_import.bzl", "npm_translate_lock")

npm_translate_lock(
    name = "npm",
    npmrc = "//web:.npmrc",
    pnpm_lock = "//web:pnpm-lock.yaml",
    verify_node_modules_ignored = "//:.bazelignore",
)

load("@npm//:repositories.bzl", "npm_repositories")

npm_repositories()

http_archive(
    name = "rules_pkg",
    urls = [
        "https://github.com/bazelbuild/rules_pkg/releases/download/1.0.0/rules_pkg-1.0.0.tar.gz",
    ],
    sha256 = "cad05f864a32799f6f9022891de91ac78f30e0fa07dc68abac92a628121b5b11",
)

load("@rules_pkg//:deps.bzl", "rules_pkg_dependencies")

rules_pkg_dependencies()
