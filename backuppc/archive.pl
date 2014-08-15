# Para crear archivos en el NAS de los hosts de backuppc

$Conf{XferMethod} = 'archive';
$Conf{ArchiveDest} = '/mnt/nas/archives';
$Conf{ArchiveComp} = 'gzip';
$Conf{ArchivePar} = 0;
$Conf{ArchiveSplit} = 0;

$Conf{ArchiveClientCmd} = '$Installdir/bin/BackupPC_archiveHost'
        . ' $tarCreatePath $splitpath $parpath $host $backupnumber'
        . ' $compression $compext $splitsize $archiveloc $parfile *';

