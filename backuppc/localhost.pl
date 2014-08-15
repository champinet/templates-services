#
# Local server backup of /etc as user backuppc
#

$Conf{XferMethod} = 'rsync';

$Conf{RsyncShareName} = [ '/etc', '/home', '/root', '/var/local', '/boot', '/var/spool', '/var/lib/samba', '/var/www', '/var/lib/mysql' ];

$Conf{BackupFilesExclude} = ['/var/lib/backuppc' ];

$Conf{RsyncClientCmd} = '$sshPath -C -x -l root $host nice -n 19 sudo $rsyncPath $argList+';
