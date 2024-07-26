Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3767593D507
	for <lists+jfs-discussion@lfdr.de>; Fri, 26 Jul 2024 16:23:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sXLqI-0004XN-DN;
	Fri, 26 Jul 2024 14:22:46 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1sXLqG-0004XE-3s
 for jfs-discussion@lists.sourceforge.net;
 Fri, 26 Jul 2024 14:22:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RYy2lkXdrqvvRQ6HUau4IEEmxjZjv7SYZfEboVOissk=; b=HZ+elE6FSLnNympchxBjQnsKC6
 9y6/3BAgwayVeSy6KPb1SeGuBrvBJxzlRk6PtP5rE1yNHbai+/OP7HH6WuEC8xnKKM0I9gKCGDQDL
 u/RmWrhTnqddiNLD9h5zCPOVD7bxIYA6yc5rrWlj/nl+btH3BmHZzFQSF9VTThZ+93Rk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RYy2lkXdrqvvRQ6HUau4IEEmxjZjv7SYZfEboVOissk=; b=itJsrdFwlm1gX3UTVGqxyOQ3FS
 0a6XWaGtzSE5MvE4UcHlvW8HMZSz7DsXkcIVMuUJZJBfFNJe5/Qb+KpoPFTm+K9Gw26rync9HpQhR
 Ac+p+Fql21BWKb7sUnRtTp7rjYG+8Rf2+uj+4h68RYbB/pxWOsvhvxkGhM1zhHzqv4Pw=;
Received: from out162-62-58-211.mail.qq.com ([162.62.58.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sXLqD-0000iu-QM for jfs-discussion@lists.sourceforge.net;
 Fri, 26 Jul 2024 14:22:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1722003746; bh=RYy2lkXdrqvvRQ6HUau4IEEmxjZjv7SYZfEboVOissk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Xy2Ak7Obugg5GMT3Q9FhFovR438OKLy/jKPY2bQ58KOI2eEtsYwop54o8pll/xrtE
 NRzJNoF4MsSIftuaiwDpTlz7VEICrdufPS9bfgpGsUiOGFcAL3NL9hRlNrUxQpJ5vu
 gd8FeMC1onVwJ5QzCilaD3siVsft9Vd4C9t3L6Jo=
Received: from pek-lxu-l1.wrs.com ([111.198.228.103])
 by newxmesmtplogicsvrszb9-0.qq.com (NewEsmtp) with SMTP
 id 59215058; Fri, 26 Jul 2024 22:22:18 +0800
X-QQ-mid: xmsmtpt1722003738terxm588f
Message-ID: <tencent_8FB36BE36BC97A03AE44421765577706C905@qq.com>
X-QQ-XMAILINFO: NvKyM24IHTKSSrukGyLZFBr6AF0D5OZmp3rvMMXqB0ntwiSTCqE/LPUMPeQxGO
 8kSCg5zMjGQDAHC/y0XqQAb+HLFxf6C+kXDz+8rShCQEQYZJ01MszrWZrYWwjtFs8rV1W5yeD3zV
 lUJUCeALR60JuVawf5Sh10wjc/HJceUiF0VMcwGMHBt91fzrDLKacDAlhSVuwlPAvjVoaZMJ7tjJ
 KGv5SctVuAT483fIiSLRF45/7SLHhfkmBZD3zgFAogSsvsU41u5cqK2rYTVqWXXU9NueELhRSQH/
 JJESbHEdJjmsMEY8DQHjaaSdfU4Vep/L12uc1k8zYyR5uo29rlpKsl6Y08NsMEl8Q04D6sBhxpFs
 cWN7WV+uRp4+DIb46gJm5GJWFhaV0EAdUI2o0QurLalh0G42iZBKvYOINBgqKIrbRUuGXrcJGQ+Z
 2XUhCeJf3JkEh0r6AA8aAfPE61cruSKlcO3G/5oWixsZtLgL2CzBGpmnL8D+0Wg3Utlk5dVFH8RQ
 Wx1Ka9R0mn48yDEH6n7TFPEwGRyTe1vm2eHzg6+kE5wsDLKivhgu6nPHwVFQrzy7pHIChY6LPwEN
 c7usomrPGQ71OPhuqpAHOmc7JdyBc+MiFJIhqCYJfI8GoDpyWDT5tZ3RPchofrd0MGhE0kl0T7um
 nT09DdU9/zGAPMgocpm0qnT9YDiq+3E8DJ6+aDKeHhoP2VYQc3gO6DSxu/UDer+kcrPoyi/sOdbt
 e+zirI+Xc+Z2R9x0+5AD0uoaDOW8xMgHJnRel1/Qcbkg7E+p74deLlHtw9OAvDF0xJN2OYM+/FKQ
 j4zq9XQagQorS5J7tcvxTmn6Z53MoMXDO+tABQS9kJvupltz/E3b6hWDk5q8iLmTjXaUYqRSKmUh
 uckJRN1kgaDE/Is7dmm3XnM5f3JVFGjuliuXq4HdOndqHSfrDWKFr24k/GaXGc2w==
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
To: syzbot+dca05492eff41f604890@syzkaller.appspotmail.com
Date: Fri, 26 Jul 2024 22:22:19 +0800
X-OQ-MSGID: <20240726142218.2293706-2-eadavis@qq.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <00000000000064c7a0061e2004d6@google.com>
References: <00000000000064c7a0061e2004d6@google.com>
MIME-Version: 1.0
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot report a out of bounds in dbSplit,
 it because dmt_leafidx
 less than 0, add a checking for dmt_leafidx in dbAllocDmapLev. Reported-by:
 https://syzkaller.appspot.com/bug?extid=dca05492eff41f604890 Signed-off-by:
 Edward Adam Davis --- fs/jfs/jfs_dmap.c | 5 +++-- 1 file changed,
 3 insertions(+), 2 deletions(-) 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: qq.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [162.62.58.211 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [162.62.58.211 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [162.62.58.211 listed in sa-accredit.habeas.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1sXLqD-0000iu-QM
Subject: [Jfs-discussion] [PATCH] jfs: check if dmt_leafidx is less than zero
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
From: Edward Adam Davis via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Edward Adam Davis <eadavis@qq.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot report a out of bounds in dbSplit, it because dmt_leafidx less
than 0, add a checking for dmt_leafidx in dbAllocDmapLev.

Reported-by: syzbot+dca05492eff41f604890@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=dca05492eff41f604890
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
---
 fs/jfs/jfs_dmap.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index cb3cda1390ad..c5b8883599e3 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -1956,6 +1956,7 @@ dbAllocDmapLev(struct bmap * bmp,
 {
 	s64 blkno;
 	int leafidx, rc;
+	dmtree_t *tp = (dmtree_t *) &dp->tree;
 
 	/* can't be more than a dmaps worth of blocks */
 	assert(l2nb <= L2BPERDMAP);
@@ -1964,10 +1965,10 @@ dbAllocDmapLev(struct bmap * bmp,
 	 * free space.  if sufficient free space is found, dbFindLeaf()
 	 * returns the index of the leaf at which free space was found.
 	 */
-	if (dbFindLeaf((dmtree_t *) &dp->tree, l2nb, &leafidx, false))
+	if (dbFindLeaf(tp, l2nb, &leafidx, false))
 		return -ENOSPC;
 
-	if (leafidx < 0)
+	if (leafidx < 0 || le32_to_cpu(tp->dmt_leafidx) < 0)
 		return -EIO;
 
 	/* determine the block number within the file system corresponding
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
