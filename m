Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFFEA9E3C6
	for <lists+jfs-discussion@lfdr.de>; Sun, 27 Apr 2025 17:34:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u93yY-00064N-1K;
	Sun, 27 Apr 2025 15:31:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <duttaditya18@gmail.com>) id 1u93yW-00064H-Tm
 for jfs-discussion@lists.sourceforge.net;
 Sun, 27 Apr 2025 15:31:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lu0Qpy32cRnk6C00xSOjQCLbKsFc+72PU0/zEKOJ4OM=; b=TCc5JQmtKg2/G8D8rkga4/Fzqa
 KZ/Qj0v9jlaweM5dRjzRPz3w5hcuICP/Jya6A0mcRg4pCdn79Ni4uQLj7zia8eDrXdruv5DU4tQOl
 Wr4c+jnEgqeKVdPSXQBsWuJVPlKjWb3z423v6drCK6MBtf96r8ZxT0dXARgfFkBUg7u0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Lu0Qpy32cRnk6C00xSOjQCLbKsFc+72PU0/zEKOJ4OM=; b=A
 Hl75A6X5SjcmXY+1BY9WhAlxPXHlNWV3b/T+cZYiaVTZXrdJ5c9+VxxlHH/ifRMyJ2ziPzyKXJnJ4
 qG2ZqS+anRxzIMHJr+BRlOLJeYBy+GwARNSwpfrvJ+Mikk7Cq3mCnVXu0GXSaJvoEeNYFo2US3r6I
 SaOVreGTNhCQOjuk=;
