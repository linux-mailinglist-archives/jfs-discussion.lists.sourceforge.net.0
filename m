Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6F8941243
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 Jul 2024 14:46:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sYmFV-0004a9-6K;
	Tue, 30 Jul 2024 12:46:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1sYmFU-0004a2-Ex
 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 Jul 2024 12:46:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VxixORMfdEtkfr1gj7NPBfnm+IfjYiSGSObCO4YAWgU=; b=azBMRwxzJbMgU4Cg9e+I4HbLkj
 z6wzGT5Vajz0SbqrSFHL8WYUphhk14fE/KFoqwuJqr2ciSuKkeNL6+eC5gc2cDQgVLPEt1q9QqReR
 Q7IG/HKBC0IPZyAtq5b70HWobF9UsM0q6HuBioMBH2iEIGnk+qhF+wIHpdARHVZUUe6U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VxixORMfdEtkfr1gj7NPBfnm+IfjYiSGSObCO4YAWgU=; b=FyJ3vfKLbTIUf4L+yWJrWVELBY
 /j0Xe87b+jV4LcBP+n/KqQyIL6Y/YzoStjS1MTZF6ixOPIpZMKsTmtOYotPRR6Ei1XazFD0k6I76g
 MlXWp22CDB/NM5vCi8edbCpzwVKwRppjEhnIZvh7As4poDnxY2ID03Ay9JShaRt584tA=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sYmFU-0007GX-1u for jfs-discussion@lists.sourceforge.net;
 Tue, 30 Jul 2024 12:46:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B2D6A61ED4;
 Tue, 30 Jul 2024 12:46:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AF4AC32782;
 Tue, 30 Jul 2024 12:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1722343594;
 bh=KDk4BTh7VK6rZwrO8HCpw526Tu7LvLPgUh20AE/sGB4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oXVxBG4F5OD+7RqWF9qLVMtCWgKlFRBt7rHSNgOO4DP3hq4quOiunOkykN+Pr/faQ
 b4diNjeNIZxtZ90dki+FCn/7pd8YdXDJUP/9OTu0DKf0KPFV3Aemc9XLR+UX6TzqzH
 IKnUk71D2GZXM3ERTRZ55Ypf5KhBZ4HdZH3XfGw05JbL+RqZ6oXrBxWUtusZG7tP96
 NVcQTXb8FilhWFzsUy1Hb+vxxMx8nWeEOXgk/qjuAiGdKjABxpb60pm2jgtkMALCax
 l/WDAabhmCCUufU+m8NPwLXUGHqwpO/w8UECoJ9sJgyxUORszu2l80xYSpCjmQ9Ck+
 /a883WffyDsZA==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 30 Jul 2024 08:46:24 -0400
Message-ID: <20240730124629.3098598-2-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240730124629.3098598-1-sashal@kernel.org>
References: <20240730124629.3098598-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.10.223
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
X-Headers-End: 1sYmFU-0007GX-1u
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.10 2/3] jfs: fix null ptr deref
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
Cc: Sasha Levin <sashal@kernel.org>, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, ghandatmanas@gmail.com,
 osmtendev@gmail.com, Edward Adam Davis <eadavis@qq.com>,
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
index a222a9d71887f..defa82acb432c 100644
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
