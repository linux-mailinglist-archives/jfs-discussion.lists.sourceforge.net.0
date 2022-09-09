Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE3E5B389B
	for <lists+jfs-discussion@lfdr.de>; Fri,  9 Sep 2022 15:07:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oWdic-0008JA-Ap;
	Fri, 09 Sep 2022 13:06:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <cuigaosheng1@huawei.com>) id 1oWXqr-0002Dp-QW
 for jfs-discussion@lists.sourceforge.net;
 Fri, 09 Sep 2022 06:51:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IjvRVqotVXPfZd9ZWAmeZyN6vnFNspcvGSxA9E9t8zA=; b=msNGJFTG3CoHQMWRHYUiRHacQe
 7ig6hRRNsAmKb9GR09cPSjNRd/CKQ2tUB4tQ7mTTEpfwHrcHeq2HbkzzDMl9W6t0I93h2jyfFP3Kv
 4JRILJtVbhtTBCTSnFFMPOdvHb8qm8vaiE7LO032Tq2NPx+JIKe9zmiGw+IW23W2kMPg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IjvRVqotVXPfZd9ZWAmeZyN6vnFNspcvGSxA9E9t8zA=; b=i
 qjK8q0qe3k/XYX2B9xTfIN5CTGZaxipJIBGpp6HczpkEeSqsy5xzV18UdZj2KzTySareC4XbEdli9
 8Ka6nBqr+KQoqrtPd/8M21Qtqfowk8u9nI9u9iqHopcdihfazfS6VdMMQqZ+FE/09pO8DUELQVr4A
 bPRtOnj5IrtEiPkI=;
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oWXr2-0000dw-7N for jfs-discussion@lists.sourceforge.net;
 Fri, 09 Sep 2022 06:51:09 +0000
Received: from kwepemi500012.china.huawei.com (unknown [172.30.72.54])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4MP65K0Kq7znVDq;
 Fri,  9 Sep 2022 14:48:21 +0800 (CST)
Received: from cgs.huawei.com (10.244.148.83) by
 kwepemi500012.china.huawei.com (7.221.188.12) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Fri, 9 Sep 2022 14:50:56 +0800
To: <shaggy@kernel.org>, <dave.kleikamp@oracle.com>, <cuigaosheng1@huawei.com>
Date: Fri, 9 Sep 2022 14:50:55 +0800
Message-ID: <20220909065055.1154080-1-cuigaosheng1@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.244.148.83]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 kwepemi500012.china.huawei.com (7.221.188.12)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  extRealloc(), xtRelocate(), xtDelete() and extFill() have
 been removed since commit e471e5942c00 ("fs/jfs: Remove dead code"), so remove
 them. Signed-off-by: Gaosheng Cui <cuigaosheng1@huawei.com> ---
 fs/jfs/jfs_extent.h
 | 2 -- fs/jfs/jfs_xtree.h | 4 ---- 2 files changed, 6 deletions(-) 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1oWXr2-0000dw-7N
X-Mailman-Approved-At: Fri, 09 Sep 2022 13:06:49 +0000
Subject: [Jfs-discussion] [PATCH] jfs: remove unused declarations for jfs
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
From: Gaosheng Cui via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Gaosheng Cui <cuigaosheng1@huawei.com>
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

extRealloc(), xtRelocate(), xtDelete() and extFill() have been
removed since commit e471e5942c00 ("fs/jfs: Remove dead code"),
so remove them.

Signed-off-by: Gaosheng Cui <cuigaosheng1@huawei.com>
---
 fs/jfs/jfs_extent.h | 2 --
 fs/jfs/jfs_xtree.h  | 4 ----
 2 files changed, 6 deletions(-)

diff --git a/fs/jfs/jfs_extent.h b/fs/jfs/jfs_extent.h
index 1c984214e95e..a0ee4ccea66e 100644
--- a/fs/jfs/jfs_extent.h
+++ b/fs/jfs/jfs_extent.h
@@ -10,9 +10,7 @@
 	(addressPXD(&(JFS_IP(ip)->ixpxd)) + lengthPXD(&(JFS_IP(ip)->ixpxd)) - 1)
 
 extern int	extAlloc(struct inode *, s64, s64, xad_t *, bool);
-extern int	extFill(struct inode *, xad_t *);
 extern int	extHint(struct inode *, s64, xad_t *);
-extern int	extRealloc(struct inode *, s64, xad_t *, bool);
 extern int	extRecord(struct inode *, xad_t *);
 
 #endif	/* _H_JFS_EXTENT */
diff --git a/fs/jfs/jfs_xtree.h b/fs/jfs/jfs_xtree.h
index 142caafc73b1..ad7592191d76 100644
--- a/fs/jfs/jfs_xtree.h
+++ b/fs/jfs/jfs_xtree.h
@@ -96,12 +96,8 @@ extern int xtInsert(tid_t tid, struct inode *ip,
 extern int xtExtend(tid_t tid, struct inode *ip, s64 xoff, int xlen,
 		    int flag);
 extern int xtUpdate(tid_t tid, struct inode *ip, struct xad *nxad);
-extern int xtDelete(tid_t tid, struct inode *ip, s64 xoff, int xlen,
-		    int flag);
 extern s64 xtTruncate(tid_t tid, struct inode *ip, s64 newsize, int type);
 extern s64 xtTruncate_pmap(tid_t tid, struct inode *ip, s64 committed_size);
-extern int xtRelocate(tid_t tid, struct inode *ip,
-		      xad_t * oxad, s64 nxaddr, int xtype);
 extern int xtAppend(tid_t tid,
 		    struct inode *ip, int xflag, s64 xoff, int maxblocks,
 		    int *xlenp, s64 * xaddrp, int flag);
-- 
2.25.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
