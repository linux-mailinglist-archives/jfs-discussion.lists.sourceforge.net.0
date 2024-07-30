Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF314941234
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 Jul 2024 14:46:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sYmEe-0002dU-C3;
	Tue, 30 Jul 2024 12:45:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1sYmEX-0002d1-SS
 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 Jul 2024 12:45:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q4WT+I7tLN4cZPCgLlU43Q/iMUnU2Z+rwaBOPjJ1kVo=; b=E2Bs5B9ePGYYzm2Aqqtf+Am4E/
 Bvmm6utSG0mCyhH9q0DBPdC6XBjpFi/+roAauVVOcwLte4yiyCdjOHR1GS7M2oKuLt2EOz1+P8TgX
 lbym91G03piLL9LJYwUKYR+zDtS+Ta8RPbxeLLWRDay9ZdgLBshfdnGsKZ8tlN+vHjtY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q4WT+I7tLN4cZPCgLlU43Q/iMUnU2Z+rwaBOPjJ1kVo=; b=kWUetcv6AVhUMpViyNea0+a3Tm
 Rl387WwY+YkXgXlwOdq8T3D8NL2ALy++wUDptSUtqUaCUMRL1JZXQZZzzcWjpvv34NWC+u/xCyk5w
 ND5J7LEKzAyywPgAl4eJmFFuoX/nZMfCFbb6qUYsE2Tw/Cn4c5Vc9nFI2cRzycTFUr8w=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sYmEX-0007An-9a for jfs-discussion@lists.sourceforge.net;
 Tue, 30 Jul 2024 12:45:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id ED61761EC3;
 Tue, 30 Jul 2024 12:45:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37AE8C32782;
 Tue, 30 Jul 2024 12:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1722343530;
 bh=MVz/znc9I233RgIM9zDHWcICToeODo3lTIKp9s5T8N4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hpa6EnPtv0o8XsL1vgvHCX0M0rDgfM8glsjeNS8RfMsidA3AQtY953nxWB6WxEgTO
 bkyzKdCnpgN4+SPY1+VyEfXIk4KRRDwW3yM4NAN9Hg6x3CqwWKRQSUXvFekNiDKMLG
 tU/5sJnN7PIAGXga7PO3VG+8iRdPF5vspWUth4wr7dJd9T2mT3Nw3nzSVjoa8ecToF
 lRnyYsBAgpbit8g7NZOB1RfMgFcI3XOvlO/AarsW1Voe4KhEItraIgaTZYpQ0AZpGa
 G3u2iiiYZe47VuPXWp02OqK3ZjKKmYbG+7Pq7961geqsWAqOjSlOWJd0DZF5Bp8Q5r
 O3RgMX3kGSsNw==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 30 Jul 2024 08:45:11 -0400
Message-ID: <20240730124519.3093607-5-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240730124519.3093607-1-sashal@kernel.org>
References: <20240730124519.3093607-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.10.2
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Edward Adam Davis <eadavis@qq.com> [ Upstream commit
 ce6dede912f064a855acf6f04a04cbb2c25b8c8c ] [syzbot reported] general
 protection
 fault, probably for non-canonical address 0xdffffc0000000001: 0000 [#1] PREEMPT
 SMP KASAN PTI KASAN: null-ptr-deref in range
 [0x0000000000000008-0x000000000000000f [...] 
 Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sYmEX-0007An-9a
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.10 5/7] jfs: fix null ptr deref
 in dtInsertEntry
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
Cc: Sasha Levin <sashal@kernel.org>, osmtendev@gmail.com,
 jfs-discussion@lists.sourceforge.net, ghandatmanas@gmail.com,
 shaggy@kernel.org, Edward Adam Davis <eadavis@qq.com>,
 syzbot+bba84aef3a26fb93deb9@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Edward Adam Davis <eadavis@qq.com>

[ Upstream commit ce6dede912f064a855acf6f04a04cbb2c25b8c8c ]

[syzbot reported]
general protection fault, probably for non-canonical address 0xdffffc0000000001: 0000 [#1] PREEMPT SMP KASAN PTI
KASAN: null-ptr-deref in range [0x0000000000000008-0x000000000000000f]
CPU: 0 PID: 5061 Comm: syz-executor404 Not tainted 6.8.0-syzkaller-08951-gfe46a7dd189e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
RIP: 0010:dtInsertEntry+0xd0c/0x1780 fs/jfs/jfs_dtree.c:3713
...
[Analyze]
In dtInsertEntry(), when the pointer h has the same value as p, after writing
name in UniStrncpy_to_le(), p->header.flag will be cleared. This will cause the
previously true judgment "p->header.flag & BT-LEAF" to change to no after writing
the name operation, this leads to entering an incorrect branch and accessing the
uninitialized object ih when judging this condition for the second time.

[Fix]
After got the page, check freelist first, if freelist == 0 then exit dtInsert()
and return -EINVAL.

Reported-by: syzbot+bba84aef3a26fb93deb9@syzkaller.appspotmail.com
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dtree.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 031d8f570f581..5d3127ca68a42 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -834,6 +834,8 @@ int dtInsert(tid_t tid, struct inode *ip,
 	 * the full page.
 	 */
 	DT_GETSEARCH(ip, btstack->top, bn, mp, p, index);
+	if (p->header.freelist == 0)
+		return -EINVAL;
 
 	/*
 	 *	insert entry for new key
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
