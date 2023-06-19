Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6987873720A
	for <lists+jfs-discussion@lfdr.de>; Tue, 20 Jun 2023 18:48:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qBeWV-00047t-AK;
	Tue, 20 Jun 2023 16:48:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <code@siddh.me>) id 1qBElH-0000D8-LB
 for jfs-discussion@lists.sourceforge.net;
 Mon, 19 Jun 2023 13:17:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GvzDRB8KKM+eFSppRsIz/VHygepCr5cjnv/6S4U0hdo=; b=XZl4bA9M7jZjBD+wcLwQQgSvoO
 +qEp61MrzpC45vDRMNj1/fTvDvb0U2f87Mzu25B8gcJGod17DdD4TxERTohti5HQgs7XMON1U0Lg7
 bKN3QgwYvdEn5mhrJ7d0u401LWPQShuDvdTcd0NxvRCCwIP4oMR+gX9Eq17sp54XmUNw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Date:Subject:
 Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GvzDRB8KKM+eFSppRsIz/VHygepCr5cjnv/6S4U0hdo=; b=jykzzdl2CYSEIGdR5ANiGyYE1O
 7NzR+4bkhardxiFIVCMOjBkDEI+Y9ptn224Sc1tNqq7B7kY+nmdI0QKonwiPPOGtWFc4znViw9aCu
 Qk8qs6XYnkpbw66ko+Vtz2pZNDUEtNoS8YM4jznD8amJBtfNRTuDQlZBcu1JDZvRlMU0=;
