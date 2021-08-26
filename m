Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F7B3F89D5
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Aug 2021 16:09:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mJG4Z-0006Oh-EB; Thu, 26 Aug 2021 14:09:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <wanghai38@huawei.com>) id 1mJDNW-0003Oc-2I
 for jfs-discussion@lists.sourceforge.net; Thu, 26 Aug 2021 11:17:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LYhC7TX1JE2YcW4CArcHQv3/tTFTJZa8Gbcrue3ZeeQ=; b=TQ1d7M9OsqtNlB0WA19/msRzCt
 9h9iWvzOQ+RWKU5DWHUBLyLowpv9RElOK9lf8EOV1AeVQu5pjA09rFAdlFrUjOPyJeGlmtemeGyyS
 Ct/JLa2BDJUr8MXpn4UrbtmTiptLeODmAoJrpf92CcmRtEhzQxr+smwbn1Dq+om7bc/o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=LYhC7TX1JE2YcW4CArcHQv3/tTFTJZa8Gbcrue3ZeeQ=; b=P
 A7IjWjkGl+nMnn+9L4ZNHbR8EDCpo91pBzV8Ed/rODaRyXmunJ+jXls5L1RTyuJy+3upkH2jZybS4
 WXXBeRJkxs43TyhO4CHRgOYBgtRelIZa2HiQpMc/uGP8WAotXzsoQKlu9ePiZaoH40QnPVR4Fbi9i
 LK8IjsLkgxu18bt8=;
Received: from szxga08-in.huawei.com ([45.249.212.255])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mJDNT-0000VI-Tc
 for jfs-discussion@lists.sourceforge.net; Thu, 26 Aug 2021 11:17:01 +0000
Received: from dggeme766-chm.china.huawei.com (unknown [172.30.72.56])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4GwKzM5hGwz19Vkw;
 Thu, 26 Aug 2021 19:16:15 +0800 (CST)
Received: from huawei.com (10.175.104.82) by dggeme766-chm.china.huawei.com
 (10.3.19.112) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.8; Thu, 26
 Aug 2021 19:16:49 +0800
From: Wang Hai <wanghai38@huawei.com>
To: <shaggy@kernel.org>
Date: Thu, 26 Aug 2021 19:16:09 +0800
Message-ID: <20210826111609.2982685-1-wanghai38@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.104.82]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggeme766-chm.china.huawei.com (10.3.19.112)
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1mJDNT-0000VI-Tc
X-Mailman-Approved-At: Thu, 26 Aug 2021 14:09:37 +0000
Subject: [Jfs-discussion] [PATCH] jfs: Fix NULL pointer dereference in diFree
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

I got a NULL pointer dereference report when doing fuzz test:

 jfs_mount: diMount failed w/rc = -5
 BUG: kernel NULL pointer dereference, address: 0000000000000004
 [...]
 RIP: 0010:diFree+0x5d/0xc70
 [...]
 jfs_evict_inode+0x136/0x180
 jfs_write_inode+0xc0/0xc0
 evict+0x102/0x1f0
 iput+0x220/0x2e0
 diFreeSpecial+0x44/0x70
 jfs_mount+0x1b1/0x460
 jfs_fill_super+0x1a5/0x460
 mount_bdev+0x1d7/0x220
 jfs_do_mount+0x39/0x50
 legacy_get_tree+0x2f/0x80
 vfs_get_tree+0x2f/0x100
 path_mount+0x8e8/0xc7
 do_mount+0x9e/0xc0
 __x64_sys_mount+0xc5/0x140
 do_syscall_64+0x34/0xb0
 entry_SYSCALL_64_after_hwframe+0x44/0xae

Similar to commit 9d574f985fe3 ("jfs: fix GPF in diFree"),
diFreeSpecial(ipimap)->..->diFree() will be called if diMount(ipimap)
fails in jfs_mount(). This will result in a null pointer reference in
diFree() because the imap is not allocated in diFreeSpecial().

int diFree(struct inode *ip)
{
	...
	struct inomap *imap = JFS_IP(ipimap)->i_imap; // imap == NULL
	...
	if (iagno >= imap->im_nextiag) { // null pointer reference
	...
}

If diFreeSpecial(ipimap) in jfs_mount() fails, there is no need to
call diFree(), because diAlloc() is not called in the mount process.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wang Hai <wanghai38@huawei.com>
---
 fs/jfs/inode.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
index 57ab424c05ff..e8303d47a4a4 100644
--- a/fs/jfs/inode.c
+++ b/fs/jfs/inode.c
@@ -146,12 +146,14 @@ void jfs_evict_inode(struct inode *inode)
 		dquot_initialize(inode);
 
 		if (JFS_IP(inode)->fileset == FILESYSTEM_I) {
+			struct inode *ipimap = JFS_SBI(inode->i_sb)->ipimap;
+
 			truncate_inode_pages_final(&inode->i_data);
 
 			if (test_cflag(COMMIT_Freewmap, inode))
 				jfs_free_zero_link(inode);
 
-			if (JFS_SBI(inode->i_sb)->ipimap)
+			if (ipimap && JFS_IP(ipimap)->i_imap)
 				diFree(inode);
 
 			/*
-- 
2.17.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
