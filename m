Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B058F5769D2
	for <lists+jfs-discussion@lfdr.de>; Sat, 16 Jul 2022 00:23:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oCTha-00034o-Mg; Fri, 15 Jul 2022 22:22:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <13667453960@163.com>) id 1oBpHk-00044h-Uw
 for jfs-discussion@lists.sourceforge.net; Thu, 14 Jul 2022 03:13:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=npQPiA96mmh8pN2HAtBmFsXOD7TFeizPkB3sUnXQWW4=; b=WIGCdgnJsxfCunaaJUukg34V2T
 J4FU1ZeSdKU1Bj6eh5pVOfDdVwXigdv2Yz5I4zW8YoXtmck0wySa44gJUvjEHlZCrc/kZJ6lv3DRd
 FNXQaHN7xrSka+gV1H5KNc7bMsxoqqyhN6Sb+YEmIcXRsQI+YUS9WhkuzKSmsJExgdJE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=npQPiA96mmh8pN2HAtBmFsXOD7TFeizPkB3sUnXQWW4=; b=k
 xE4z4EExZdKJWKqT8fYKPVX2mT5BIow1wgIqGwZe6B0JinQzgHPkAonyFgbCg7Fci9scMQi3zrw4+
 dAMDyonB5nDcw4MLlz1VV+lCuQsjvP9WmgsPigRmdw/b06rcZUaaDXLBddQebrF93BOW4iYMIxfM1
 I5bsyrGTXmVwsOoc=;
Received: from m12-11.163.com ([220.181.12.11])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1oBpHk-0006J8-7z
 for jfs-discussion@lists.sourceforge.net; Thu, 14 Jul 2022 03:13:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=npQPi
 A96mmh8pN2HAtBmFsXOD7TFeizPkB3sUnXQWW4=; b=bQIN9eAzmIYLr8wsVe5KG
 KJEU6io86oErv6NrY/c7L+t1bp+ZokgdIifVWg4KXA5vKScES+RG/NSTjvcArA3E
 VQbW6cY27I3LIwaq39xHfmSclxswsOmqJAwcmA2ZXWog4dXP3TrnQ0qxp7ZD3o2q
 Aks8Pzftk7a4MYCD/3/0OU=
Received: from localhost.localdomain (unknown [111.48.58.12])
 by smtp7 (Coremail) with SMTP id C8CowAAHg6kDhs9iLvqQNQ--.56871S2;
 Thu, 14 Jul 2022 10:57:17 +0800 (CST)
From: Jiangshan Yi <13667453960@163.com>
To: shaggy@kernel.org
Date: Thu, 14 Jul 2022 10:56:56 +0800
Message-Id: <20220714025656.1685439-1-13667453960@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: C8CowAAHg6kDhs9iLvqQNQ--.56871S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Cr1fWr4kWw1xXr48ur47CFg_yoW8Gr4fpF
 ykCr4fGF95Gr1UX3Z7Wr4kX3WIga4vyayIqrW8Zr12vr9Yqw1ftF13tFyYgayFvF4xX3yj
 qF4DuryfXr1DJr7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07js6p9UUUUU=
X-Originating-IP: [111.48.58.12]
X-CM-SenderInfo: bprtllyxuvjmiwq6il2tof0z/xtbBAg4++2B0Ij99lgAAsr
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Jiangshan Yi Fix the following coccicheck warning:
 fs/jfs/super.c:748:
 WARNING opportunity for min(). fs/jfs/super.c:788: WARNING opportunity for
 min(). Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FROM_LOCAL_DIGITS      From: localpart has long digit sequence
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [220.181.12.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [220.181.12.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [13667453960[at]163.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [13667453960[at]163.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oBpHk-0006J8-7z
X-Mailman-Approved-At: Fri, 15 Jul 2022 22:22:26 +0000
Subject: [Jfs-discussion] [PATCH] fs/jfs: replace ternary operator with
 min_t()
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Jiangshan Yi <yijiangshan@kylinos.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Jiangshan Yi <yijiangshan@kylinos.cn>

Fix the following coccicheck warning:

fs/jfs/super.c:748: WARNING opportunity for min().
fs/jfs/super.c:788: WARNING opportunity for min().

min_t() macro is defined in include/linux/minmax.h. It avoids
multiple evaluations of the arguments when non-constant and performs
strict type-checking.

Signed-off-by: Jiangshan Yi <yijiangshan@kylinos.cn>
---
 fs/jfs/super.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/fs/jfs/super.c b/fs/jfs/super.c
index 85d4f44f2ac4..d2f82cb7db1b 100644
--- a/fs/jfs/super.c
+++ b/fs/jfs/super.c
@@ -745,8 +745,7 @@ static ssize_t jfs_quota_read(struct super_block *sb, int type, char *data,
 		len = i_size-off;
 	toread = len;
 	while (toread > 0) {
-		tocopy = sb->s_blocksize - offset < toread ?
-				sb->s_blocksize - offset : toread;
+		tocopy = min_t(size_t, sb->s_blocksize - offset, toread);
 
 		tmp_bh.b_state = 0;
 		tmp_bh.b_size = i_blocksize(inode);
@@ -785,8 +784,7 @@ static ssize_t jfs_quota_write(struct super_block *sb, int type,
 
 	inode_lock(inode);
 	while (towrite > 0) {
-		tocopy = sb->s_blocksize - offset < towrite ?
-				sb->s_blocksize - offset : towrite;
+		tocopy = min_t(size_t, sb->s_blocksize - offset, towrite);
 
 		tmp_bh.b_state = 0;
 		tmp_bh.b_size = i_blocksize(inode);
-- 
2.25.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
