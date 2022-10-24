Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5C6609864
	for <lists+jfs-discussion@lfdr.de>; Mon, 24 Oct 2022 05:00:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1omnhH-0006z6-89;
	Mon, 24 Oct 2022 03:00:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangqilong3@huawei.com>) id 1omnhE-0006yz-Gu
 for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Oct 2022 03:00:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TdbhGurkwSGIjMbg/Gl6eHsfNzkYEyc8X39S9JN5n4Y=; b=GnCpj8hfbIr6HnX2repZHb8Nep
 v7k9ceD+2at2/6Fm2lC4atBON73n1hGyvDRyvrmwgXejA9Aq0k/53xNRnfGSze9H1dTZMTTjNx6kE
 8YUaRIvqKasxXU08DfLJqFvz99glEXpxy/qmAOudIwmQHN6hWumg45qJUCPOWaZ5p00w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TdbhGurkwSGIjMbg/Gl6eHsfNzkYEyc8X39S9JN5n4Y=; b=G
 aE8XUb/CaaanmYEZsxSE7wxpuXsyZe/HSDUoSRhEY9GZ+aIJRfBJ+LxRPA+h+wuzurAG3MPRp7To6
 q4vcjpIzi+nrt87GGULg/HBiS49wVYw9BtXsOprVJqVTfe6GsxAfETkV2YDfvwla6FAVBMUYnq8rm
 0Or0jIZgUM0Yi8eg=;
Received: from szxga08-in.huawei.com ([45.249.212.255])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1omnhA-00FExM-28 for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Oct 2022 03:00:12 +0000
Received: from dggemv704-chm.china.huawei.com (unknown [172.30.72.53])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4MwfnS5rR9z15M1l;
 Mon, 24 Oct 2022 10:55:08 +0800 (CST)
Received: from kwepemm600014.china.huawei.com (7.193.23.54) by
 dggemv704-chm.china.huawei.com (10.3.19.47) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 24 Oct 2022 10:59:57 +0800
Received: from huawei.com (10.90.53.225) by kwepemm600014.china.huawei.com
 (7.193.23.54) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Mon, 24 Oct
 2022 10:59:57 +0800
To: <shaggy@kernel.org>, <willy@infradead.org>
Date: Mon, 24 Oct 2022 11:05:03 +0800
Message-ID: <20221024030503.41545-1-zhangqilong3@huawei.com>
X-Mailer: git-send-email 2.26.0.106.g9fadedd
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 kwepemm600014.china.huawei.com (7.193.23.54)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot report a bug: UBSAN: array-index-out-of-bounds in
 diWrite.
 We don't check range of lv->offset. I note that it comes from the
 TxLock->lock(an
 overlay area), it call be accessed and updated at ma [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.255 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1omnhA-00FExM-28
Subject: [Jfs-discussion] [PATCH] fs/jfs: Fix array-index-out-of-bounds in
 diWrite
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
From: Zhang Qilong via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Zhang Qilong <zhangqilong3@huawei.com>
Cc: jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot report a bug: UBSAN: array-index-out-of-bounds in diWrite.
We don't check range of lv->offset. I note that it comes from the
TxLock->lock(an overlay area), it call be accessed and updated at
many palces. We havn't checked it when been updated as array index.
We fixed it by simply comparing it with DTPAGEMAXSLOT to avoid this
problem here.

UBSAN: array-index-out-of-bounds in fs/jfs/jfs_imap.c:749:4
index 255 is out of range for type 'struct dtslot [128]'
CPU: 1 PID: 3606 Comm: syz-executor322 Not tainted 6.0.0-syzkaller-09423-g493ffd6605b2 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/11/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_out_of_bounds+0xdb/0x130 lib/ubsan.c:283
 diWrite+0x1311/0x1f80 fs/jfs/jfs_imap.c:749
 txCommit+0xa2e/0x6d40 fs/jfs/jfs_txnmgr.c:1250
 jfs_mkdir+0x911/0xb00 fs/jfs/namei.c:290
 vfs_mkdir+0x3b3/0x590 fs/namei.c:4013
 do_mkdirat+0x279/0x550 fs/namei.c:4038

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Reported-by: syzbot+c1056fdfe414463fdb33@syzkaller.appspotmail.com
Signed-off-by: Zhang Qilong <zhangqilong3@huawei.com>
---
 fs/jfs/jfs_imap.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 799d3837e7c2..7d53c0bc34f9 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -746,8 +746,10 @@ int diWrite(tid_t tid, struct inode *ip)
 		xp = (dtpage_t *) & dp->di_dtroot;
 		lv = ilinelock->lv;
 		for (n = 0; n < ilinelock->index; n++, lv++) {
-			memcpy(&xp->slot[lv->offset], &p->slot[lv->offset],
-			       lv->length << L2DTSLOTSIZE);
+			if (lv->offset < DTPAGEMAXSLOT)
+				memcpy(&xp->slot[lv->offset],
+				       &p->slot[lv->offset],
+				       lv->length << L2DTSLOTSIZE);
 		}
 	} else {
 		jfs_err("diWrite: UFO tlock");
-- 
2.25.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
