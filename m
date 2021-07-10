Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 392273C2FE4
	for <lists+jfs-discussion@lfdr.de>; Sat, 10 Jul 2021 04:36:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1m22qo-0005ws-ER; Sat, 10 Jul 2021 02:36:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <sashal@kernel.org>) id 1m22qm-0005wb-A5
 for jfs-discussion@lists.sourceforge.net; Sat, 10 Jul 2021 02:36:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=blJw2MwM7n59qUiv1xlhljJdieBsMurKGslTNv4JIPs=; b=XScZzhi8Y+3CjdiZZ4CODVQhuR
 yBVMI3JBUBHjIg24nmZiFrCKpFTNaqupS8VQ5POp8O5h0iRZLbQMTKLkyMqk3ca0+ZSINOJfJ/cOY
 ExSYsLqHeKZY0Cvs+5kM7xaz/m0zdsfCbXo5Vp8G0rnUu4HwN0lzQ6kVYnUWw5iiETqM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=blJw2MwM7n59qUiv1xlhljJdieBsMurKGslTNv4JIPs=; b=YLwgvoMW/dSRMVm4g8IUWHqzIy
 9zvv9dxLZwqRQTNxQP6H95lFGKwwAV4BlUnjBDRkISbJ7LbopeuAVAp9TopD3l6yCMAPgWCV6YZs8
 huJenEXzJ8Fa94ugt8AFQuL17dpF/95oexCUXvi7dnfuYaDovQ1eIp5o5mEXZ/GOl0n8=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m22qZ-0005UX-9C
 for jfs-discussion@lists.sourceforge.net; Sat, 10 Jul 2021 02:36:10 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E1B216142C;
 Sat, 10 Jul 2021 02:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625884557;
 bh=yD6W4/r6M9zDVJ64wHXlrnyWoD3qTyHoWwz14c6ixt4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ntqts4jD31AxpPOwIkz1StiTwLbhT8t+x/LDMNxKGVLu0XFAJsmfmJ83LzRss7Zjk
 woMhRzR7nL9lCZhEUGBGpvfmTMbSRmaciPsqyp6+KPDYJk6Kc78UqPO+kohMynZdS0
 OSoxgpkp5/brs6YXLfn4DgiGt8KudFZ42YPCDXouZevZnwkzEAOrdCpUr2zLBbHL8D
 sX6SKKsL6opzMHrifbWBmXmd181Uc1fnh/zQ2XCbU8XSE1oCeMAmFjAGGVjUeKGG0E
 BuT3ohlVbhIt6oRtHkBDGGXIY66Lu3aeIYawkxmvE8P0z1Mm8tPBmYUXXoUa/VSxq1
 pe6EqQnc0I8Ag==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Fri,  9 Jul 2021 22:35:11 -0400
Message-Id: <20210710023516.3172075-29-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710023516.3172075-1-sashal@kernel.org>
References: <20210710023516.3172075-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1m22qZ-0005UX-9C
Subject: [Jfs-discussion] [PATCH AUTOSEL 4.14 29/33] jfs: fix GPF in diFree
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
Cc: Sasha Levin <sashal@kernel.org>, Pavel Skripkin <paskripkin@gmail.com>,
 jfs-discussion@lists.sourceforge.net,
 syzbot+0a89a7b56db04c21a656@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Pavel Skripkin <paskripkin@gmail.com>

[ Upstream commit 9d574f985fe33efd6911f4d752de6f485a1ea732 ]

Avoid passing inode with
JFS_SBI(inode->i_sb)->ipimap == NULL to
diFree()[1]. GFP will appear:

	struct inode *ipimap = JFS_SBI(ip->i_sb)->ipimap;
	struct inomap *imap = JFS_IP(ipimap)->i_imap;

JFS_IP() will return invalid pointer when ipimap == NULL

Call Trace:
 diFree+0x13d/0x2dc0 fs/jfs/jfs_imap.c:853 [1]
 jfs_evict_inode+0x2c9/0x370 fs/jfs/inode.c:154
 evict+0x2ed/0x750 fs/inode.c:578
 iput_final fs/inode.c:1654 [inline]
 iput.part.0+0x3fe/0x820 fs/inode.c:1680
 iput+0x58/0x70 fs/inode.c:1670

Reported-and-tested-by: syzbot+0a89a7b56db04c21a656@syzkaller.appspotmail.com
Signed-off-by: Pavel Skripkin <paskripkin@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/inode.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
index 054cc761b426..87b41edc800d 100644
--- a/fs/jfs/inode.c
+++ b/fs/jfs/inode.c
@@ -161,7 +161,8 @@ void jfs_evict_inode(struct inode *inode)
 			if (test_cflag(COMMIT_Freewmap, inode))
 				jfs_free_zero_link(inode);
 
-			diFree(inode);
+			if (JFS_SBI(inode->i_sb)->ipimap)
+				diFree(inode);
 
 			/*
 			 * Free the inode from the quota allocation.
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
