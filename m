Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 556B37AB1BE
	for <lists+jfs-discussion@lfdr.de>; Fri, 22 Sep 2023 14:04:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qjetF-0003wT-Mr;
	Fri, 22 Sep 2023 12:04:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qjetE-0003wK-Cr
 for jfs-discussion@lists.sourceforge.net;
 Fri, 22 Sep 2023 12:04:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mc7XJnmS11CqbPLUjM8JwVx1WO2hj/AOe6VqltwSQAE=; b=H1T0KZ7JtbFl/0oE6F5IFXrALk
 nYeflLQ+wEtI0OAtcHs7O/uhssOb/LLfqB6xedm8kqNh16nGTwj1lk4aST+L6aP6b0uLFWxm0l9tC
 MrQqDHXVwQpJg+YAPgeRNoJm44G0BWzpY+jWuJcuvXLJBcLMjeDwcjyjku05uPuQlGhk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Mc7XJnmS11CqbPLUjM8JwVx1WO2hj/AOe6VqltwSQAE=; b=U
 lzZgXp9MlowWMBkBS57vTlNM4GGDoXI+8f1qrA/eG3cfStqFgpEFrO+1wu/NCFUzlF4KHLqythW7A
 c6aRnPX2AnkbLRtcXNBROmxSof8mIfQh+mAuuDqhMoOtuz127mb+AlsqDA5H3HXzLC1lwRF9I8C4v
 7xxm95FUUUOpCv7o=;
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qjetA-00024u-4l for jfs-discussion@lists.sourceforge.net;
 Fri, 22 Sep 2023 12:04:08 +0000
Received: by mail-pf1-f196.google.com with SMTP id
 d2e1a72fcca58-690bc3f82a7so1906144b3a.0
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 22 Sep 2023 05:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695384239; x=1695989039; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Mc7XJnmS11CqbPLUjM8JwVx1WO2hj/AOe6VqltwSQAE=;
 b=GegadmkY/I8K0Anw3jKvg6/0S/6kCtCkeV/IJWseLFH9F6YCg+Gtovrx09rzBxsa83
 aQf+HaI7cEBDQcuSDlkZhmedoOK2gc+rPeT52MPOOILNXLXs1dWiad0ILPyvSNogaWNR
 jpZrBu/INUjr2zicogJg8KAuucSlhHEDBLohUBiCiI+PgReVytyhRJd/b0RhOssIIoLN
 EDyvXI0HNkC75ev2bQGYjI2KlxXYNdG4ncLM3cTVGnO8hUQKERgxlLRRtUoLNQs+r3iI
 /ONf1JkS4Ba1B0eEPtZWQLXFdyd9BROva/7gyj0DkaB/xuQny3wIEkYOOTMZWe33wuW3
 gG3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695384239; x=1695989039;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Mc7XJnmS11CqbPLUjM8JwVx1WO2hj/AOe6VqltwSQAE=;
 b=X91YAn4RmLyLbxS+mU4bM8jo3iqMVMQP3gegTUuLXfdgfPW7D7mYA1u/ssscf1lPor
 bOwYK1fGjPaidORVO5atZMfkl+y72P2WAp3vQQA6dIiRGkL/LEYDqeOr3u2kUkuS1M2j
 ib9TFCvhrnzkSU1L+fH3jMqaSjKJJIzOB4S/X5wt6ihkFBvGmmknciSgx8xzdAq/LLVZ
 soDL6Bxu9na3r+/mPzC95kogu686ZhYXYuJKClWuX+Dc41bYpuWYpLkZ/HTTVNwDFpaY
 kE+vmNElH18HPeOUXzK4b5uoqzLtJh0Gz//QsSha4IoyLyS2ntfOfZDvXkit3yzGFdWZ
 e0pg==
X-Gm-Message-State: AOJu0Yyz+LZkKyyEEjwD1vqL6OyzHnmXxT0vymE4mFHKVq9R/Gd4yK+u
 TPscvKHRJAGQRsYm9PNC2b8=