Received: from mail-pl1-f179.google.com ([209.85.214.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u93yH-0003dp-1M for jfs-discussion@lists.sourceforge.net;
 Sun, 27 Apr 2025 15:31:24 +0000
Received: by mail-pl1-f179.google.com with SMTP id
 d9443c01a7336-227cf12df27so37216235ad.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 27 Apr 2025 08:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1745767858; x=1746372658; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Lu0Qpy32cRnk6C00xSOjQCLbKsFc+72PU0/zEKOJ4OM=;
 b=KcfVY2TMFm5RkFaBtdsxi7Oq/3B8sY0ys+KSSRLFlkcPdAiGIsknSI21fNaYXqwjsZ
 hFEt3GihYA7ij5ed9Z1dWkHvetW41Ld9kTS0Sfwg0dSn76Hjkhf1981lUiwCi3YLQkI3
 ezbziXcJzhLa0qxDXLUGlpvVcdATZmylnZtX6pCDyRGlN//7Ia1SZr1ThgZ2/+oWQyN9
 qLekcHYRllgnnfwGs6rTnWDAfNJgz5jWRmcInCvusYH3XVDMguIuyH0vt+/pPZzMNWpT
 WIaPY0uI9lDvFhJZuqLErUvfjoC8VJIKMnpEVVFb/9oe5CgJBKJGhn6YOceJP9AVeK9r
 jl4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745767858; x=1746372658;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Lu0Qpy32cRnk6C00xSOjQCLbKsFc+72PU0/zEKOJ4OM=;
 b=OuyqXB9TyjqzNmZ/kaSW29o5w/k44k8j9LoRW5itMwcpVs1Mz33ZQ0fUHA0G+YtYeY
 Pc4gq9kskWk/X+bCWyW+oix/iUt7hkY5e/u+dJU7uGR7ide7+n9iAJEk/uIppjWKfZXh
 8wOZFqTki2xXfi369lhwLqx8EDnGdS8NNhU0FheTOtkhK7iBR2NVJ3zJ56mbv7RVYOSx
 kllLvH4WSGoPABsiF+xhRFOzCRG0llJqp40VttTX877arCs2TD1H+RGJJ2QsUr8Y5h2g
 YTUDiwLgwIlHyyt9l1r3vln8UacpeACJjBVj18aL3ZbMPVx83CsCXwvAgJF7hv/30m+v
 865g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWZsdVKpeqDX+VFDIUp+jSRE3qafjXTUJAYVuzPzWdqB+AmzjaCMgv3ajSRB4CpdP6w/EgvVCkPdsHNQgOh/g==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yy5lV4/QzcOJ1egoAyjjsDDsfQgyFtsncNTL2lJXf3UTXSCYoJe
 kvaNY5u1sOcVEeT+ant8U7Y1bTig+L/iP68W8PxWHR40W5FZU8Ph
X-Gm-Gg: ASbGncu865FsMyGphN38ja9Xaj66xQKabFfjWDZpJxFJh3pJ3RfreWXaT1Kg+8qDeB+
 DgSB2oyOCD6pC5Wd58wVKx3DuGBGveAVeGuimygZBTFuktM8TWZtXYf0ateNJ+n3izxfAYb07L1
 /rdmlM8+kZFXBGSUGRdDLtmhkxbz0mLGn17Zjr7QqBBhS6bjnDz18bUot50BBoNDdZh+0W8hnGh
 ES+Q79vHgT9uQdGODsrtDKC26rDFlMyeEzXJJZIJxb4ACRSJxL4JQfJfjPoFL1EPWu+bvk/jvyG
 bJdHvR9eBEE3M2rEaUeCFGNxuMFG3b1HpjCCAIpT
X-Google-Smtp-Source: AGHT+IE/AIPDBZfGFz35irHOS6OjtJ7DIKKb7ayqgzlXDAwBQDxaFEfBWXiyKUieJQy7r8AAx0p9Cw==
X-Received: by 2002:a17:903:985:b0:221:751f:cfbe with SMTP id
 d9443c01a7336-22dbf95a2b7mr150173215ad.19.1745767858142; 
 Sun, 27 Apr 2025 08:30:58 -0700 (PDT)
Received: from pop-os.. ([49.207.200.116]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-22db4db99d3sm65549225ad.53.2025.04.27.08.30.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Apr 2025 08:30:57 -0700 (PDT)
To: stable@vger.kernel.org
Date: Sun, 27 Apr 2025 21:00:45 +0530
Message-Id: <20250427153045.90396-1-duttaditya18@gmail.com>
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
 no trust [209.85.214.179 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.179 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.179 listed in bl.score.senderscore.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [duttaditya18[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [duttaditya18[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.179 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1u93yH-0003dp-1M
Subject: [Jfs-discussion] [PATCH 6.1.y] jfs: define xtree root and page
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
 Manas Ghandat <ghandatmanas@gmail.com>,
 syzbot+6b1d79dad6cc6b3eef41@syzkaller.appspotmail.com,
 syzbot+67f714a53ce18d5b542e@syzkaller.appspotmail.com,
 syzbot+7cb897779f3c479d0615@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org,
 syzbot+e829cfdd0de521302df4@syzkaller.appspotmail.com,
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
Closes: https://syzkaller.appspot.com/bug?extid=7cb897779f3c479d0615
Closes: https://syzkaller.appspot.com/bug?extid=6b1d79dad6cc6b3eef41
Closes: https://syzkaller.appspot.com/bug?extid=67f714a53ce18d5b542e
Closes: https://syzkaller.appspot.com/bug?extid=e829cfdd0de521302df4
Reported-by: syzbot+7cb897779f3c479d0615@syzkaller.appspotmail.com
Reported-by: syzbot+6b1d79dad6cc6b3eef41@syzkaller.appspotmail.com
Reported-by: syzbot+67f714a53ce18d5b542e@syzkaller.appspotmail.com
Reported-by: syzbot+e829cfdd0de521302df4@syzkaller.appspotmail.com
Signed-off-by: Aditya Dutt <duttaditya18@gmail.com>
---
I am sending this as per the suggestion by Greg to submit backports for
all the relevant stable trees:
https://lore.kernel.org/stable/2025042210-stylized-nearest-ea59@gregkh/
I will send one more mail for 5.15.
This patch has been applied in >= 6.12
and has been backported to 6.6: 2ff51719ec615e1b373c1811443efe93594c41a9

syzbot checked the patch against 6.1.y and confirmed that the
reproducer did not trigger any issues. check here:
https://lore.kernel.org/all/680e4455.050a0220.3b8549.0082.GAE@google.com/

I also tested the patch manually using the C reproducer:
https://syzkaller.appspot.com/text?tag=ReproC&x=15b291ef680000
(given in the syzkaller dashboard link)

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
index 155f66812934..9adb29e7862c 100644
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
index ce4b4760fcb1..dccc8b3f1045 100644
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
@@ -1676,7 +1676,7 @@ static void xtLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
 
 	if (tlck->type & tlckBTROOT) {
 		lrd->log.redopage.type |= cpu_to_le16(LOG_BTROOT);
-		p = &JFS_IP(ip)->i_xtroot;
+		p = (xtpage_t *) &JFS_IP(ip)->i_xtroot;
 		if (S_ISDIR(ip->i_mode))
 			lrd->log.redopage.type |=
 			    cpu_to_le16(LOG_DIR_XTREE);
diff --git a/fs/jfs/jfs_xtree.c b/fs/jfs/jfs_xtree.c
index 2d304cee884c..5ee618d17e77 100644
--- a/fs/jfs/jfs_xtree.c
+++ b/fs/jfs/jfs_xtree.c
@@ -1213,7 +1213,7 @@ xtSplitRoot(tid_t tid,
 	struct xtlock *xtlck;
 	int rc;
 
-	sp = &JFS_IP(ip)->i_xtroot;
+	sp = (xtpage_t *) &JFS_IP(ip)->i_xtroot;
 
 	INCREMENT(xtStat.split);
 
@@ -2098,7 +2098,7 @@ int xtAppend(tid_t tid,		/* transaction id */
  */
 void xtInitRoot(tid_t tid, struct inode *ip)
 {
-	xtpage_t *p;
+	xtroot_t *p;
 
 	/*
 	 * acquire a transaction lock on the root
diff --git a/fs/jfs/jfs_xtree.h b/fs/jfs/jfs_xtree.h
index 142caafc73b1..15da4e16d8b2 100644
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
