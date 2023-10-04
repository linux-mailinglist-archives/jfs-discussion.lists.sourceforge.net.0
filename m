Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A68AA7B7789
	for <lists+jfs-discussion@lfdr.de>; Wed,  4 Oct 2023 07:47:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qnujN-0007NN-SJ;
	Wed, 04 Oct 2023 05:47:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qnujM-0007NE-3E
 for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Oct 2023 05:47:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zsxyl+cgvB20az6pAOhEj6zcICahCJD5e9PCu7NYewo=; b=ginLWYijVGLapGpH24HYfWEDi8
 E3cuopq0qlNUdx2ITsTSXvgb/S/qKUfReeh23LbLbQnW1QCXPLm+Hv/sqp5FpacKQ792EoZonwlJ2
 a/jPniS5IGChsuV/9W+abzXCjWqpxkJZvT1jnKtF9C8p+VSmnVsCX5yzzRPGhgSR/ViU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zsxyl+cgvB20az6pAOhEj6zcICahCJD5e9PCu7NYewo=; b=Q
 wetSocPPzJ2TKFhZXIFDEFnnSWbS0J7le96uhyZj64dcBcrq0AQrDAxXhnuDMcDJpmOsGJ121JGYl
 vcdJ2RyZ4TAE+E7pbEAPepxWwB0bNfVo7+EVTsx+qYYs6X5kPiASWT1+Q7rrwTwsgUzgLN5/Yd72c
 xwKmB6itzloqNNr8=;
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qnujK-000YqG-6w for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Oct 2023 05:47:31 +0000
Received: by mail-pl1-f194.google.com with SMTP id
 d9443c01a7336-1c0ecb9a075so12807695ad.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 03 Oct 2023 22:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696398444; x=1697003244; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=zsxyl+cgvB20az6pAOhEj6zcICahCJD5e9PCu7NYewo=;
 b=bpQqyJNHh/r9taNYdRakeWiVNbpqXknB5aAQEe1IST8WJP0WGhe6uihpXGbNKyhQer
 CLfyBmk1oJhtlQHnSxWjCvG9TH26UvlOwacJp5Z6xTkGxnJgy8nmrSIdfZJYs0aES4mJ
 dzL3aoFc4JLcM29X++beJxcCAgsbqZcCWXaJxFNnCSbtfhKs8yHBUDnrtFoDpHhlZOUi
 8qg0HCGQK29GlOv6g3gTOk/JWowrto8UEkxseuZFtbNA6Wihjy34YZoan2YMZ1hDOa9O
 mAtjI620sVy9Z7svRcvZrOwfU18PiH6r7HZ1+AT5EFVdDxSi2pJNUMlhBU0gHmUlNvOT
 TZLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696398444; x=1697003244;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=zsxyl+cgvB20az6pAOhEj6zcICahCJD5e9PCu7NYewo=;
 b=uG63Zm1ZpOZrBpxcwkAMcHhD1ZqpgWkKfTGFqGMXEUk8DhwJBEHjZ3K+hhs/Vkj1hw
 JqEWzzTz6VYXEnxOQwWVE5BrpAYDWKuEUtoGP241mbA3rNcPPO3qoOHbcagTKQcPKzvd
 ksms5+3IxTBpkWbzq8D36VM528q/Dz2wFeQe8sVOenT51sjWAS8am+EMD5Zj9/RruCO/
 Hy1s8ZDEUJbGWUoWKqQ23YFzQbOeuNF/I3YOkjC2jT9XO9I5vV9vciYS4JK2FMNNn3FL
 PjjEk6o3tHVYDs5hOA7Dad61C5sDg17CvBnnp/pPyAzp0WeWh1aA1bXyYbf7Hw+sxYrw
 Bjkw==
X-Gm-Message-State: AOJu0YyHA1PsGDIa3Zl9zh0bDpQWNw7B+zZZomMH3WSZ9WQK94L5r694
 3Pk82U8OuStsiRQOUPLLnp5AjeS1NOaFj8hr4BE=
X-Google-Smtp-Source: AGHT+IG3mhIIeNTaduBdTCLgjgOUoe7QYgJDvI3JPdeOSEYfO5qXALn6EjHaFi7WvEOaDwydjEaYjA==
X-Received: by 2002:a17:903:32cf:b0:1c7:56b9:eae with SMTP id
 i15-20020a17090332cf00b001c756b90eaemr1547394plr.32.1696398444432; 
 Tue, 03 Oct 2023 22:47:24 -0700 (PDT)
Received: from manas-VirtualBox.iitr.ac.in ([103.37.201.173])
 by smtp.gmail.com with ESMTPSA id
 f21-20020a170902ab9500b001c5fc11c085sm2631846plr.264.2023.10.03.22.47.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Oct 2023 22:47:24 -0700 (PDT)
