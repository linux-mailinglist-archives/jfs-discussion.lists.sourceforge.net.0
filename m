Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B16577EE29
	for <lists+jfs-discussion@lfdr.de>; Thu, 17 Aug 2023 02:23:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qWQnB-0001aY-Eu;
	Thu, 17 Aug 2023 00:23:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux@treblig.org>) id 1qWQnA-0001aS-4E
 for jfs-discussion@lists.sourceforge.net;
 Thu, 17 Aug 2023 00:23:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nMLPKXFOEvPRH5qIoR7+T1SMwSnc3wbTmke32V0c7oI=; b=A79PC3F1TPOFv0h0HwchGlUYws
 dciEIXbH5C9QDwo3dCuq/9ptQxBzv9R+S33Si6SIZa2yRbzGcPQtFPX6/O9cWTkmkoYx/cvw2FAKk
 tGnxeUHTSaxYHPFkS8siXvzgOW7hQC5Til4Ufu631Solf8mYnX/eUe9jbZ3nV1VgOubs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nMLPKXFOEvPRH5qIoR7+T1SMwSnc3wbTmke32V0c7oI=; b=jz5FFFznQ4xFRfcooPkg9oiX3G
 GZnMKZqhyoL1v9isdAYmwGvNb9X9VTyiQ9U0OoDjEG9uYBBMN5QaaV9cLJltsI9khFm769RgzFJBx
 VSLYRtODgbw1X/VArvXRbQhtGkIkPEqRBgrGPPACEB7sMxrkTWxCiudvsVAJhhVCO/Ws=;
Received: from mx.treblig.org ([46.235.229.95])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qWQn8-007TXx-Py for jfs-discussion@lists.sourceforge.net;
 Thu, 17 Aug 2023 00:23:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nMLPKXFOEvPRH5qIoR7+T1SMwSnc3wbTmke32V0c7oI=; b=Ux0jXvNkzexg2W1Z7eLAoWXUyt
 VTUnPzlXzk5X1BY+u8dkf1o3edtoO46e+T/SmpGMz9W5R7Cn7iDjvGa5SEo4E2r0C32fBsyZyqOSW
 TfmymRnWUg5KFZi9rxAK/coiNpMr7HQOQ5Fgv/OI9SiUN//aK6KqQlseGS1yAUACjajZAB1s7B2+d
 rFvFzQECDCNlMF/DlupfoU2QNvJRSMmLX6aZj6EOf9oMdE+OV27BOk0rw3aKmSZoh5fqLyl+ao5FR
 T3j8NfXQy4aLQ/Acn/lzGlxiYmo3RCy0mI6glpchnQ2Murn/y5A98WIrIHn+ZMZD955bvdn/Sz2hh
 ZQ7Guxhw==;
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.94.2)
 (envelope-from <linux@treblig.org>)
 id 1qWQmx-007LI0-2Q; Thu, 17 Aug 2023 00:22:58 +0000
From: linux@treblig.org
To: smfrench@gmail.com, dave.kleikamp@oracle.com, tom@talpey.com,
 pc@manguebit.com
Date: Thu, 17 Aug 2023 01:22:32 +0100
Message-ID: <20230817002232.80079-5-linux@treblig.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230817002232.80079-1-linux@treblig.org>
References: <20230817002232.80079-1-linux@treblig.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: "Dr. David Alan Gilbert" <linux@treblig.org> Use the
 UCS-2 upper case tables from nls, that are shared with smb. This code in
 JFS is hard to test,
 so we're only reusing the same tables (which are identical), 
 not trying to reuse the rest of the helper functions. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qWQn8-007TXx-Py
Subject: [Jfs-discussion] [PATCH v5 4/4] fs/jfs: Use common ucs2 upper case
 table
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, "Dr. David Alan Gilbert" <linux@treblig.org>,
 krisman@collabora.com, linkinjeon@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: "Dr. David Alan Gilbert" <linux@treblig.org>

Use the UCS-2 upper case tables from nls, that are shared
with smb.

