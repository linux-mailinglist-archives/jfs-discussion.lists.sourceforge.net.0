Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2894EA9E3D0
	for <lists+jfs-discussion@lfdr.de>; Sun, 27 Apr 2025 17:49:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u94Cx-0006qu-Jp;
	Sun, 27 Apr 2025 15:46:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <duttaditya18@gmail.com>) id 1u94Cw-0006qo-Nb
 for jfs-discussion@lists.sourceforge.net;
 Sun, 27 Apr 2025 15:46:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7H3CGfdKeQmA85O5UdRYRS4BFpY8FBaukpxGzuJa2pw=; b=bmfBn0kf4rHKnjAoWsxpx2Xnel
 YiMQfRen8RYyeYpOFeoT95MrTfRJF7Zajr7TB7RZiOf2jYdq6vf8slVjx+j/fdWUR2AdsTB6tOM7B
 iMN53FdNafzbSLw/nxF4GvUUBR+FEn8GkiogfcsJdajW2n0ZGZQoHh82fHTrOm1N5XGQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7H3CGfdKeQmA85O5UdRYRS4BFpY8FBaukpxGzuJa2pw=; b=c
 uRNhS0kJIJVxMwT1yQ9uczYcJePwKpJZUlsn3JKkwodnSLykGcFyoV66k611XF9BWoL7zbngZWJsA
 UxIUFvNP/M6pi7wVpbwHKkmtfLOC98YrB2k6mG3JgElG6IkiM69WHsgw7TjNBGWqT5aKCL1hTLLrW
 u/ggBSCaOPxBmSL4=;
