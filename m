Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED25253A745
	for <lists+jfs-discussion@lfdr.de>; Wed,  1 Jun 2022 15:59:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nwOsd-0005hw-SR; Wed, 01 Jun 2022 13:59:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <sashal@kernel.org>) id 1nwOsc-0005ho-AV
 for jfs-discussion@lists.sourceforge.net; Wed, 01 Jun 2022 13:59:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/fiFmwe4B/EfX+JRD/DsIglKMkHw4jeqVJQjwDewBuQ=; b=kw6g16+E05G1uHF301nvZcl9HQ
 K5R4H6fJvxZh10Nc8cFwwTsn4URyLOIl78hhOYq6sXQWlrCfM/r4XyX8UkhmzQuNI+eB8ktVZVKS4
 C+g3lwwXIq/nk2BxHAMEbZ3QlaM0H0yZa+Piu59FILIieGpSu/P32o9hdNUk+laQvr3o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/fiFmwe4B/EfX+JRD/DsIglKMkHw4jeqVJQjwDewBuQ=; b=Gdk9BoVKOaBKPchhlnw3fxeikN
 rg1CEx15GTaj023GyYSBPL12g7auVy3G8Pl0PejkopbC6HjKALsRyKyq08yNlCBF9ETpYbLW8Avxy
 9GEN282MARQAW49HQCviFQ/lAuxy0hiP5qBu983KbCdf2FlkQGjIEvYBzD2sSDDLmtuw=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nwOsZ-00H8nb-3x
 for jfs-discussion@lists.sourceforge.net; Wed, 01 Jun 2022 13:59:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 62FCCB81B33;
 Wed,  1 Jun 2022 13:59:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C58FC385A5;
 Wed,  1 Jun 2022 13:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1654091949;
 bh=Pee4iM1pwQZocsKFEr4FpnFl5ch4rnt8kPIrAq5CT90=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iiSLTm+e29HEgRiPhrBF3gQXDLV7RS4qUNB6Y8je8BclA/ZO1XrpZgmwM4t7HAcrm
 0DsKCgtiMUoFWVe3fGNZsqBML1YQHMVEelDqT+dneRLgZ5w44D6JIMMK7fwfsiUlsn
 JJzgTghyP4CxwkfQ80M+d/zyJNi49ROTBDfwoCOZWP672PU3BroUPrOZHnhn5yfzaF
 aSyLDB0fOqE0WjkTG4gsxLLQ9kdxm0IjmlbiyrWst/V8OBppaZK3VFfmdABPPXKHlG
 VOOfzOGXWXtOkR+8YUJgC0530vRDDLhTmDVXDkcySPvu/i7o5fBUspTVCfby5HIp86
 w27RriBwxiLBg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Wed,  1 Jun 2022 09:58:46 -0400
Message-Id: <20220601135902.2004823-4-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220601135902.2004823-1-sashal@kernel.org>
References: <20220601135902.2004823-1-sashal@kernel.org>
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
 high trust [145.40.68.75 listed in list.dnswl.org]
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
X-Headers-End: 1nwOsZ-00H8nb-3x
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.4 04/20] fs: jfs: fix possible
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
index 79f3440e204b..d3cb27487c70 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -385,7 +385,8 @@ int dbFree(struct inode *ip, s64 blkno, s64 nblocks)
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