This code in JFS is hard to test, so we're only reusing the
same tables (which are identical), not trying to reuse the
rest of the helper functions.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 fs/jfs/Kconfig          |   1 +
 fs/jfs/Makefile         |   2 +-
 fs/jfs/jfs_unicode.h    |  17 ++----
 fs/jfs/jfs_uniupr.c     | 121 ----------------------------------------
 fs/nls/nls_ucs2_data.h  |  15 +++++
 fs/nls/nls_ucs2_utils.h |  14 +----
 6 files changed, 23 insertions(+), 147 deletions(-)
 delete mode 100644 fs/jfs/jfs_uniupr.c
 create mode 100644 fs/nls/nls_ucs2_data.h

diff --git a/fs/jfs/Kconfig b/fs/jfs/Kconfig
index 51e856f0e4b8..eab2f2d2291f 100644
--- a/fs/jfs/Kconfig
+++ b/fs/jfs/Kconfig
@@ -2,6 +2,7 @@
 config JFS_FS
 	tristate "JFS filesystem support"
 	select NLS
+	select NLS_UCS2_UTILS
 	select CRC32
 	select LEGACY_DIRECT_IO
 	help
diff --git a/fs/jfs/Makefile b/fs/jfs/Makefile
index 7156d2c218c7..b769bbf8bdc2 100644
--- a/fs/jfs/Makefile
+++ b/fs/jfs/Makefile
@@ -9,7 +9,7 @@ jfs-y    := super.o file.o inode.o namei.o jfs_mount.o jfs_umount.o \
 	    jfs_xtree.o jfs_imap.o jfs_debug.o jfs_dmap.o \
 	    jfs_unicode.o jfs_dtree.o jfs_inode.o jfs_discard.o \
 	    jfs_extent.o symlink.o jfs_metapage.o \
-	    jfs_logmgr.o jfs_txnmgr.o jfs_uniupr.o \
+	    jfs_logmgr.o jfs_txnmgr.o \
 	    resize.o xattr.o ioctl.o
 
 jfs-$(CONFIG_JFS_POSIX_ACL) += acl.o
diff --git a/fs/jfs/jfs_unicode.h b/fs/jfs/jfs_unicode.h
index 9db62d047daa..b6a78d4aef1b 100644
--- a/fs/jfs/jfs_unicode.h
+++ b/fs/jfs/jfs_unicode.h
@@ -8,16 +8,9 @@
 
 #include <linux/slab.h>
 #include <asm/byteorder.h>
+#include "../nls/nls_ucs2_data.h"
 #include "jfs_types.h"
 
-typedef struct {
-	wchar_t start;
-	wchar_t end;
-	signed char *table;
-} UNICASERANGE;
-
-extern signed char UniUpperTable[512];
-extern UNICASERANGE UniUpperRange[];
 extern int get_UCSname(struct component_name *, struct dentry *);
 extern int jfs_strfromUCS_le(char *, const __le16 *, int, struct nls_table *);
 
