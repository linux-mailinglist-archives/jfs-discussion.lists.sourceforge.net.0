Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1FF39DD0E
	for <lists+jfs-discussion@lfdr.de>; Mon,  7 Jun 2021 14:56:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lqEnV-0005yx-GU; Mon, 07 Jun 2021 12:56:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <paskripkin@gmail.com>) id 1lq68N-0001Vf-2W
 for jfs-discussion@lists.sourceforge.net; Mon, 07 Jun 2021 03:41:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=71LYe/9A82MU2U7qpPvvSHYKFsAW4OvM56Zk359MIrE=; b=C7UTrfZWjujfnfSEGtghDByGL2
 ulPYyfKvthc0YY9Ll1wrg9e68qvF0oLXtIvNf09fNrSwFJ5U2aSwe6sDqmcHRc5KKXtoThG9tCPzL
 Av+738Y5fOakI5s3O2qQIiyyZ42CSkPPHEQSrf3Gx/1IvnMJ5M0bm9V4pKShfzntwbLI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=71LYe/9A82MU2U7qpPvvSHYKFsAW4OvM56Zk359MIrE=; b=M
 WhincP0YOG7bjUNrrMOkstRPlDnglfpyM3h/bFkOmza1HlXxYtRa4jgu/r0NKAx0axc78bWRLLTjX
 slDj575E3oIOkbe8vk7GoyqNNuUzrlOIYVLpFMRYcMuDIXVRuGDEahHDMiePUkKz54qy6dEpOfET3
 2pFyooULSGJLZGnQ=;
Received: from mail-ed1-f52.google.com ([209.85.208.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lq68J-00C9ba-4Z
 for jfs-discussion@lists.sourceforge.net; Mon, 07 Jun 2021 03:41:06 +0000
Received: by mail-ed1-f52.google.com with SMTP id s6so18501024edu.10
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 06 Jun 2021 20:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=71LYe/9A82MU2U7qpPvvSHYKFsAW4OvM56Zk359MIrE=;
 b=sxsV2lDPjxm4rvvIyT6R4nzVWwrDWizDZ9JbyRR9r0/WFPKVTEmRT43fR7XipKAoG1
 a5lvavxO9k6HDVFTNduSiseLn+DHYUFiUv4QRNauiXuVD5cq/ZJLjiOHo1ZDMMzLE2p7
 WINNstmSUvu78qWkAkqCl9oRM0M2fuM/JWFo0K0mK1ciMw6qwfIozy/5a+++ynz70AQH
 gvnVbAFmg5Ikmm2qVJUZuKZwvYR1CjAMZRhDLWwloqAjUgQg0DNJ9AJhGKw8y4mmqCeE
 ahwKDQSSR9YQa8dqjBlMOAv8MKcLxnl+3e5fEC8iNFPpUVVLTd+ZQ9Y+fSB64ldNM6yB
 yMLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=71LYe/9A82MU2U7qpPvvSHYKFsAW4OvM56Zk359MIrE=;
 b=L6anCFqDswfLTUspJ9cweRaUCXiNnHF0R7lEp8Lw064p50v1+KiwsBx6hehYiqHqS7
 LiqaqCfwgZjswCjUCvWvGDa86+dEdRUKHe21g9Sgoc19kacl9aLJAxNe6Ts8GuoZJlcW
 +tjLcrHiPfpPMbs2O/yHzjPcBJ9G/OSLHgfDtUe9BE4m11fjzakmfe2Nwg1yPOKrSKHv
 uKO8/4ALOb8m5s2/56a223c0lKzoEqwGe/H++Wcn7nwmqllcu2eNmsxdhec2QHE0vQXt
 lr79CTKYo2pWbtU17h+MKPQVpZNtW3mi2geH6EQAtg0iwcCW+z/N3rlytgj1Homz6i51
 BUKA==
X-Gm-Message-State: AOAM531XIqinfVzxlTcPNDd4slRxHsde+/szi433KWngfazpsQk0Srpw
 joMAqAxLMxQ6q3X+gYIiUnDZdAzWCBY=
X-Google-Smtp-Source: ABdhPJw+HSSEZKmMYJUwrSg0m17VXA1KbfJRlAdJOMKvv3IOKFFnhkxjdA5f5v6fB9KPo4S5+2CLGg==
X-Received: by 2002:a05:651c:1132:: with SMTP id
 e18mr10955679ljo.386.1622989449190; 
 Sun, 06 Jun 2021 07:24:09 -0700 (PDT)
Received: from localhost.localdomain ([94.103.224.40])
 by smtp.gmail.com with ESMTPSA id o19sm1163910lfd.22.2021.06.06.07.24.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Jun 2021 07:24:08 -0700 (PDT)
From: Pavel Skripkin <paskripkin@gmail.com>
To: shaggy@kernel.org
Date: Sun,  6 Jun 2021 17:24:05 +0300
Message-Id: <20210606142405.31047-1-paskripkin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.52 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (paskripkin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.52 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lq68J-00C9ba-4Z
X-Mailman-Approved-At: Mon, 07 Jun 2021 12:56:04 +0000
Subject: [Jfs-discussion] [PATCH] jfs: fix GPF in diFree
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
Cc: Pavel Skripkin <paskripkin@gmail.com>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org,
 syzbot+0a89a7b56db04c21a656@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Avoid passing inode with
JFS_SBI(inode->i_sb)->ipimap == NULL to
diFree()[1]. GFP will appear:

	struct inode *ipimap = JFS_SBI(ip->i_sb)->ipimap;
	struct inomap *imap = JFS_IP(ipimap)->i_imap;

JFS_IP() will return invalid pointer when ipimap == NULL

Call Trace:
 diFree+0x13d/0x2dc0 fs/jfs/jfs_imap.c:853 [1]
 jfs_evict_inode+0x2c9/0x370 fs/jfs/inode.c:154
 evict+0x2ed/0x750 fs/inode.c:578
 iput_final fs/inode.c:1654 [inline]
 iput.part.0+0x3fe/0x820 fs/inode.c:1680
 iput+0x58/0x70 fs/inode.c:1670

Reported-and-tested-by: syzbot+0a89a7b56db04c21a656@syzkaller.appspotmail.com
Signed-off-by: Pavel Skripkin <paskripkin@gmail.com>
---
 fs/jfs/inode.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
index 6f65bfa9f18d..b0eb9c85eea0 100644
--- a/fs/jfs/inode.c
+++ b/fs/jfs/inode.c
@@ -151,7 +151,8 @@ void jfs_evict_inode(struct inode *inode)
 			if (test_cflag(COMMIT_Freewmap, inode))
 				jfs_free_zero_link(inode);
 
-			diFree(inode);
+			if (JFS_SBI(inode->i_sb)->ipimap)
+				diFree(inode);
 
 			/*
 			 * Free the inode from the quota allocation.
-- 
2.31.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
