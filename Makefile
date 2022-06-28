# $FreeBSD$

.PATH: ${SRCTOP}/sys/fs/debugfs

KMOD=		debugfs
SRCS=		file.c
SRCS+=		inode.c

SRCS+=		vnode_if.h
SRCS+=		device_if.h
SRCS+=		bus_if.h

#CFLAGS= -I${SYSDIR}/compat/linuxkpi/common/include
CFLAGS= -I./include

.include <bsd.kmod.mk>
