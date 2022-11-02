Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD6C6163F3
	for <lists+jfs-discussion@lfdr.de>; Wed,  2 Nov 2022 14:40:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oqDyC-0001yR-4d;
	Wed, 02 Nov 2022 13:39:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <liushixin2@huawei.com>) id 1oq9XH-0005Xv-Nj
 for jfs-discussion@lists.sourceforge.net;
 Wed, 02 Nov 2022 08:55:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hcjIgm3pQG4MmqTEF0sjv28xxQrtlIfvGYO8rRyQs0I=; b=JdYjI0VXkFj6NJCmh/kBEjAZJ7
 SX/k0ZQiudeYc0coyZd5FDlgL/9doziKLFccDejJrDhoVjZAWgGcbbUjh0dqWPRIpzvfMDWfL8Nsq
 l3qeZ1jAj0E9kEzLXgH6iwZ5RD2YxhbBkCk0oTpTOKQTfYQ1JYyvRIQhqZslB9RB/IkQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hcjIgm3pQG4MmqTEF0sjv28xxQrtlIfvGYO8rRyQs0I=; b=S
 IUQaewNRfYnk/E3m+BDzR5N70uJKSakYrSwskqCe+u34fmAJit/o2mleJ1x7NHmcbvQvmKx6MGkZR
 YrDFbPWppJAGy34ueHO3JUBhzPosX7ZckM4VyvNtnbFNH3rrv8nVVvh/AcPWbXlmCxQMX6HolZBA4
 mELdS07lBwQMsGuk=;
Received: from szxga08-in.huawei.com ([45.249.212.255])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oq9XD-009BPC-2g for jfs-discussion@lists.sourceforge.net;
 Wed, 02 Nov 2022 08:55:47 +0000
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.53])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4N2LM64N6fz15MCj;
 Wed,  2 Nov 2022 16:55:30 +0800 (CST)
Received: from dggpemm100009.china.huawei.com (7.185.36.113) by
 dggpemm500024.china.huawei.com (7.185.36.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 16:55:33 +0800
Received: from huawei.com (10.175.113.32) by dggpemm100009.china.huawei.com
 (7.185.36.113) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Wed, 2 Nov
 2022 16:55:33 +0800
To: Dave Kleikamp <shaggy@kernel.org>
Date: Wed, 2 Nov 2022 17:43:48 +0800
Message-ID: <20221102094348.2048443-1-liushixin2@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.32]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemm100009.china.huawei.com (7.185.36.113)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzkaller reported a bug: BUG at fs/jfs/jfs_dmap.c:2984
 assert(bitno
 < 32) Since we increased bitno before check (mask != 0) in the loop, the
 value can reach 32. Modify the assert condition to (bitno <= 32) to fix it.
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.255 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1oq9XD-009BPC-2g
X-Mailman-Approved-At: Wed, 02 Nov 2022 13:39:50 +0000
Subject: [Jfs-discussion] [PATCH] fs/jfs: fix assert failed in dbFindBits()
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
From: Liu Shixin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Liu Shixin <liushixin2@huawei.com>
Cc: Liu Shixin <liushixin2@huawei.com>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzkaller reported a bug:

 BUG at fs/jfs/jfs_dmap.c:2984 assert(bitno < 32)

Since we increased bitno before check (mask != 0) in the loop, the value
can reach 32. Modify the assert condition to (bitno <= 32) to fix it.

Reported-by: syzbot+c6357942fbe0fce51c76@syzkaller.appspotmail.com
Signed-off-by: Liu Shixin <liushixin2@huawei.com>
---
 fs/jfs/jfs_dmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 6b838d3ae7c2..7bd57728edf3 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2981,7 +2981,7 @@ static int dbFindBits(u32 word, int l2nb)
 			break;
 	}
 
-	ASSERT(bitno < 32);
+	ASSERT(bitno <= 32);
 
 	/* return the bit number.
 	 */
-- 
2.25.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
