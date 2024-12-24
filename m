Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 222C39FBF75
	for <lists+jfs-discussion@lfdr.de>; Tue, 24 Dec 2024 16:10:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tQ6Xc-00082p-UO;
	Tue, 24 Dec 2024 15:09:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kovalev@altlinux.org>) id 1tQ6T8-0007yE-Ax
 for jfs-discussion@lists.sourceforge.net;
 Tue, 24 Dec 2024 15:05:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9F74pcY0BF7nPaihBPtQ1ueJtmXoaroNb4USp6+Muqo=; b=Bq0Wwet3r6HknkQVdA4DMHLcyq
 VNlPlNRiKVkRviV0xFxiOGvzSylOJbf3e5ut2kAOxzN7Vnt1SETMiVrbX2+MJiF8Q1f7nSYL5CtL7
 P9ryNSKSXIo7gtBth0NJ86irVzlpci1B82OgQwjH32EN9c2tl8B8NRvf5YgrPd0OTFG8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9F74pcY0BF7nPaihBPtQ1ueJtmXoaroNb4USp6+Muqo=; b=d15k6+L/HXcC/qWk/M0trMd4BJ
 zhUXiWIXXI/5kUAk/NZY0od5v4HO46QYUufnW1AFPXn2MjDiv/GkIIoSid2kdUxnhOIcgmoP050B7
 rDz3XyL8/iHzbEbnCbBUf2y4BMbF2qhWPFsqe98SWwp9VAeWSjIDPvNFnXwizTLZyEGM=;
Received: from air.basealt.ru ([193.43.8.18])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tQ6T7-00028M-6y for jfs-discussion@lists.sourceforge.net;
 Tue, 24 Dec 2024 15:05:10 +0000
Received: from altlinux.ipa.basealt.ru (unknown [178.76.204.78])
 by air.basealt.ru (Postfix) with ESMTPSA id 9A035233B5;
 Tue, 24 Dec 2024 17:49:29 +0300 (MSK)
From: Vasiliy Kovalev <kovalev@altlinux.org>
To: Dave Kleikamp <shaggy@kernel.org>, Josef Bacik <josef@toxicpanda.com>,
 Matthew Wilcox <willy@infradead.org>,
 Christian Brauner <brauner@kernel.org>,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Tue, 24 Dec 2024 17:49:14 +0300
Message-Id: <20241224144914.976419-3-kovalev@altlinux.org>
X-Mailer: git-send-email 2.33.8
In-Reply-To: <20241224144914.976419-1-kovalev@altlinux.org>
References: <20241224144914.976419-1-kovalev@altlinux.org>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Added a check for "read-only" mode in the
 `jfs_truncate_nolock`
 function to avoid errors related to writing to a read-only filesystem. Call
 stack: block_write_begin() { jfs_write_failed() { jfs_truncate() {
 jfs_truncate_nolock()
 { txEnd() { ... log = JFS_SBI(tblk->sb)->log; // (log == NULL) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [193.43.8.18 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [193.43.8.18 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1tQ6T7-00028M-6y
X-Mailman-Approved-At: Tue, 24 Dec 2024 15:09:45 +0000
Subject: [Jfs-discussion] [PATCH 2/2] jfs: add check read-only before
 truncation in jfs_truncate_nolock()
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
Cc: syzbot+4e89b5368baba8324e07@syzkaller.appspotmail.com,
 lvc-project@linuxtesting.org, kovalev@altlinux.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Added a check for "read-only" mode in the `jfs_truncate_nolock`
function to avoid errors related to writing to a read-only
filesystem.

Call stack:

block_write_begin() {
  jfs_write_failed() {
    jfs_truncate() {
      jfs_truncate_nolock() {
        txEnd() {
          ...
          log = JFS_SBI(tblk->sb)->log;
          // (log == NULL)

If the `isReadOnly(ip)` condition is triggered in
`jfs_truncate_nolock`, the function execution will stop, and no
further data modification will occur. Instead, the `xtTruncate`
function will be called with the "COMMIT_WMAP" flag, preventing
modifications in "read-only" mode.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Reported-by: syzbot+4e89b5368baba8324e07@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?extid=4e89b5368baba8324e07
Signed-off-by: Vasiliy Kovalev <kovalev@altlinux.org>
---
 fs/jfs/inode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
index 07cfdc4405968b..60fc92dee24d20 100644
--- a/fs/jfs/inode.c
+++ b/fs/jfs/inode.c
@@ -369,7 +369,7 @@ void jfs_truncate_nolock(struct inode *ip, loff_t length)
 
 	ASSERT(length >= 0);
 
-	if (test_cflag(COMMIT_Nolink, ip)) {
+	if (test_cflag(COMMIT_Nolink, ip) || isReadOnly(ip)) {
 		xtTruncate(0, ip, length, COMMIT_WMAP);
 		return;
 	}
-- 
2.33.8



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
