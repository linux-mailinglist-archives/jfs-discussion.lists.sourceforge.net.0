Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D1D602719
	for <lists+jfs-discussion@lfdr.de>; Tue, 18 Oct 2022 10:37:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oki5w-0004uw-T9;
	Tue, 18 Oct 2022 08:37:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dzm91@hust.edu.cn>) id 1oki5c-0004uO-Dm
 for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Oct 2022 08:36:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/mmQwH/x1B4zRHbNgT0WkSQvGVs3Fa05Qj9slVfbBhk=; b=RjSKc94kw+BrtxtWVY+2t0nR5v
 TzSmkSpqNg6FbZPNnjfAoyQEneHIGVsMSvAaTgmfSLlA23V7c7nF1J714zct5DCH7P4KiDLnBr365
 j18oZmBcGNV0mR99s4XPmlCtqAzjfq8uZfwieCH9LqRqa0h+FeH2OMseMW5aFHPHYNzo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/mmQwH/x1B4zRHbNgT0WkSQvGVs3Fa05Qj9slVfbBhk=; b=M
 hG7h4EeB9xviHcA7/tYI11JH+wNGs4atUUA6IuyV6v3ds8MAzqQJi/ZT4uMp3Z8e6n9u4AX5kgfMX
 bqV/dlcq+zhoaa69dI2FKRfdAQVhHW7/wD5Mp3KPm0/sBCof/uA7nShH26T3wIzmUB5yW0dVqCWeE
 rx8Ob+25O5wEpdXg=;
Received: from mail.hust.edu.cn ([202.114.0.240] helo=hust.edu.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oki5b-0004Fe-70 for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Oct 2022 08:36:44 +0000
Received: from localhost.localdomain ([172.16.0.254])
 (user=dzm91@hust.edu.cn mech=LOGIN bits=0)
 by mx1.hust.edu.cn  with ESMTP id 29I8ZX7A019933-29I8ZX7D019933
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 18 Oct 2022 16:35:54 +0800
From: Dongliang Mu <dzm91@hust.edu.cn>
To: Dave Kleikamp <shaggy@kernel.org>, Dongliang Mu <dzm91@hust.edu.cn>,
 Zixuan Fu <r33s3n6@gmail.com>, Pavel Skripkin <paskripkin@gmail.com>
Date: Tue, 18 Oct 2022 16:33:43 +0800
Message-Id: <20221018083346.855584-1-dzm91@hust.edu.cn>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-FEAS-AUTH-USER: dzm91@hust.edu.cn
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The previous commit 920f4b7e923b ("fs: jfs: fix
 shift-out-of-bounds
 in dbAllocAG") incorrectly uses MAXMAPSIZE - L2MAXAG as upper bound to limit
 bmp->db_agl2size. The right value should be L2MAXL2SIZE [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-Headers-End: 1oki5b-0004Fe-70
Subject: [Jfs-discussion] [PATCH] fs: jfs: use the correct value to do
 sanity check
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
Cc: jfs-discussion@lists.sourceforge.net, kernel test robot <lkp@intel.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The previous commit 920f4b7e923b ("fs: jfs: fix shift-out-of-bounds
in dbAllocAG") incorrectly uses MAXMAPSIZE - L2MAXAG as upper bound to
limit bmp->db_agl2size. The right value should be L2MAXL2SIZE - L2MAXAG,
i.e., 13 + 10*3 - 7 = 36, according to Dave Kleikamp.

Fix this by modifying the upper bound to the correct value.

Reported-by: kernel test robot <lkp@intel.com>
Fixes: 920f4b7e923b ("fs: jfs: fix shift-out-of-bounds in dbAllocAG")
Signed-off-by: Dongliang Mu <dzm91@hust.edu.cn>
---
 fs/jfs/jfs_dmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 962c855631cb..e1cbfbb60303 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -193,7 +193,7 @@ int dbMount(struct inode *ipbmap)
 	bmp->db_agwidth = le32_to_cpu(dbmp_le->dn_agwidth);
 	bmp->db_agstart = le32_to_cpu(dbmp_le->dn_agstart);
 	bmp->db_agl2size = le32_to_cpu(dbmp_le->dn_agl2size);
-	if (bmp->db_agl2size > MAXMAPSIZE - L2MAXAG) {
+	if (bmp->db_agl2size > L2MAXL2SIZE - L2MAXAG) {
 		err = -EINVAL;
 		goto err_release_metapage;
 	}
-- 
2.35.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
