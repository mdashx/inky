This Anisble project sets up a development environment. It shouldn't
be used in shared environments or on production machines. At the very
least, the environment should be created for a user account that is
not shared, because the project sets up a Git config, SSH keys, etc.

Before running any playbooks, edit `group_vars/all/config.yml` to
change the variables `user`, `git_user`, `git_email`.

