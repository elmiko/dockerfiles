# lame git daemon

This git daemon container is mainy for use in testing or on a very small
scale. It is not secure and allows anonymous read/write access to the
repositories. You have been warned.

To use this do the following

## create an image

```
$ docker build -t git-daemon .
```

## create a git-daemon user

```
# useradd -s git-daemon
```

## create a repository directory
```
# mkdir /opt/git
# chown -R git-daemon:git-daemon /opt/git
```

## start the container
```
$ docker run --name git-daemon -d -p 9418:9418 -v /opt/git:/opt/git --user $(id -u git-daemon) git-daemon
```

## adding repositories

I'm going to assume the use of Fedora with SELinux enforcing as that is what
I am using ;)

```
# sudo -u git-daemon git init --bare /opt/git/my-new-project
# chcon -R -t svirt_sandbox_file_t /opt/git/my-new-project
```
