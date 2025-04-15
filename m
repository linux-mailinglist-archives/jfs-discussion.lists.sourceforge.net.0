Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC36A8A679
	for <lists+jfs-discussion@lfdr.de>; Tue, 15 Apr 2025 20:10:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u4kjg-0006fu-4T;
	Tue, 15 Apr 2025 18:10:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <duttaditya18@gmail.com>) id 1u4kje-0006fg-Q1
 for jfs-discussion@lists.sourceforge.net;
 Tue, 15 Apr 2025 18:10:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AhohEOEKrvFoqIHtTXX76tezRnIlwWn51kNhrjU6ztA=; b=RGTyxnwA9iJvTsbrIXe6xRJYvn
 2qW7upqf9oJRBudA1vDwdTBeeEBbemfi/kauGh9Pl58+7Ftb1fIqBzPIUgICeXylpProzE6cRHSaG
 aCXNmaa2IrNX/NN+QJmZsqSUXNVeAil4hpYFeTNznzFdScrQKJ5dHVkFsxhTxZ6kwvLU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AhohEOEKrvFoqIHtTXX76tezRnIlwWn51kNhrjU6ztA=; b=j
 Fx3Gr/ogTL7z1105A2TL5eKlSjq3WSxBM1iM/P+1URoOe0+2cAgJD9S8Tl1tLbLEsYcwmw0YzvAVs
 tHjFlCG6TX7jruHp4wFX+2RgkinUiSGk7/3A+KXzlChfn/SGjcpPeN8ZyAVKrtHzGKBAWSweRfJzN
 gFX6pnJTdDdQQ3jg=;
