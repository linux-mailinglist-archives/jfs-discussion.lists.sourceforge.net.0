Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10056985A48
	for <lists+jfs-discussion@lfdr.de>; Wed, 25 Sep 2024 14:06:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1stQnA-00046D-DN;
	Wed, 25 Sep 2024 12:06:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1stQn8-00045z-UM
 for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Sep 2024 12:06:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZN7CX1MKeZ8MSGd/EMEWGvNwzIHjoIfiObZ1FpoDQ1E=; b=S0eEG9NCJrshbxuM+c/kq09prt
 54WOn9QEoX0EK6AIXVzzABBpcyCSnsX4TfW6SDJu1Zd6XOjnQRZt9WZvuVopMVbxv1L4jlg/LisCx
 TxNWlzoFJ31srrIeuNw8EH2bmUHKQw5H3+Bu3tnkGUV0DsMeka8xOSi0t1Qb8ujjdYpE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZN7CX1MKeZ8MSGd/EMEWGvNwzIHjoIfiObZ1FpoDQ1E=; b=Rw8TZaBAVKq8Fe3s4Ry2/Xu30P
 lXnPLiA8RKmt9I8rWzuGNDmgU0Prf/gtKN9b6iBSImvQvmg/vjWYkYPkd25MirHWagkUqaRMTr+Hh
 5ha1WO4NitCnjoiltL38FSsE8MCviIe02Pha6KWkPnHj+eIUB/OQWpvlXvKzQH1PudNg=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1stQmz-00066x-K8 for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Sep 2024 12:06:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id DB523A440F7;
 Wed, 25 Sep 2024 12:06:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 463A1C4CEC7;
 Wed, 25 Sep 2024 12:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1727265991;
 bh=EO3zMFmMKBLdYWvuMS3VyKOlAkOlRsoa9ugS8Fsa7MM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NQ6j/bfyXJcp0d4tsoLZfV5ZJKYL/W3adW2fYFW/pYGWmEldWU+jS7cPJwgZEoZdV
 /AnoEFONTne2wXYE+2yhST+tcqIk2at3IumYZjQ8bHX8z+FdobGftKUUbBfisA5g8a
 kF+0U5hnHJxf5w1K0EpSIBC3dtRgNDVOZtYBu+FiHHXaDqMd3uidoEhvUofFDf7jb4
 fkEnbXiCmxLzk/hssI0NwZvG7/nMsgz/1Ac81NJPzwzSamQBV0RkvHQsoDSKQa1ALU
 4h4dB4oylQSFXyv3d6USQC2ri5zVd9v8BE0PdJAqmijOeZ18NkqkOM/iC1ioQnamyy
 gW0xSdNL7dUEg==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Wed, 25 Sep 2024 07:52:40 -0400
Message-ID: <20240925115823.1303019-141-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240925115823.1303019-1-sashal@kernel.org>
References: <20240925115823.1303019-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.10.11
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Zhao Mengmeng <zhaomengmeng@kylinos.cn> [ Upstream
 commit
 2b59ffad47db1c46af25ccad157bb3b25147c35c ] syzbot reports that
 lzo1x_1_do_compress is using uninit-value: 
 Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1stQmz-00066x-K8
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.10 141/197] jfs: Fix uninit-value
 access of new_ea in ea_buffer
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
 jfs-discussion@lists.sourceforge.net, gregkh@linuxfoundation.org,
 syzbot+02341e0daa42a15ce130@syzkaller.appspotmail.com, walmeida@microsoft.com,
 Zhao Mengmeng <zhaomengmeng@kylinos.cn>, llfamsec@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Zhao Mengmeng <zhaomengmeng@kylinos.cn>

[ Upstream commit 2b59ffad47db1c46af25ccad157bb3b25147c35c ]

syzbot reports that lzo1x_1_do_compress is using uninit-value:

=====================================================
BUG: KMSAN: uninit-value in lzo1x_1_do_compress+0x19f9/0x2510 lib/lzo/lzo1x_compress.c:178

...

Uninit was stored to memory at:
 ea_put fs/jfs/xattr.c:639 [inline]

...

Local variable ea_buf created at:
 __jfs_setxattr+0x5d/0x1ae0 fs/jfs/xattr.c:662
 __jfs_xattr_set+0xe6/0x1f0 fs/jfs/xattr.c:934

=====================================================

The reason is ea_buf->new_ea is not initialized properly.

Fix this by using memset to empty its content at the beginning
in ea_get().

Reported-by: syzbot+02341e0daa42a15ce130@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=02341e0daa42a15ce130
Signed-off-by: Zhao Mengmeng <zhaomengmeng@kylinos.cn>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/xattr.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/jfs/xattr.c b/fs/jfs/xattr.c
index 2999ed5d83f5e..0fb05e314edf6 100644
--- a/fs/jfs/xattr.c
+++ b/fs/jfs/xattr.c
@@ -434,6 +434,8 @@ static int ea_get(struct inode *inode, struct ea_buffer *ea_buf, int min_size)
 	int rc;
 	int quota_allocation = 0;
 
+	memset(&ea_buf->new_ea, 0, sizeof(ea_buf->new_ea));
+
 	/* When fsck.jfs clears a bad ea, it doesn't clear the size */
 	if (ji->ea.flag == 0)
 		ea_size = 0;
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
