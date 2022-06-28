# $FreeBSD$

.PATH: ${SRCTOP}/sys/fs/debugfs

KMOD=		debugfs
SRCS=		file.c
SRCS+=		inode.c

SRCS+=		vnode_if.h
SRCS+=		device_if.h
SRCS+=		bus_if.h

CFLAGS=		-I./include
CFLAGS+=	-I${SYSDIR}/compat/linuxkpi/common/include

# KERNEL CONFIG FLAG???
CFLAGS+=	-DCONFIG_DEBUG_FS=y

.include <bsd.kmod.mk>
