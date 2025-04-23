Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 801BBA99B84
	for <lists+jfs-discussion@lfdr.de>; Thu, 24 Apr 2025 00:27:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u7iYi-0007RG-UJ;
	Wed, 23 Apr 2025 22:27:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <contact@arnaud-lcm.com>) id 1u7iME-0007DB-EV
 for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Apr 2025 22:14:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RUnDJZ9kFnNIyGTBPDIVCpwJ3/PeH8eNmVVgrt1+CQw=; b=hlerH6P+PKazT4GQUMUJTqhxnd
 0yIckoH3znNC2oZapd0I8/J40ub4hsXsav/7t/AMsjUp6bWD3hRyj5pf5U4Gj9PzhiKcf8KDIC+Id
 97nDKdZHRjVxRN6Zu4seveNNVuSiStyOpVn+mtVvVwvR+7iBdEXBgZG1V0H9JoyF9DdI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Subject:Date:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RUnDJZ9kFnNIyGTBPDIVCpwJ3/PeH8eNmVVgrt1+CQw=; b=F
 pWoGJ6ug0PhDfJeqDHDDxUYrN3E0WzH/3vjxYYA6k0vVeMAfJrn/i4yhUSVbi2aEk17zH98H0E9To
 KZkgd9vuK69jyjJ5wge0YeF5j0Fh3thHBgkyi1iYn9tPRSTo51KDLBjxIWSZSvIFiNF4JorgbxjaV
 BNGpOid5PAJPMpgg=;
Received: from plesk.hostmyservers.fr ([45.145.164.37])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7iLy-0002nC-8t for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Apr 2025 22:14:19 +0000
Received: from [127.0.1.1] (unknown
 [IPv6:2a01:e0a:3e8:c0d0:d851:318b:70da:57a7])
 by plesk.hostmyservers.fr (Postfix) with ESMTPSA id 3C1B155807;
 Wed, 23 Apr 2025 22:13:55 +0000 (UTC)
Authentication-Results: Plesk;
 spf=pass (sender IP is 2a01:e0a:3e8:c0d0:d851:318b:70da:57a7)
 smtp.mailfrom=contact@arnaud-lcm.com smtp.helo=[127.0.1.1]
Received-SPF: pass (Plesk: connection is authenticated)
Date: Thu, 24 Apr 2025 00:13:51 +0200
MIME-Version: 1.0
Message-Id: <20250424-ubsan-jfs-v1-1-2eab57c1ac50@arnaud-lcm.com>
X-B4-Tracking: v=1; b=H4sIAB5mCWgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDEyNj3dKk4sQ83ay0Yl3jRFOLxOTEVNNUU3MloPqCotS0zAqwWdGxtbU
 AlHwwFlsAAAA=
To: Dave Kleikamp <shaggy@kernel.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745446435; l=1541;
 i=contact@arnaud-lcm.com; s=20250405; h=from:subject:message-id;
 bh=QDhW+cmmNYSwt3lHjiry053KlThbivIWaPccdOIP03E=;
 b=5aLN6ZacnP2/kPpc5ppBrtSfnIriJoSog8li82VzjHMszK0CVIgnuaoUfCoCvDTwxIViqeLsJ
 SzuH3nBapFqC2pwL97O8hoF2+rQm44O4AMbss2h8kjqWJlrYAtoP4UU
X-Developer-Key: i=contact@arnaud-lcm.com; a=ed25519;
 pk=Ct5pwYkf/5qSRyUpocKOdGc2XBlQoMYODwgtlFsDk7o=
X-PPP-Message-ID: <174544643558.3864.16356517934851663975@Plesk>
X-PPP-Vhost: arnaud-lcm.com
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When computing the tree index in dbAllocAG, we never check
 we are not out of bounds from the size of the stree. This could happen in
 a scenario where the filesystem metadata are corrupted. Reported-by:
 syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com
 Closes: https://syzkaller.appspot.com/bug?extid=cffd18309153948f3c3e
 Tested-by:
 syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [45.145.164.37 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [45.145.164.37 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1u7iLy-0002nC-8t
X-Mailman-Approved-At: Wed, 23 Apr 2025 22:27:11 +0000
Subject: [Jfs-discussion] [PATCH] jfs: upper bound check of tree index in
 dbAllocAG
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
From: Arnaud Lecomte via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Arnaud Lecomte <contact@arnaud-lcm.com>
Cc: Arnaud Lecomte <contact@arnaud-lcm.com>,
 jfs-discussion@lists.sourceforge.net,
 syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

When computing the tree index in dbAllocAG, we never check we are not
out of bounds from the size of the stree.
This could happen in a scenario where the filesystem metadata are
corrupted.

Reported-by: syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=cffd18309153948f3c3e
Tested-by: syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com
Fixes: 263e55949d89 ("x86/cpu/amd: Fix workaround for erratum 1054")
Signed-off-by: Arnaud Lecomte <contact@arnaud-lcm.com>
---
 fs/jfs/jfs_dmap.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 26e89d0c69b6..7acebb9a21b0 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -1385,6 +1385,12 @@ dbAllocAG(struct bmap * bmp, int agno, s64 nblocks, int l2nb, s64 * results)
 	    (1 << (L2LPERCTL - (bmp->db_agheight << 1))) / bmp->db_agwidth;
 	ti = bmp->db_agstart + bmp->db_agwidth * (agno & (agperlev - 1));
 
+	if (ti < 0 || ti >= le32_to_cpu(dcp->nleafs)) {
+		jfs_error(bmp->db_ipbmap->i_sb, "Corrupt dmapctl page: ti out of bounds\n");
+		release_metapage(mp);
+		return -EIO;
+	}
+
 	/* dmap control page trees fan-out by 4 and a single allocation
 	 * group may be described by 1 or 2 subtrees within the ag level
 	 * dmap control page, depending upon the ag size. examine the ag's

---
base-commit: 8560697b23dc2f405cb463af2b17256a9888129d
change-id: 20250423-ubsan-jfs-3a58acae5e57

Best regards,
-- 
Arnaud Lecomte <contact@arnaud-lcm.com>



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
