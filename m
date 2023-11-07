Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 462077E4495
	for <lists+jfs-discussion@lfdr.de>; Tue,  7 Nov 2023 16:55:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1r0OPp-0003q3-55;
	Tue, 07 Nov 2023 15:54:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1r0OPo-0003pw-BO
 for jfs-discussion@lists.sourceforge.net;
 Tue, 07 Nov 2023 15:54:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=izY5VuzolEM/uPPB/d/wc8Q2wltkGJYNpTeEBOt7IW4=; b=Y5xrl0epLU2XfE+J1Gj5bNFUya
 R9qzf6hJ0GIGKAZdZ+9abieDKAJJYeS2X9KrC1DLflhyc7TP+h2DKvjVYj0t7Z+t/ZG+0ZKPI2DwB
 HG1bcyUsj+Mx6wk3h/21WOGh1J2XiFyp1rpfOuQrBlPBrTERRN1cY7oaYKy9ItaWJkGI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=izY5VuzolEM/uPPB/d/wc8Q2wltkGJYNpTeEBOt7IW4=; b=FwIJ6AHc5TbaBnSbhvWJ10n5a5
 SxqU1Zn3OOOMLWySCFjl6LeGfXLn3vLEjNZ2AgHexpOTw99sGeBtW++x70Hoy0D0YNJ2cP92btoeW
 zvOSxEhYM/71B1TrgoQGfI8sRfz0jqmQjcl3XsKUacP8bg2TBJhqNF++x8cMVKr2uiaI=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r0OPn-00AfEE-Ml for jfs-discussion@lists.sourceforge.net;
 Tue, 07 Nov 2023 15:54:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 72DBFB816C7;
 Tue,  7 Nov 2023 15:54:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80693C433C7;
 Tue,  7 Nov 2023 15:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1699372488;
 bh=zVVQ7dCLljkfi4J6UkS4uhE2JVt1KshtZvGFvUu5Pns=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KOoQhX13GPR4/SGAYtAw0kUsa1QV/Krhh7yiBIdtSBh3vWbEbG9cXxsISe+nuoyGs
 JJoAjkxQehszw4BNoMQq90GD/r8R+rueFL779p/brDyiO53BlHMrGuG+ZjcCqtthd/
 7iFfhZcQ+pfNEHtm9ONMHPzpfheZp7JSj/Ezbsfbp88XeVx9MmoIoQPuZ0wAvpg+ot
 rN2VkwzPvjGSfR9KYyDLIr3kTiadW+lPhlub1UxjDLxwx6voWa731KFgFDKF/p5ZHT
 R6CmTZrRZUk6dLCLGOi2YyBnPu0reoP9mdBE7/7TUWbwMShqlputc+xcjKjkF+EuFx
 XjLeqnRD7DTpw==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue,  7 Nov 2023 10:54:14 -0500
Message-ID: <20231107155430.3768779-6-sashal@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107155430.3768779-1-sashal@kernel.org>
References: <20231107155430.3768779-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 4.19.297
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Manas Ghandat <ghandatmanas@gmail.com> [ Upstream
 commit
 05d9ea1ceb62a55af6727a69269a4fd310edf483 ] Currently there is not check
 against
 the agno of the iag while allocating new inodes to avoid fragmentation
 problem. Added the check which is required. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1r0OPn-00AfEE-Ml
Subject: [Jfs-discussion] [PATCH AUTOSEL 4.19 06/11] jfs: fix
 array-index-out-of-bounds in diAlloc
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
From: Sasha Levin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Sasha Levin <sashal@kernel.org>
Cc: Sasha Levin <sashal@kernel.org>, shaggy@kernel.org, brauner@kernel.org,
 Manas Ghandat <ghandatmanas@gmail.com>,
 syzbot+79d792676d8ac050949f@syzkaller.appspotmail.com, jlayton@kernel.org,
 jfs-discussion@lists.sourceforge.net, okanatov@gmail.com,
 liushixin2@huawei.com, jack@suse.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Manas Ghandat <ghandatmanas@gmail.com>

[ Upstream commit 05d9ea1ceb62a55af6727a69269a4fd310edf483 ]

Currently there is not check against the agno of the iag while
allocating new inodes to avoid fragmentation problem. Added the check
which is required.

Reported-by: syzbot+79d792676d8ac050949f@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=79d792676d8ac050949f
Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_imap.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 7565e00e88182..b45cc109e5063 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -1335,7 +1335,7 @@ diInitInode(struct inode *ip, int iagno, int ino, int extno, struct iag * iagp)
 int diAlloc(struct inode *pip, bool dir, struct inode *ip)
 {
 	int rc, ino, iagno, addext, extno, bitno, sword;
-	int nwords, rem, i, agno;
+	int nwords, rem, i, agno, dn_numag;
 	u32 mask, inosmap, extsmap;
 	struct inode *ipimap;
 	struct metapage *mp;
@@ -1371,6 +1371,9 @@ int diAlloc(struct inode *pip, bool dir, struct inode *ip)
 
 	/* get the ag number of this iag */
 	agno = BLKTOAG(JFS_IP(pip)->agstart, JFS_SBI(pip->i_sb));
+	dn_numag = JFS_SBI(pip->i_sb)->bmap->db_numag;
+	if (agno < 0 || agno > dn_numag)
+		return -EIO;
 
 	if (atomic_read(&JFS_SBI(pip->i_sb)->bmap->db_active[agno])) {
 		/*
-- 
2.42.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