To: dave.kleikamp@oracle.com
Date: Wed,  4 Oct 2023 11:17:18 +0530
Message-Id: <20231004054718.7976-1-ghandatmanas@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Currently while searching for dmtree_t for sufficient free
 blocks there is an array out of bounds while getting element in tp->dm_stree.
 To add the required check for out of bound we first need to det [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qnujK-000YqG-6w
Subject: [Jfs-discussion] [PATCH v3] jfs: fix array-index-out-of-bounds in
 dbFindLeaf
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
From: Manas Ghandat via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Manas Ghandat <ghandatmanas@gmail.com>
Cc: Linux-kernel-mentees@lists.linuxfoundation.org,
 jfs-discussion@lists.sourceforge.net, Manas Ghandat <ghandatmanas@gmail.com>,
 linux-kernel@vger.kernel.org,
 syzbot+aea1ad91e854d0a83e04@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Currently while searching for dmtree_t for sufficient free blocks there
is an array out of bounds while getting element in tp->dm_stree. To add
the required check for out of bound we first need to determine the type
of dmtree. Thus added an extra parameter to dbFindLeaf so that the type
of tree can be determined and the required check can be applied.

Reported-by: syzbot+aea1ad91e854d0a83e04@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=aea1ad91e854d0a83e04
Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
---
V2 -> V3: Changed the argument name from type to is_ctl
V1 -> V2: Updated dbFindLeaf function.

 fs/jfs/jfs_dmap.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index a14a0f18a4c4..d2a4fced8976 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -87,7 +87,7 @@ static int dbAllocCtl(struct bmap * bmp, s64 nblocks, int l2nb, s64 blkno,
 static int dbExtend(struct inode *ip, s64 blkno, s64 nblocks, s64 addnblocks);
 static int dbFindBits(u32 word, int l2nb);
 static int dbFindCtl(struct bmap * bmp, int l2nb, int level, s64 * blkno);
-static int dbFindLeaf(dmtree_t * tp, int l2nb, int *leafidx);
+static int dbFindLeaf(dmtree_t *tp, int l2nb, int *leafidx, bool is_ctl);
 static int dbFreeBits(struct bmap * bmp, struct dmap * dp, s64 blkno,
 		      int nblocks);
 static int dbFreeDmap(struct bmap * bmp, struct dmap * dp, s64 blkno,
@@ -1709,7 +1709,7 @@ static int dbFindCtl(struct bmap * bmp, int l2nb, int level, s64 * blkno)
 		 * dbFindLeaf() returns the index of the leaf at which
 		 * free space was found.
 		 */
-		rc = dbFindLeaf((dmtree_t *) dcp, l2nb, &leafidx);
+		rc = dbFindLeaf((dmtree_t *) dcp, l2nb, &leafidx, true);
 
 		/* release the buffer.
 		 */
@@ -1956,7 +1956,7 @@ dbAllocDmapLev(struct bmap * bmp,
 	 * free space.  if sufficient free space is found, dbFindLeaf()
 	 * returns the index of the leaf at which free space was found.
 	 */
-	if (dbFindLeaf((dmtree_t *) & dp->tree, l2nb, &leafidx))
+	if (dbFindLeaf((dmtree_t *) &dp->tree, l2nb, &leafidx, false))
 		return -ENOSPC;
 
 	if (leafidx < 0)
@@ -2920,14 +2920,18 @@ static void dbAdjTree(dmtree_t * tp, int leafno, int newval)
  *	leafidx	- return pointer to be set to the index of the leaf
  *		  describing at least l2nb free blocks if sufficient
  *		  free blocks are found.
+ *	is_ctl	- determines if the tree is of type ctl
  *
  * RETURN VALUES:
  *	0	- success
  *	-ENOSPC	- insufficient free blocks.
  */
-static int dbFindLeaf(dmtree_t * tp, int l2nb, int *leafidx)
+static int dbFindLeaf(dmtree_t *tp, int l2nb, int *leafidx, bool is_ctl)
 {
 	int ti, n = 0, k, x = 0;
+	int max_size;
+
+	max_size = is_ctl ? CTLTREESIZE : TREESIZE;
 
 	/* first check the root of the tree to see if there is
 	 * sufficient free space.
@@ -2948,6 +2952,8 @@ static int dbFindLeaf(dmtree_t * tp, int l2nb, int *leafidx)
 			/* sufficient free space found.  move to the next
 			 * level (or quit if this is the last level).
 			 */
+			if (x + n > max_size)
+				return -ENOSPC;
 			if (l2nb <= tp->dmt_stree[x + n])
 				break;
 		}
-- 
2.37.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