Received: from sender-of-o51.zoho.in ([103.117.158.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qBElE-008gip-Ll for jfs-discussion@lists.sourceforge.net;
 Mon, 19 Jun 2023 13:17:40 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1687180639; cv=none; d=zohomail.in; s=zohoarc; 
 b=NBdXVMn5z9fWMBGwVqYqBoCyLpHQOCJwzIifpNUC3TNjRszlZfWK5/y5Eu/4/ZNFgfcrNJcq/BeSieQz9R4nNLvdHrcQ4MoaPQ02kt+PpuWmAc7XmfLn2XcReii6LBjkj/VFKDhw/bBbkJ8+YRhgHi/abmZhJe40zrMiAe+v0zE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.in;
 s=zohoarc; t=1687180639;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To;
 bh=GvzDRB8KKM+eFSppRsIz/VHygepCr5cjnv/6S4U0hdo=; 
 b=fUJTI8z4jxlOoFSClv9SIhRkvh9fvRZdeXFs6G7rPwLtxlxLu2uWnL9RQrxLKZhO5E+Chj6oUHI6Xd9gtmDsHXHjfXEWtjvDQ9D5Y0CvT+B0J4P5JmJ4CbhYdIBkQ2EQepwli73ETqlxfgyonypPgThRg6ZfBH8fTnz67WpoABw=
ARC-Authentication-Results: i=1; mx.zohomail.in; dkim=pass  header.i=siddh.me;
 spf=pass  smtp.mailfrom=code@siddh.me;
 dmarc=pass header.from=<code@siddh.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1687180639; 
 s=zmail; d=siddh.me; i=code@siddh.me;
 h=From:From:To:To:Cc:Cc:Message-ID:Subject:Subject:Date:Date:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
 bh=GvzDRB8KKM+eFSppRsIz/VHygepCr5cjnv/6S4U0hdo=;
 b=GPgWrcCZkH2OW2/Y3pftJf/rXBY+6/GUt0qVsBANuoi/UFFygltgRbHJR9jkmaxi
 lJR+BnOPBtctgxnydC7ePBSwCLdjyJHhxOAp0kIJn6+kUHiowQ/cLkirmSsqUUCXv+C
 1yMeqKIpaXjSO2yE6e6RS2fnjMFYi6RSMcPWun6c=
Received: from kampyooter.. (223.179.149.51 [223.179.149.51]) by mx.zoho.in
 with SMTPS id 1687180638188470.44972217847703;
 Mon, 19 Jun 2023 18:47:18 +0530 (IST)
From: Siddh Raman Pant <code@siddh.me>
To: Dave Kleikamp <dave.kleikamp@oracle.com>, Hoi Pok Wu <wuhoipok@gmail.com>,
 Liu Shixin <liushixin2@huawei.com>,
 Dongliang Mu <mudongliangabcd@gmail.com>
Message-ID: <20230619131644.118332-1-code@siddh.me>
Date: Mon, 19 Jun 2023 18:46:44 +0530
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-ZohoMailClient: External
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In jfs_dmap.c at line 381, BLKTODMAP is used to get a logical
 block number inside dbFree(). db_l2nbperpage, which is the log2 number of
 blocks per page, is passed as an argument to BLKTODMAP which use [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [103.117.158.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qBElE-008gip-Ll
X-Mailman-Approved-At: Tue, 20 Jun 2023 16:48:06 +0000
Subject: [Jfs-discussion] [PATCH v2] jfs: jfs_dmap: Validate db_l2nbperpage
 while mounting
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, syzbot+d2cd27dcf8e04b232eb2@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

In jfs_dmap.c at line 381, BLKTODMAP is used to get a logical block
number inside dbFree(). db_l2nbperpage, which is the log2 number of
blocks per page, is passed as an argument to BLKTODMAP which uses it
for shifting.

Syzbot reported a shift out-of-bounds crash because db_l2nbperpage is
too big. This happens because the large value is set without any
validation in dbMount() at line 181.

Thus, make sure that db_l2nbperpage is correct while mounting.

Max number of pages = Page size / Min block size
=> log2(Max number of pages) = log2(Page size / Min block size)
			     = log2(Page size) - log2(Min block size)

=> Max db_l2nbperpage = L2PSIZE - L2MINBLOCKSIZE

Reported-and-tested-by: syzbot+d2cd27dcf8e04b232eb2@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?id=2a70a453331db32ed491f5cbb07e81bf2d225715
Cc: stable@vger.kernel.org
Suggested-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Siddh Raman Pant <code@siddh.me>
---
Changes in v2:
- Fix upper bound as pointed out in v1 by Shaggy.
- Add an explanation for the same in commit message for completeness.

 fs/jfs/jfs_dmap.c   | 6 ++++++
 fs/jfs/jfs_filsys.h | 2 ++
 2 files changed, 8 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index a3eb1e826947..da6a2bc6bf02 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -178,7 +178,13 @@ int dbMount(struct inode *ipbmap)
 	dbmp_le = (struct dbmap_disk *) mp->data;
 	bmp->db_mapsize = le64_to_cpu(dbmp_le->dn_mapsize);
 	bmp->db_nfree = le64_to_cpu(dbmp_le->dn_nfree);
+
 	bmp->db_l2nbperpage = le32_to_cpu(dbmp_le->dn_l2nbperpage);
+	if (bmp->db_l2nbperpage > L2PSIZE - L2MINBLOCKSIZE) {
+		err = -EINVAL;
+		goto err_release_metapage;
+	}
+
 	bmp->db_numag = le32_to_cpu(dbmp_le->dn_numag);
 	if (!bmp->db_numag) {
 		err = -EINVAL;
diff --git a/fs/jfs/jfs_filsys.h b/fs/jfs/jfs_filsys.h
index b5d702df7111..33ef13a0b110 100644
--- a/fs/jfs/jfs_filsys.h
+++ b/fs/jfs/jfs_filsys.h
@@ -122,7 +122,9 @@
 #define NUM_INODE_PER_IAG	INOSPERIAG
 
 #define MINBLOCKSIZE		512
+#define L2MINBLOCKSIZE		9
 #define MAXBLOCKSIZE		4096
+#define L2MAXBLOCKSIZE		12
 #define	MAXFILESIZE		((s64)1 << 52)
 
 #define JFS_LINK_MAX		0xffffffff
-- 
2.39.2




_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
