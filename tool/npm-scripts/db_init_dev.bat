REM @echo off
REM package.json�Ɠ����t�H���_������s����邱�Ƃ�z�肵�Ă���
REM call�Ŏ��s���Ȃ���npx���s�I�����bat���I�����Ă��܂�
setlocal
REM �ÓI�^�`�F�b�N�ȂǗp�ɖ{�ԂƓ���Client�̂ݐ���
set SCHEMA_PATH=./prisma
call npx prisma generate --schema=%SCHEMA_PATH%/schema.prisma
call npx prisma generate --schema=%SCHEMA_PATH%/schema_append.prisma

REM �f�o�b�O�ڑ��p��SQLite DB
set SCHEMA_PATH=./prisma/dev
call npx prisma db push --schema=%SCHEMA_PATH%/schema.prisma
call npx prisma db push --schema=%SCHEMA_PATH%/schema_append.prisma
endlocal