X-Google-Smtp-Source: AGHT+IGlTQWmfBmuHR/BYvJUK5cUqZbXxjfnyQ8/HUHaO1sGhUhAe3+W2yPuELQd5nbQr6DptDUNfw==
X-Received: by 2002:a05:6a20:5486:b0:14d:7130:7bb3 with SMTP id
 i6-20020a056a20548600b0014d71307bb3mr10430003pzk.13.1695384238425; 
 Fri, 22 Sep 2023 05:03:58 -0700 (PDT)
Received: from manas-VirtualBox.iitr.ac.in ([103.37.201.174])
 by smtp.gmail.com with ESMTPSA id
 131-20020a630289000000b00528db73ed70sm3042486pgc.3.2023.09.22.05.03.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Sep 2023 05:03:57 -0700 (PDT)
To: dave.kleikamp@oracle.com,
	shaggy@kernel.org
Date: Fri, 22 Sep 2023 17:33:41 +0530
Message-Id: <20230922120341.10805-1-ghandatmanas@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Currently while searching for dmtree_t for sufficient free
 blocks there is an array out of bounds while getting element in tp->dm_stree.
 To add the required check for out of bound we first need to det [...] 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [103.37.201.174 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qjetA-00024u-4l
Subject: [Jfs-discussion] [PATCH v2] jfs: fix array-index-out-of-bounds in
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
V1 -> V2: Updated dbFindLeaf function.

 fs/jfs/jfs_dmap.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index a14a0f18a4c4..cee5164c4879 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -87,7 +87,7 @@ static int dbAllocCtl(struct bmap * bmp, s64 nblocks, int l2nb, s64 blkno,
 static int dbExtend(struct inode *ip, s64 blkno, s64 nblocks, s64 addnblocks);
 static int dbFindBits(u32 word, int l2nb);
 static int dbFindCtl(struct bmap * bmp, int l2nb, int level, s64 * blkno);
-static int dbFindLeaf(dmtree_t * tp, int l2nb, int *leafidx);
+static int dbFindLeaf(dmtree_t *tp, int l2nb, int *leafidx, int type);
 static int dbFreeBits(struct bmap * bmp, struct dmap * dp, s64 blkno,
 		      int nblocks);
 static int dbFreeDmap(struct bmap * bmp, struct dmap * dp, s64 blkno,
@@ -1709,7 +1709,7 @@ static int dbFindCtl(struct bmap * bmp, int l2nb, int level, s64 * blkno)
 		 * dbFindLeaf() returns the index of the leaf at which
 		 * free space was found.
 		 */
-		rc = dbFindLeaf((dmtree_t *) dcp, l2nb, &leafidx);
+		rc = dbFindLeaf((dmtree_t *) dcp, l2nb, &leafidx, 0);
 
 		/* release the buffer.
 		 */
@@ -1956,7 +1956,7 @@ dbAllocDmapLev(struct bmap * bmp,
 	 * free space.  if sufficient free space is found, dbFindLeaf()
 	 * returns the index of the leaf at which free space was found.
 	 */
-	if (dbFindLeaf((dmtree_t *) & dp->tree, l2nb, &leafidx))
+	if (dbFindLeaf((dmtree_t *) &dp->tree, l2nb, &leafidx, 1))
 		return -ENOSPC;
 
 	if (leafidx < 0)
@@ -2920,14 +2920,18 @@ static void dbAdjTree(dmtree_t * tp, int leafno, int newval)
  *	leafidx	- return pointer to be set to the index of the leaf
  *		  describing at least l2nb free blocks if sufficient
  *		  free blocks are found.
+ *	type	- type of dmtree
  *
  * RETURN VALUES:
  *	0	- success
  *	-ENOSPC	- insufficient free blocks.
  */
-static int dbFindLeaf(dmtree_t * tp, int l2nb, int *leafidx)
+static int dbFindLeaf(dmtree_t *tp, int l2nb, int *leafidx, int type)
 {
 	int ti, n = 0, k, x = 0;
+	int max_size;
+
+	max_size = type ? TREESIZE : CTLTREESIZE;
 
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