Received: from mail-pl1-f177.google.com ([209.85.214.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u4kjP-0004VA-Nc for jfs-discussion@lists.sourceforge.net;
 Tue, 15 Apr 2025 18:10:15 +0000
Received: by mail-pl1-f177.google.com with SMTP id
 d9443c01a7336-2254e0b4b79so80545945ad.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 15 Apr 2025 11:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1744740589; x=1745345389; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=AhohEOEKrvFoqIHtTXX76tezRnIlwWn51kNhrjU6ztA=;
 b=Kgzd+zHIDi50Oxr4q3d9Ul7oTz3E37dxJP0hbhrws81O2X3jWh6IwZ4bbeAZ4hpas2
 Kuy75jmmmwq4yMumh8lcmfD+OBkGXw+fuOGEIHaG05mUZ3Jk5/dKOaPGFUQh3jhvln5q
 T7P6zlOiBqY/NRSomHtlWwH9R9MKZboqkOdp5Zm6emsw/pk5/pGLFFrZtCYT6ACQoWnf
 zV9gwag0NiY3pSKorG33O7KIXPVgh1OfmAXw9iEVdZ9MadSVV1Zm+T7rO892IYceL+XH
 KAXqnv5eeXK/wz5j6O2r1WjcNdZLxhcvWV1fxfb//V+i8obTBjHCROJx9VffUht/FtXH
 Px+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744740589; x=1745345389;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=AhohEOEKrvFoqIHtTXX76tezRnIlwWn51kNhrjU6ztA=;
 b=Vo2C4hEC9eFov5MuFR/sR5ZweaqpXxuqc8oFj5DEsy/jKUQWg6O91/tgLHVKcifqZC
 OT30GnRxw1ofa7ODEpLQ7TFsM6UJPItJWZTKtn8XdMY+qA76LKgJ5cjeBiKnambq9Vl0
 A0Z1o5kzhjOQXoRJejYg4TaneAfdZsc/1zW1EzIyS5ctHKamr0bICxCy42ZFFXugSGKC
 9qqnL5hpKlQmctBBTRNgfTCWpW2p+L3gAnFn+5uJyFWtoNa272KHnfytnX+X7u9DS3QS
 6ZUHm9M3vp7MDOW+1FO8EGjCt4r7kUeiSV+EtJLLusM1Wv2Wm3KYxX2Bn1X+crl/GtRC
 UG3Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUk3a/rH5YWtQv610WWBB8yzs+/2oh+cLc6BJzKKXZsjf8n28MUvWQGqGzDURcH5juMKTthnNPn6BEAFqERtg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxFxVCZTKfBtXCBfy4B3XidwM2095gHTiK4WtNC4J+7fsuIXxxJ
 muVYV0jS5PS2AX2zzXcQvRdkRD7h30wRF9VfpGfyw5+8eDCX3z43
X-Gm-Gg: ASbGnctS1CAIxuwHx1vvbKGP+1PEgdLt4Q8lwm36hgTtxqvkW7LQy8gN70aQ2PvAdS6
 F4g+7buk1kpsl3I3M/7jh0akHuSXCrJlwDoOPvFHgVHJdEfE6YyAgf6+ZYKWbARPO45hI3SZQHg
 gOGF/d7X2ukwhShANCS+7Kkv3CisqkDdgAcKbOkhTW5BNXlhm3cwfKKI9x+2cqV8biyc2bpph2E
 GKG/6wwjMgqvOerrrbSNirqj1cIdwTRWhQZTylV5FEJdU0fnVO5SKcCc01Y66moKV9SWjPMw05N
 KXAG07KeSutWR2PzKYF7YCagW+T4i4vJj6pgISPI
X-Google-Smtp-Source: AGHT+IGiRMMl8214vmhYKtUPPVdgzosHGYwcFCwg1bkiGePvWyjnabZQ2NgIzRK4WcmyyBNxgGSYXw==
X-Received: by 2002:a17:903:3c4f:b0:224:a96:e39 with SMTP id
 d9443c01a7336-22c318a932bmr1761615ad.9.1744740588905; 
 Tue, 15 Apr 2025 11:09:48 -0700 (PDT)
Received: from pop-os.. ([49.207.215.199]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-22ac7b62859sm120475695ad.40.2025.04.15.11.09.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Apr 2025 11:09:48 -0700 (PDT)
To: stable@vger.kernel.org
Date: Tue, 15 Apr 2025 23:39:39 +0530
Message-Id: <20250415180939.397586-1-duttaditya18@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Dave Kleikamp [ Upstream commit
 a779ed754e52d582b8c0e17959df063108bd0656
 ] In order to make array bounds checking sane, provide a separate definition
 of the in-inode xtree root and the external xtree page. 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [duttaditya18[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.177 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.177 listed in sa-trusted.bondedsender.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [duttaditya18[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.177 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.177 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1u4kjP-0004VA-Nc
Subject: [Jfs-discussion] [PATCH 5.15.y] jfs: define xtree root and page
 independently
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
From: Aditya Dutt via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Aditya Dutt <duttaditya18@gmail.com>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Manas Ghandat <ghandatmanas@gmail.com>, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org, Aditya Dutt <duttaditya18@gmail.com>,
 linux-kernel-mentees@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Dave Kleikamp <dave.kleikamp@oracle.com>

[ Upstream commit a779ed754e52d582b8c0e17959df063108bd0656 ]

In order to make array bounds checking sane, provide a separate
definition of the in-inode xtree root and the external xtree page.

Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Tested-by: Manas Ghandat <ghandatmanas@gmail.com>
(cherry picked from commit a779ed754e52d582b8c0e17959df063108bd0656)
Closes: https://syzkaller.appspot.com/bug?extid=ccb458b6679845ee0bae
Signed-off-by: Aditya Dutt <duttaditya18@gmail.com>
---
Tested using C reproducer here: https://syzkaller.appspot.com/x/repro.c?x=113bb250e80000
(given in the dashboard link above
UBSAN is not triggered when this commit is there.
It is triggered when it is not.

 fs/jfs/jfs_dinode.h |  2 +-
 fs/jfs/jfs_imap.c   |  6 +++---
 fs/jfs/jfs_incore.h |  2 +-
 fs/jfs/jfs_txnmgr.c |  4 ++--
 fs/jfs/jfs_xtree.c  |  4 ++--
 fs/jfs/jfs_xtree.h  | 37 +++++++++++++++++++++++--------------
 6 files changed, 32 insertions(+), 23 deletions(-)

diff --git a/fs/jfs/jfs_dinode.h b/fs/jfs/jfs_dinode.h
index 5fa9fd594115..e630810a48c6 100644
--- a/fs/jfs/jfs_dinode.h
+++ b/fs/jfs/jfs_dinode.h
@@ -96,7 +96,7 @@ struct dinode {
 #define di_gengen	u._file._u1._imap._gengen
 
 			union {
-				xtpage_t _xtroot;
+				xtroot_t _xtroot;
 				struct {
 					u8 unused[16];	/* 16: */
 					dxd_t _dxd;	/* 16: */
diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 937ca07b58b1..5a360cd54098 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -671,7 +671,7 @@ int diWrite(tid_t tid, struct inode *ip)
 		 * This is the special xtree inside the directory for storing
 		 * the directory table
 		 */
-		xtpage_t *p, *xp;
+		xtroot_t *p, *xp;
 		xad_t *xad;
 
 		jfs_ip->xtlid = 0;
@@ -685,7 +685,7 @@ int diWrite(tid_t tid, struct inode *ip)
 		 * copy xtree root from inode to dinode:
 		 */
 		p = &jfs_ip->i_xtroot;
-		xp = (xtpage_t *) &dp->di_dirtable;
+		xp = (xtroot_t *) &dp->di_dirtable;
 		lv = ilinelock->lv;
 		for (n = 0; n < ilinelock->index; n++, lv++) {
 			memcpy(&xp->xad[lv->offset], &p->xad[lv->offset],
@@ -714,7 +714,7 @@ int diWrite(tid_t tid, struct inode *ip)
 	 *	regular file: 16 byte (XAD slot) granularity
 	 */
 	if (type & tlckXTREE) {
-		xtpage_t *p, *xp;
+		xtroot_t *p, *xp;
 		xad_t *xad;
 
 		/*
diff --git a/fs/jfs/jfs_incore.h b/fs/jfs/jfs_incore.h
index a466ec41cfbb..852f4c1f2946 100644
--- a/fs/jfs/jfs_incore.h
+++ b/fs/jfs/jfs_incore.h
@@ -66,7 +66,7 @@ struct jfs_inode_info {
 	lid_t	xtlid;		/* lid of xtree lock on directory */
 	union {
 		struct {
-			xtpage_t _xtroot;	/* 288: xtree root */
+			xtroot_t _xtroot;	/* 288: xtree root */
 			struct inomap *_imap;	/* 4: inode map header	*/
 		} file;
 		struct {
diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index dca8edd2378c..7d19324f5a83 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -778,7 +778,7 @@ struct tlock *txLock(tid_t tid, struct inode *ip, struct metapage * mp,
 			if (mp->xflag & COMMIT_PAGE)
 				p = (xtpage_t *) mp->data;
 			else
-				p = &jfs_ip->i_xtroot;
+				p = (xtpage_t *) &jfs_ip->i_xtroot;
 			xtlck->lwm.offset =
 			    le16_to_cpu(p->header.nextindex);
 		}
@@ -1708,7 +1708,7 @@ static void xtLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
 
 	if (tlck->type & tlckBTROOT) {
 		lrd->log.redopage.type |= cpu_to_le16(LOG_BTROOT);
-		p = &JFS_IP(ip)->i_xtroot;
+		p = (xtpage_t *) &JFS_IP(ip)->i_xtroot;
 		if (S_ISDIR(ip->i_mode))
 			lrd->log.redopage.type |=
 			    cpu_to_le16(LOG_DIR_XTREE);
diff --git a/fs/jfs/jfs_xtree.c b/fs/jfs/jfs_xtree.c
index 3148e9b35f3b..34db519933b4 100644
--- a/fs/jfs/jfs_xtree.c
+++ b/fs/jfs/jfs_xtree.c
@@ -1224,7 +1224,7 @@ xtSplitRoot(tid_t tid,
 	struct xtlock *xtlck;
 	int rc;
 
-	sp = &JFS_IP(ip)->i_xtroot;
+	sp = (xtpage_t *) &JFS_IP(ip)->i_xtroot;
 
 	INCREMENT(xtStat.split);
 
@@ -3059,7 +3059,7 @@ static int xtRelink(tid_t tid, struct inode *ip, xtpage_t * p)
  */
 void xtInitRoot(tid_t tid, struct inode *ip)
 {
-	xtpage_t *p;
+	xtroot_t *p;
 
 	/*
 	 * acquire a transaction lock on the root
diff --git a/fs/jfs/jfs_xtree.h b/fs/jfs/jfs_xtree.h
index 5f51be8596b3..dc9b5f8d6385 100644
--- a/fs/jfs/jfs_xtree.h
+++ b/fs/jfs/jfs_xtree.h
@@ -65,24 +65,33 @@ struct xadlist {
 #define XTPAGEMAXSLOT	256
 #define XTENTRYSTART	2
 
-/*
- *	xtree page:
- */
-typedef union {
-	struct xtheader {
-		__le64 next;	/* 8: */
-		__le64 prev;	/* 8: */
+struct xtheader {
+	__le64 next;	/* 8: */
+	__le64 prev;	/* 8: */
 
-		u8 flag;	/* 1: */
-		u8 rsrvd1;	/* 1: */
-		__le16 nextindex;	/* 2: next index = number of entries */
-		__le16 maxentry;	/* 2: max number of entries */
-		__le16 rsrvd2;	/* 2: */
+	u8 flag;	/* 1: */
+	u8 rsrvd1;	/* 1: */
+	__le16 nextindex;	/* 2: next index = number of entries */
+	__le16 maxentry;	/* 2: max number of entries */
+	__le16 rsrvd2;	/* 2: */
 
-		pxd_t self;	/* 8: self */
-	} header;		/* (32) */
+	pxd_t self;	/* 8: self */
+};
 
+/*
+ *	xtree root (in inode):
+ */
+typedef union {
+	struct xtheader header;
 	xad_t xad[XTROOTMAXSLOT];	/* 16 * maxentry: xad array */
+} xtroot_t;
+
+/*
+ *	xtree page:
+ */
+typedef union {
+	struct xtheader header;
+	xad_t xad[XTPAGEMAXSLOT];	/* 16 * maxentry: xad array */
 } xtpage_t;
 
 /*
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
