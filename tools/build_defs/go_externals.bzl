load(
    "@bazel_gazelle//:deps.bzl",
    "go_repository",
)

def _normalize_repo_name(repo):
    return repo.replace("/", "_").replace("-", "_").replace(".", "_")

def _github(repo, commit):
    name = "com_github_" + _normalize_repo_name(repo)
    importpath = "github.com/" + repo
    return struct(
        name = name,
        commit = commit,
        importpath = importpath,
    )

def _golang_x(pkg, commit):
    name = "org_golang_x_" + pkg
    importpath = "golang.org/x/" + pkg
    return struct(
        name = name,
        commit = commit,
        importpath = importpath,
    )

def _gopkg(repo, commit):
    name = "in_gopkg_" + _normalize_repo_name(repo)
    importpath = "gopkg.in/" + repo
    return struct(
        name = name,
        commit = commit,
        importpath = importpath,
    )

_externals = [
    _golang_x("text", "a9a820217f98f7c8a207ec1e45a874e1fe12c478"),
    _golang_x("oauth2", "3e6480915d39dd1a80fa460e56413857f02cc1b9"),
    _golang_x("sys", "33540a1f603772f9d4b761f416f5c10dade23e96"),
    _golang_x("crypto", "4b2356b1ed79e6be3deca3737a3db3d132d2847a"),
    _golang_x("sync", "0de741cfad7ff3874b219dfbc1b9195b58c7c490"),
    struct(
        name = "org_golang_google_appengine",
        commit = "170382fa85b10b94728989dfcf6cc818b335c952",
        importpath = "google.golang.org/appengine/",
        remote = "https://github.com/golang/appengine",
        vcs = "git",
    ),
    _github("google/go-github", "e0066688b631702f66e0435ee1633f9d0091e4b9"),
    _github("klauspost/compress", "72cd4a92a8b13e722763e6b6a3467163c2028d3d"),
    _github("honeycombio/libhoney-go", "f9fa6e26d2b94d91ec10c1f71ad0207fbbf996c3"),
    _github("nelhage/go.cli", "2aeb96ef8025f3646befae8353b90f95e9e79bdc"),
    _github("bmizerany/pat", "c068ca2f0aacee5ac3681d68e4d0a003b7d1fd2c"),
    _github("google/go-querystring", "53e6ce116135b80d037921a7fdd5138cf32d7a8a"),
    _github("facebookgo/muster", "fd3d7953fd52354a74b9f6b3d70d0c9650c4ec2a"),
    _gopkg("alexcesaro/statsd.v2", "7fea3f0d2fab1ad973e641e51dba45443a311a90"),
    _gopkg("check.v1", "20d25e2804050c1cd24a7eea1e7a6447dd0e74ec"),
    struct(
        name = "org_golang_google_grpc",
        commit = "f74f0337644653eba7923908a4d7f79a4f3a267b",
        importpath = "google.golang.org/grpc",
    ),
    struct(
        name = "com_github_vmihailenco_tagparser_v2",
        commit = "2147fb31205921d022818561da850209b44b0097",
        importpath = "github.com/vmihailenco/tagparser",
    ),
    struct(
        name = "com_github_vmihailenco_msgpack_v5",
        commit = "19c91dfdfa062658c39d9321be26163fc5833bd1",
        importpath = "github.com/vmihailenco/msgpack",
    )
]

def go_externals():
    for ext in _externals:
        if hasattr(ext, "vcs"):
            go_repository(
                name = ext.name,
                commit = ext.commit,
                importpath = ext.importpath,
                remote = ext.remote,
                vcs = ext.vcs,
            )
        else:
            go_repository(
                name = ext.name,
                commit = ext.commit,
                importpath = ext.importpath,
            )