Received: from mail-pj1-f44.google.com ([209.85.216.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u94Cg-0004Fx-7J for jfs-discussion@lists.sourceforge.net;
 Sun, 27 Apr 2025 15:46:19 +0000
Received: by mail-pj1-f44.google.com with SMTP id
 98e67ed59e1d1-30572effb26so3439539a91.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 27 Apr 2025 08:46:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1745768751; x=1746373551; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=7H3CGfdKeQmA85O5UdRYRS4BFpY8FBaukpxGzuJa2pw=;
 b=YrZEsDz8IJaxnTjU27fkk3/eodauDfpUBMEHeAxYmCKbD9wmsAsTROFBXkORM0207i
 g0OG5uY1bcVePs9RnJqHx2OuODBc+SH+VrB7HHNm9Xg3AXnsLU4uWsj08cxaLV43hfAH
 M3JbSoetV6CRU7bBpHFfxJn3fQkP7FknhKmyxabOAjpxSWJmE8eRVdVhnBOOX0tibmol
 lCO6wPzkT0nCpOgfcoe49UWZx8Wcq6CdRauuJtJ7226a8lWYvnG0MeOD21IercfVecie
 KwYC3P8JnxA05oUMs4HVOxD2LuJ6R+Ya/f/KOXMn3Nhb5yIA94Ii/O0k0Ov2jlMj7xtE
 QoQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745768751; x=1746373551;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7H3CGfdKeQmA85O5UdRYRS4BFpY8FBaukpxGzuJa2pw=;
 b=OeVzCb+Z0xxoYrOifhvBbeKW+FGRpvCB+80WhP8aus1niBfRKfvbGtg4lGh8Yv903H
 RW92wMEycRD+lRCsJrFfTZNh+upmnlcLqYs+PaoWU3lPtZmww2jHLRt7zyD+McTD6ZyM
 0eY0OG4uHGZwy1t1s18oTONHDn2OIV/eZbzEFmxlmtxjgKXFQSOCwwSPHXP5QtWpbSnU
 klTH87hfnxFLrdytQmaiXRmY2kV1RcChpupczEI3zh9NNOb01bpmkgpgiSIBeGqWmbEu
 C21n05DURQ/rwjrvNSglWQdXG5lvxgEa720N0ZjhdVNFbtBd6ue0+9qno5pkb3IgGklq
 rWKw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWRa91bXueg8pOcA88YNVADOdxHXyeyPrY44vHYhDzbwMHdHRG0c2xhaLoUmHJOjbxQemOORLib3HT/3ZurgA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwHhkbr/jrP8RH+/ZdDoMCu5Qv7QQS+2Fue2MV9r9bTOIKYyakV
 cFMUfp/3TgtCBXFZ0pNYDkDU+/2hRgDBMS7lnZ8gvfGy80vELVUC
X-Gm-Gg: ASbGncuhKavqV9uHBrFBqSUBBu7itGlCgbw7ieGKiHhFrptkqF1CHn4YP9RCbTjFb7j
 himXpM6YX4v5Z/Y+1LuhulGR6WedAS1FOnZtMmG45Nq6N7gZ6RNqJMHGdbZ5sY7IF11nC0QlHDa
 VzhIpNHiG9axN1BCpVszqT42gRvDXgCPKMVUOMSbNsD/0Vo+efWV5My/DO2k/Zk2XkReFpilhzX
 RAaAtvcQBXgE2LQyG8tdTl8mj2amo7JDHrIrEIg19+H+9e74sGiLow01E9XzrVraH3bWs3rQyyf
 raWFSsISDoqkj6shtPZVVEQVGsOs0Mc1MRyeVMmb
X-Google-Smtp-Source: AGHT+IHq2GiUl5vh/UvTDKS1xTbiflFzANxoGSTrV8i3Ib/1ucPJH61yRREAPJwoNXjzQr/QYwNVuA==
X-Received: by 2002:a17:90b:520f:b0:2f9:c139:b61f with SMTP id
 98e67ed59e1d1-309f8d9b077mr14393324a91.14.1745768751500; 
 Sun, 27 Apr 2025 08:45:51 -0700 (PDT)
Received: from pop-os.. ([49.207.200.116]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-309ef061acdsm7150108a91.16.2025.04.27.08.45.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Apr 2025 08:45:51 -0700 (PDT)
To: stable@vger.kernel.org
Date: Sun, 27 Apr 2025 21:15:39 +0530
Message-Id: <20250427154539.96678-1-duttaditya18@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Dave Kleikamp [ Upstream commit
 a779ed754e52d582b8c0e17959df063108bd0656
 ] In order to make array bounds checking sane, provide a separate definition
 of the in-inode xtree root and the external xtree page. 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.44 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.216.44 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.216.44 listed in bl.score.senderscore.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [duttaditya18[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [duttaditya18[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.44 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1u94Cg-0004Fx-7J
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
 skhan@linuxfoundation.org,
 syzbot+ccb458b6679845ee0bae@syzkaller.appspotmail.com,
 Aditya Dutt <duttaditya18@gmail.com>, linux-kernel-mentees@lists.linux.dev
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
Reported-by: syzbot+ccb458b6679845ee0bae@syzkaller.appspotmail.com
Signed-off-by: Aditya Dutt <duttaditya18@gmail.com>
---
I am sending this as per the suggestion by Greg to submit backports for
all the relevant stable trees:
https://lore.kernel.org/stable/2025042210-stylized-nearest-ea59@gregkh/
This patch has been applied in >= 6.12
and has been backported to 6.6: 2ff51719ec615e1b373c1811443efe93594c41a9
I have already sent a mail for 6.1:
https://lore.kernel.org/stable/20250427153045.90396-1-duttaditya18@gmail.com/

syzbot checked the patch against 5.15.y and confirmed that the
reproducer did not trigger any issues. check here:
https://lore.kernel.org/lkml/67fea0bf.050a0220.186b78.0006.GAE@google.com/

 fs/jfs/jfs_dinode.h |  2 +-
 fs/jfs/jfs_imap.c   |  6 +++---
 fs/jfs/jfs_incore.h |  2 +-
 fs/jfs/jfs_txnmgr.c |  4 ++--
 fs/jfs/jfs_xtree.c  |  4 ++--
 fs/jfs/jfs_xtree.h  | 37 +++++++++++++++++++++++--------------
 6 files changed, 32 insertions(+), 23 deletions(-)

diff --git a/fs/jfs/jfs_dinode.h b/fs/jfs/jfs_dinode.h
index 6b231d0d0071..603aae17a693 100644
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
index c72e97f06579..0e7d2662f202 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -673,7 +673,7 @@ int diWrite(tid_t tid, struct inode *ip)
 		 * This is the special xtree inside the directory for storing
 		 * the directory table
 		 */
-		xtpage_t *p, *xp;
+		xtroot_t *p, *xp;
 		xad_t *xad;
 
 		jfs_ip->xtlid = 0;
@@ -687,7 +687,7 @@ int diWrite(tid_t tid, struct inode *ip)
 		 * copy xtree root from inode to dinode:
 		 */
 		p = &jfs_ip->i_xtroot;
-		xp = (xtpage_t *) &dp->di_dirtable;
+		xp = (xtroot_t *) &dp->di_dirtable;
 		lv = ilinelock->lv;
 		for (n = 0; n < ilinelock->index; n++, lv++) {
 			memcpy(&xp->xad[lv->offset], &p->xad[lv->offset],
@@ -716,7 +716,7 @@ int diWrite(tid_t tid, struct inode *ip)
 	 *	regular file: 16 byte (XAD slot) granularity
 	 */
 	if (type & tlckXTREE) {
-		xtpage_t *p, *xp;
+		xtroot_t *p, *xp;
 		xad_t *xad;
 
 		/*
diff --git a/fs/jfs/jfs_incore.h b/fs/jfs/jfs_incore.h
index 721def69e732..dd4264aa9bed 100644
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
index 6c8680d3907a..3a547e0b934f 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -783,7 +783,7 @@ struct tlock *txLock(tid_t tid, struct inode *ip, struct metapage * mp,
 			if (mp->xflag & COMMIT_PAGE)
 				p = (xtpage_t *) mp->data;
 			else
-				p = &jfs_ip->i_xtroot;
+				p = (xtpage_t *) &jfs_ip->i_xtroot;
 			xtlck->lwm.offset =
 			    le16_to_cpu(p->header.nextindex);
 		}
@@ -1710,7 +1710,7 @@ static void xtLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
 
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