@@ -107,12 +100,12 @@ static inline wchar_t *UniStrncpy_from_le(wchar_t * ucs1, const __le16 * ucs2,
  */
 static inline wchar_t UniToupper(wchar_t uc)
 {
-	UNICASERANGE *rp;
+	const struct UniCaseRange *rp;
 
-	if (uc < sizeof(UniUpperTable)) {	/* Latin characters */
-		return uc + UniUpperTable[uc];	/* Use base tables */
+	if (uc < sizeof(NlsUniUpperTable)) {	/* Latin characters */
+		return uc + NlsUniUpperTable[uc];	/* Use base tables */
 	} else {
-		rp = UniUpperRange;	/* Use range tables */
+		rp = NlsUniUpperRange;	/* Use range tables */
 		while (rp->start) {
 			if (uc < rp->start)	/* Before start of range */
 				return uc;	/* Uppercase = input */
diff --git a/fs/jfs/jfs_uniupr.c b/fs/jfs/jfs_uniupr.c
deleted file mode 100644
index d0b18c7befb8..000000000000
--- a/fs/jfs/jfs_uniupr.c
+++ /dev/null
@@ -1,121 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- *   Copyright (C) International Business Machines Corp., 2000-2002
- */
-
-#include <linux/fs.h>
-#include "jfs_unicode.h"
-
-/*
- * Latin upper case
- */
-signed char UniUpperTable[512] = {
-   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, /* 000-00f */
-   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, /* 010-01f */
-   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, /* 020-02f */
-   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, /* 030-03f */
-   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, /* 040-04f */
-   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, /* 050-05f */
-   0,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32, /* 060-06f */
- -32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,  0,  0,  0,  0,  0, /* 070-07f */
-   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, /* 080-08f */
-   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, /* 090-09f */
-   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, /* 0a0-0af */
-   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, /* 0b0-0bf */
-   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, /* 0c0-0cf */
-   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, /* 0d0-0df */
- -32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32, /* 0e0-0ef */
- -32,-32,-32,-32,-32,-32,-32,  0,-32,-32,-32,-32,-32,-32,-32,121, /* 0f0-0ff */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 100-10f */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 110-11f */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 120-12f */
-   0,  0,  0, -1,  0, -1,  0, -1,  0,  0, -1,  0, -1,  0, -1,  0, /* 130-13f */
-  -1,  0, -1,  0, -1,  0, -1,  0, -1,  0,  0, -1,  0, -1,  0, -1, /* 140-14f */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 150-15f */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 160-16f */
-   0, -1,  0, -1,  0, -1,  0, -1,  0,  0, -1,  0, -1,  0, -1,  0, /* 170-17f */
-   0,  0,  0, -1,  0, -1,  0,  0, -1,  0,  0,  0, -1,  0,  0,  0, /* 180-18f */
-   0,  0, -1,  0,  0,  0,  0,  0,  0, -1,  0,  0,  0,  0,  0,  0, /* 190-19f */
-   0, -1,  0, -1,  0, -1,  0,  0, -1,  0,  0,  0,  0, -1,  0,  0, /* 1a0-1af */
-  -1,  0,  0,  0, -1,  0, -1,  0,  0, -1,  0,  0,  0, -1,  0,  0, /* 1b0-1bf */
-   0,  0,  0,  0,  0, -1, -2,  0, -1, -2,  0, -1, -2,  0, -1,  0, /* 1c0-1cf */
-  -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,-79,  0, -1, /* 1d0-1df */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 1e0-1ef */
-   0,  0, -1, -2,  0, -1,  0,  0,  0, -1,  0, -1,  0, -1,  0, -1, /* 1f0-1ff */
-};
-
-/* Upper case range - Greek */
-static signed char UniCaseRangeU03a0[47] = {
-   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,-38,-37,-37,-37, /* 3a0-3af */
-   0,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32, /* 3b0-3bf */
- -32,-32,-31,-32,-32,-32,-32,-32,-32,-32,-32,-32,-64,-63,-63,
-};
-
-/* Upper case range - Cyrillic */
-static signed char UniCaseRangeU0430[48] = {
- -32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32, /* 430-43f */
- -32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32, /* 440-44f */
-   0,-80,-80,-80,-80,-80,-80,-80,-80,-80,-80,-80,-80,  0,-80,-80, /* 450-45f */
-};
-
-/* Upper case range - Extended cyrillic */
-static signed char UniCaseRangeU0490[61] = {
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 490-49f */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 4a0-4af */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 4b0-4bf */
-   0,  0, -1,  0, -1,  0,  0,  0, -1,  0,  0,  0, -1,
-};
-
-/* Upper case range - Extended latin and greek */
-static signed char UniCaseRangeU1e00[509] = {
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 1e00-1e0f */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 1e10-1e1f */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 1e20-1e2f */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 1e30-1e3f */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 1e40-1e4f */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 1e50-1e5f */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 1e60-1e6f */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 1e70-1e7f */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 1e80-1e8f */
-   0, -1,  0, -1,  0, -1,  0,  0,  0,  0,  0,-59,  0, -1,  0, -1, /* 1e90-1e9f */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 1ea0-1eaf */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 1eb0-1ebf */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 1ec0-1ecf */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 1ed0-1edf */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0, -1, /* 1ee0-1eef */
-   0, -1,  0, -1,  0, -1,  0, -1,  0, -1,  0,  0,  0,  0,  0,  0, /* 1ef0-1eff */
-   8,  8,  8,  8,  8,  8,  8,  8,  0,  0,  0,  0,  0,  0,  0,  0, /* 1f00-1f0f */
-   8,  8,  8,  8,  8,  8,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, /* 1f10-1f1f */
-   8,  8,  8,  8,  8,  8,  8,  8,  0,  0,  0,  0,  0,  0,  0,  0, /* 1f20-1f2f */
-   8,  8,  8,  8,  8,  8,  8,  8,  0,  0,  0,  0,  0,  0,  0,  0, /* 1f30-1f3f */
-   8,  8,  8,  8,  8,  8,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, /* 1f40-1f4f */
-   0,  8,  0,  8,  0,  8,  0,  8,  0,  0,  0,  0,  0,  0,  0,  0, /* 1f50-1f5f */
-   8,  8,  8,  8,  8,  8,  8,  8,  0,  0,  0,  0,  0,  0,  0,  0, /* 1f60-1f6f */
-  74, 74, 86, 86, 86, 86,100,100,  0,  0,112,112,126,126,  0,  0, /* 1f70-1f7f */
-   8,  8,  8,  8,  8,  8,  8,  8,  0,  0,  0,  0,  0,  0,  0,  0, /* 1f80-1f8f */
-   8,  8,  8,  8,  8,  8,  8,  8,  0,  0,  0,  0,  0,  0,  0,  0, /* 1f90-1f9f */
-   8,  8,  8,  8,  8,  8,  8,  8,  0,  0,  0,  0,  0,  0,  0,  0, /* 1fa0-1faf */
-   8,  8,  0,  9,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, /* 1fb0-1fbf */
-   0,  0,  0,  9,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, /* 1fc0-1fcf */
-   8,  8,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, /* 1fd0-1fdf */
-   8,  8,  0,  0,  0,  7,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, /* 1fe0-1fef */
-   0,  0,  0,  9,  0,  0,  0,  0,  0,  0,  0,  0,  0,
-};
-
-/* Upper case range - Wide latin */
-static signed char UniCaseRangeUff40[27] = {
-   0,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32, /* ff40-ff4f */
- -32,-32,-32,-32,-32,-32,-32,-32,-32,-32,-32,
-};
-
-/*
- * Upper Case Range
- */
-UNICASERANGE UniUpperRange[] = {
-    { 0x03a0,  0x03ce,  UniCaseRangeU03a0 },
-    { 0x0430,  0x045f,  UniCaseRangeU0430 },
-    { 0x0490,  0x04cc,  UniCaseRangeU0490 },
-    { 0x1e00,  0x1ffc,  UniCaseRangeU1e00 },
-    { 0xff40,  0xff5a,  UniCaseRangeUff40 },
-    { 0 }
-};
diff --git a/fs/nls/nls_ucs2_data.h b/fs/nls/nls_ucs2_data.h
new file mode 100644
index 000000000000..1f454dc0f4e0
--- /dev/null
+++ b/fs/nls/nls_ucs2_data.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef _NLS_UCS2_DATA_H
+#define _NLS_UCS2_DATA_H
+
+struct UniCaseRange {
+	wchar_t start;
+	wchar_t end;
+	signed char *table;
+};
+
+extern signed char NlsUniUpperTable[512];
+extern const struct UniCaseRange NlsUniUpperRange[];
+
+#endif /* _NLS_UCS2_DATA_H */
diff --git a/fs/nls/nls_ucs2_utils.h b/fs/nls/nls_ucs2_utils.h
index 3500596ea993..ef18d30db1d0 100644
--- a/fs/nls/nls_ucs2_utils.h
+++ b/fs/nls/nls_ucs2_utils.h
@@ -26,6 +26,7 @@
 #include <linux/types.h>
 #include <linux/nls.h>
 #include <linux/unicode.h>
+#include "nls_ucs2_data.h"
 
 /*
  * Windows maps these to the user defined 16 bit Unicode range since they are
@@ -40,19 +41,6 @@
 #define UNI_PIPE        ((__u16)('|' + 0xF000))
 #define UNI_SLASH       ((__u16)('\\' + 0xF000))
 
-#ifndef	UNICASERANGE_DEFINED
-struct UniCaseRange {
-	wchar_t start;
-	wchar_t end;
-	signed char *table;
-};
-#endif				/* UNICASERANGE_DEFINED */
-
-#ifndef UNIUPR_NOUPPER
-extern signed char NlsUniUpperTable[512];
-extern const struct UniCaseRange NlsUniUpperRange[];
-#endif				/* UNIUPR_NOUPPER */
-
 /*
  * UniStrcat:  Concatenate the second string to the first
  *
-- 
2.41.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
