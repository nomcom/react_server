REM package.json�Ɠ����t�H���_������s����邱�Ƃ�z�肵�Ă���
REM call�Ŏ��s���Ȃ���npx���s�I�����bat���I�����Ă��܂�
setlocal
set SCHEMA_PATH=./prisma/dev
call npx prisma db push --schema=%SCHEMA_PATH%/schema.prisma
call npx prisma db push --schema=%SCHEMA_PATH%/schema_append.prisma
endlocal