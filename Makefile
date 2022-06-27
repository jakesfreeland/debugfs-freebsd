# $FreeBSD$

.PATH: ${SRCTOP}/sys/fs/debugfs

KMOD=		debugfs
SRCS=		file.c
SRCS+=		inode.c

CFLAGS= -I${SYSDIR}/compat/linuxkpi/common/include

.include <bsd.kmod.mk>
