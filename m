Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2C8737207
	for <lists+jfs-discussion@lfdr.de>; Tue, 20 Jun 2023 18:48:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qBeWW-00048E-7k;
	Tue, 20 Jun 2023 16:48:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <code@siddh.me>) id 1qBeW6-0003wZ-Ld
 for jfs-discussion@lists.sourceforge.net;
 Tue, 20 Jun 2023 16:47:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2km/+FC5CJNIts5K1Qb08VHKBfl24zZT41xMIlQqDeY=; b=HH62i6TMAlcRQxV3XvoV+Rc4bq
 5LsWVC78B/w4uqVg9TbQxkfLL850XY2JnYJyal5DL5Mnky2RWl8UDap0oU7pqqzfTDn+akSiprfTn
 VtgpPcWmGQpssivabeIrGZIZ3duuR+78GxU2KhIgrx50xqO0fJJXIyOCKJtKFVbYdzHk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Date:Subject:
 Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2km/+FC5CJNIts5K1Qb08VHKBfl24zZT41xMIlQqDeY=; b=XFcETrPeNnnuKd8cfXqE/nnEgB
 8rtZbvSLgq24FAG+oBAQEphiKVEabfk7FsTvbu3h1PMXLN1/inbwEMAdR6TpRzlnkCc4KtqSj3zym
 a9ebiNeXv2kvfErwMg56ABnUXDYq5xQKa5aDRUi1NoTUP0iNr4ZKoTwrGbEIeXInHexg=;
Received: from sender-of-o51.zoho.in ([103.117.158.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qBeW1-009uQf-6v for jfs-discussion@lists.sourceforge.net;
 Tue, 20 Jun 2023 16:47:42 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1687279631; cv=none; d=zohomail.in; s=zohoarc; 
 b=D4m11pFsGamxvO5rb0IOylq5LfxBXghIsnwdSlCMx8Asbt115Rht6BP5cKIhZVIYdYaLjtEAovUnZ6i4NjCzdfTzlC5DFz9sPXe+ugh2wwIjQJlJOo4JNHWgWPzGXMIi1KyZJ5fzoHpW8gk5Np47TTTnQOmlcta4HQkaw5z4l6E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.in;
 s=zohoarc; t=1687279631;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To;
 bh=2km/+FC5CJNIts5K1Qb08VHKBfl24zZT41xMIlQqDeY=; 
 b=DFekpnqb+jRlpIxgHgOT1GOgDm/vyvzDH2xWccFxYknzZx3j6ydrQBKoS9GDvUlaekI1ncPoS3WpAHRSJNRgPdaOVCtke8gGFHtg6X/NLLflfBH7sa8JJDCK5VG6RBWnMk21NBQqmm9QuE22borHfroVpF+K8YXQtEgEIooN+Wk=
ARC-Authentication-Results: i=1; mx.zohomail.in; dkim=pass  header.i=siddh.me;
 spf=pass  smtp.mailfrom=code@siddh.me;
 dmarc=pass header.from=<code@siddh.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1687279631; 
 s=zmail; d=siddh.me; i=code@siddh.me;
 h=From:From:To:To:Cc:Cc:Message-ID:Subject:Subject:Date:Date:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
 bh=2km/+FC5CJNIts5K1Qb08VHKBfl24zZT41xMIlQqDeY=;
 b=UVMTwhtWvVf3N5MMxSdUrGbVHiK2b8fo3tBnEKSB/YYx1qthh2NVXOqnj5mOk/iJ
 vd8fkHNKoCG5rKdSBfJjzFBtnUldRPaTwDFztavULupX7v5sBFuw7Z7r+ZDHOmZ3YTE
 1irham1chcJTe9RSFwUfMX9UUVPcN2HgpmZJjBc8=
Received: from kampyooter.. (223.179.149.51 [223.179.149.51]) by mx.zoho.in
 with SMTPS id 1687279629337809.8626610827803;
 Tue, 20 Jun 2023 22:17:09 +0530 (IST)
From: Siddh Raman Pant <code@siddh.me>
To: Dave Kleikamp <shaggy@kernel.org>, Hoi Pok Wu <wuhoipok@gmail.com>,
 Liu Shixin <liushixin2@huawei.com>,
 Dongliang Mu <mudongliangabcd@gmail.com>
Message-ID: <20230620164700.11083-1-code@siddh.me>
Date: Tue, 20 Jun 2023 22:17:00 +0530
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-ZohoMailClient: External
X-Spam-Score: 1.5 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In jfs_dmap.c at line 381, BLKTODMAP is used to get a logical
 block number inside dbFree(). db_l2nbperpage, which is the log2 number of
 blocks per page, is passed as an argument to BLKTODMAP which use [...] 
 Content analysis details:   (1.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: siddh.me]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [103.117.158.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qBeW1-009uQf-6v
X-Mailman-Approved-At: Tue, 20 Jun 2023 16:48:06 +0000
Subject: [Jfs-discussion] [PATCH v3] jfs: jfs_dmap: Validate db_l2nbperpage
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

Max number of blocks per page = Page size / Min block size
=> log2(Max num_block per page) = log2(Page size / Min block size)
				= log2(Page size) - log2(Min block size)

=> Max db_l2nbperpage = L2PSIZE - L2MINBLOCKSIZE

Reported-and-tested-by: syzbot+d2cd27dcf8e04b232eb2@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?id=2a70a453331db32ed491f5cbb07e81bf2d225715
Cc: stable@vger.kernel.org
Suggested-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Siddh Raman Pant <code@siddh.me>
---
Changes in v3:
- Fix typo in commit message (number of pages -> number of blocks per page).

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
