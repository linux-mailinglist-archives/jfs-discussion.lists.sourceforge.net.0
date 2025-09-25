Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8E7B9D957
	for <lists+jfs-discussion@lfdr.de>; Thu, 25 Sep 2025 08:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=f7fO8jA8A4MXRExA4hlBJPGdNEO6dy6EfLN91ki6YEQ=; b=NYMryHrU4Vv0Awg82rh2emnhC/
	ZmjmGobcdSpwFkk8XNRW3ZlSsR+PJPGAKrcbjHtljor4auFhEUTk9tkcgMjZwEQnBZszXDlxyI6VD
	ArE7hU3U+cVe5Qb4IAQvr5m76tYDIGRwvKmnnBMkT56tAbFveXTbOpRrDh2xg9pDP57o=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v1fSs-0003AP-50;
	Thu, 25 Sep 2025 06:28:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmantipov@yandex.ru>) id 1v1fSr-0003AJ-60
 for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Sep 2025 06:28:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T75oiAwy/VlNJgMklF8cNSFJ1GtzEfirzK6u+YaZeY4=; b=XoXvqmXQ3Aw8+aE+fHsmN6hV4q
 ZVNDzI3XdLiWMr3d2GesehjPycEte9j9sCX1xMl82vmYdOU5A6ggTRaW0KId80Z5p9WKH/BgWbT+4
 AJ3GsISV3cBTWCb9Fta3ofdfRkXOgFugjX8Qy6OqWVZFfjCbamKtlo8aoFEKG8M7rF1g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=T75oiAwy/VlNJgMklF8cNSFJ1GtzEfirzK6u+YaZeY4=; b=B
 DqsgUplyq77K8fwz5hg3Cua9DBQklp9gLKunwks36+x9ApUU+hvbjzgxzpvQyDyYuDLON47+/qFpC
 swQZcuLO8Oem6MIHmRJzTIwGse9tf92Xq/1Ins+btl533tkc28ZdgUNkneaB3sp3JPGydp3Bbb2v1
 zbIMWv6CItWPOicc=;
Received: from forward101b.mail.yandex.net ([178.154.239.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v1fSq-000877-9i for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Sep 2025 06:28:25 +0000
Received: from mail-nwsmtp-smtp-production-main-73.sas.yp-c.yandex.net
 (mail-nwsmtp-smtp-production-main-73.sas.yp-c.yandex.net
 [IPv6:2a02:6b8:c37:7521:0:640:a008:0])
 by forward101b.mail.yandex.net (Yandex) with ESMTPS id 00F22C009E;
 Thu, 25 Sep 2025 09:28:16 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-73.sas.yp-c.yandex.net
 (smtp/Yandex) with ESMTPSA id ESSTniWLoqM0-n8oCt7Yj; 
 Thu, 25 Sep 2025 09:28:15 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1758781695; bh=T75oiAwy/VlNJgMklF8cNSFJ1GtzEfirzK6u+YaZeY4=;
 h=Message-ID:Date:Cc:Subject:To:From;
 b=chqDbTVz9j1oV0WRWJU7eIFWjbncBQU7NiDW4ilq5Je7uYoirxoyGiKzmTu1GaD8u
 +8M3OHaiOtUC/WzEDjkGz1K5MS+V+8wC9M9lxkTxgIWUyYH+fpcQZYzef6oUF8Wus1
 jfXt9T9aA3eShEJIn0IJXfEHofaiQjwThDqSGM50=
Authentication-Results: mail-nwsmtp-smtp-production-main-73.sas.yp-c.yandex.net;
 dkim=pass header.i=@yandex.ru
To: Dave Kleikamp <shaggy@kernel.org>
Date: Thu, 25 Sep 2025 09:25:39 +0300
Message-ID: <20250925062539.27401-1-dmantipov@yandex.ru>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Since the directory root page contains no more than 9 page
 slots, index table values larger than 8 should be considered as invalid.
 Doing an extra check in 'add_missing_indices()' prevents from the we [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [dmantipov(at)yandex.ru]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [178.154.239.148 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1v1fSq-000877-9i
Subject: [Jfs-discussion] [PATCH] jfs: validate index table entry in
 add_missing_indices()
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
From: Dmitry Antipov via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dmitry Antipov <dmantipov@yandex.ru>
Cc: jfs-discussion@lists.sourceforge.net, Dmitry Antipov <dmantipov@yandex.ru>,
 syzbot+dcc068159182a4c31ca3@syzkaller.appspotmail.com,
 lvc-project@linuxtesting.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Since the directory root page contains no more than 9 page slots,
index table values larger than 8 should be considered as invalid.
Doing an extra check in 'add_missing_indices()' prevents from the
weird crash caused by overwriting an inode data with a bogus value
interpreted as a pointer outside of a kernel address space.

Reported-by: syzbot+dcc068159182a4c31ca3@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
Signed-off-by: Dmitry Antipov <dmantipov@yandex.ru>
---
 fs/jfs/jfs_dtree.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index ab11849cf9cc..326cf547df12 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -2647,7 +2647,8 @@ static int add_missing_indices(struct inode *inode, s64 bn)
 
 	stbl = DT_GETSTBL(p);
 	for (i = 0; i < p->header.nextindex; i++) {
-		if (stbl[i] < 0) {
+		if ((stbl[i] < 0) ||
+		    ((p->header.flag & BT_ROOT) && stbl[i] > 8)) {
 			jfs_err("jfs: add_missing_indices: Invalid stbl[%d] = %d for inode %ld, block = %lld",
 				i, stbl[i], (long)inode->i_ino, (long long)bn);
 			rc = -EIO;
-- 
2.51.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
