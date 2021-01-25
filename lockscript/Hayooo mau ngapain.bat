cls
@ECHO OFF
title Pengunci Folder
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Locker goto MDLOCKER
:CONFIRM
echo Apa kamu ingin mengunci folder ini? (Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Pilihan yang kurang tepat.
goto CONFIRM
:LOCK
ren Locker "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder berhasil terkunci
goto End
:UNLOCK
echo Halo, dengan bot Clarissa disini
echo .
echo Sudah dapat izin dari Hamdan D., MTA. utk akses file2 nya ? Coba masukkan secret code
echo *kalo salah, filenya gabisa nampil ya hehe :)
echo .
echo Secret Code :
set/p "pass=>"
if NOT %pass%==hamdanpopy goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Locker
echo Folder berhasil dibuka.
goto End
:FAIL
echo Kata sandi salah.
goto end
:MDLOCKER
md Locker
echo Locker berhasil dibuat
goto End
:End