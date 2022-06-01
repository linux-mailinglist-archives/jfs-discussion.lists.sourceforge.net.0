Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B9D53A756
	for <lists+jfs-discussion@lfdr.de>; Wed,  1 Jun 2022 16:01:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nwOuU-0003K2-EM; Wed, 01 Jun 2022 14:01:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <sashal@kernel.org>) id 1nwOuP-0003Jq-Qh
 for jfs-discussion@lists.sourceforge.net; Wed, 01 Jun 2022 14:01:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5AOcHA8Mt8Aqt7MmEzwBBgYUt1NMFxIdv9xfUrewv8g=; b=b8pntxfu/XtwDvd25lPjY8MFFO
 ntmapJ/HIHv8obEsSOmpJPnujPzn5urQIgaoBqXMBMCtWRI+wXTyuf9yes/YnivbK8Y0id3qoxeq6
 98Nz+CwZEcKNqtV6PVgY9T65WoDJwD3rWO0PNQyYwMtgRgK0wGKHdCauzEOdaVVXVvTU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5AOcHA8Mt8Aqt7MmEzwBBgYUt1NMFxIdv9xfUrewv8g=; b=Q
 hgy6rio+waxzouDBqkkxlJ0Y81FojJTDZ9ubYl0QIwAANvOsUqLc6DapadXIbouN/wBuKpvd3tj5G
 tHoARNeQVdJIuGDBLsEnVRMBfKS2oE6UYXgaE66K1V6p5FrZEbIdy1jO8ZMhJr6GbE9NAA1hNK9MQ
 lnI68aWR4SkmNXAg=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nwOuM-00H96p-6W
 for jfs-discussion@lists.sourceforge.net; Wed, 01 Jun 2022 14:01:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0C8616149F;
 Wed,  1 Jun 2022 14:01:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7368AC385A5;
 Wed,  1 Jun 2022 14:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1654092063;
 bh=LZSVzGm+eApsXK45dI2BFu9jzJnYL96WdCNobNzk1qI=;
 h=From:To:Cc:Subject:Date:From;
 b=DmVt2KgdLDzTBOBEltgu0qcN9lXQCBXIzW581N9PB2DiS8ngZOpIncmwvaSFJCBeg
 FbWwVhkFCKsNLQGOjWemQWNAInWbzcC8YW+yXAzlcTbCJQDE+4A/2ZQeMhUQMxNWax
 Q8/nXHyE5Od7CZgjw7Zbt8KL1FJG0KTiF6pFrJesyVaX6Sh1I1ICpTu58L3q6kUOtE
 PO8ToD4iaZvQHW69j5rTHtdRpLiKYS/ArjqpRhJOK7uncvTVTAv2uZBSJgDaAJnUH4
 RE2/gdkz5MjIs31Odm8nXJ+ZzyLpwZS09liWQSaVKMe5Z4nyqwOxiadmZ+Lg/gv+qd
 LosWNNQZf/Yhg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Wed,  1 Jun 2022 10:00:50 -0400
Message-Id: <20220601140100.2005469-1-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Zixuan Fu <r33s3n6@gmail.com> [ Upstream commit
 0d4837fdb796f99369cf7691d33de1b856bcaf1f
 ] In our fault-injection testing, the variable "nblocks" in dbFree() can
 be zero when kmalloc_array() fails in dtSearch(). In this case, the variable
 "mp" in dbFree() would be NULL and then it is derefe [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nwOuM-00H96p-6W
Subject: [Jfs-discussion] [PATCH AUTOSEL 4.9 01/11] fs: jfs: fix possible
 NULL pointer dereference in dbFree()
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
Cc: Sasha Levin <sashal@kernel.org>, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, Zixuan Fu <r33s3n6@gmail.com>,
 TOTE Robot <oslab@tsinghua.edu.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Zixuan Fu <r33s3n6@gmail.com>

[ Upstream commit 0d4837fdb796f99369cf7691d33de1b856bcaf1f ]

In our fault-injection testing, the variable "nblocks" in dbFree() can be
zero when kmalloc_array() fails in dtSearch(). In this case, the variable
 "mp" in dbFree() would be NULL and then it is dereferenced in
"write_metapage(mp)".

The failure log is listed as follows:

[   13.824137] BUG: kernel NULL pointer dereference, address: 0000000000000020
...
[   13.827416] RIP: 0010:dbFree+0x5f7/0x910 [jfs]
[   13.834341] Call Trace:
[   13.834540]  <TASK>
[   13.834713]  txFreeMap+0x7b4/0xb10 [jfs]
[   13.835038]  txUpdateMap+0x311/0x650 [jfs]
[   13.835375]  jfs_lazycommit+0x5f2/0xc70 [jfs]
[   13.835726]  ? sched_dynamic_update+0x1b0/0x1b0
[   13.836092]  kthread+0x3c2/0x4a0
[   13.836355]  ? txLockFree+0x160/0x160 [jfs]
[   13.836763]  ? kthread_unuse_mm+0x160/0x160
[   13.837106]  ret_from_fork+0x1f/0x30
[   13.837402]  </TASK>
...

This patch adds a NULL check of "mp" before "write_metapage(mp)" is called.

Reported-by: TOTE Robot <oslab@tsinghua.edu.cn>
Signed-off-by: Zixuan Fu <r33s3n6@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dmap.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 6dac48e29d28..a07fbb60ac3c 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -398,7 +398,8 @@ int dbFree(struct inode *ip, s64 blkno, s64 nblocks)
 	}
 
 	/* write the last buffer. */
-	write_metapage(mp);
+	if (mp)
+		write_metapage(mp);
 
 	IREAD_UNLOCK(ipbmap);
 
-- 
2.35.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
