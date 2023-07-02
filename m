Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C79745081
	for <lists+jfs-discussion@lfdr.de>; Sun,  2 Jul 2023 21:39:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qG2u7-0000tO-0H;
	Sun, 02 Jul 2023 19:38:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1qG2u5-0000tF-U4
 for jfs-discussion@lists.sourceforge.net;
 Sun, 02 Jul 2023 19:38:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y2BkEiaGDwgQZR2hvN8q4va1ivrAAlb4NdnZTVDGXko=; b=AO13ysVCeb0zZpXja5RX60rj6p
 5kqUSv4wXAckb7gmHqy7bTFbciuJAHSsUioN9bnpeXwN1e/fntKYqSnAk7PE+TeNYd+XoTIwKf/Gz
 1MTY0UQVXI1Rvg8TJPCRjxqdNnbHT/JL7WaWAXPhjcC4xfs0fkNhKUBTQ/ZuF3kqwR9Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y2BkEiaGDwgQZR2hvN8q4va1ivrAAlb4NdnZTVDGXko=; b=go4zeIH1g5dkET0NaodOdZN59y
 9SO/WUfT/uQWv0BPUKyeFFMYe+eVvSMKL1XBq7Kvq4aIZpdZv1hR7XnOFlHlTDm8uMm1z2dr2d3py
 RfaQgT2QXDeNXZ75Vh/X+L3Z5clHJUyDYFy9WWVpJhrPXUYJvbdWAZLRTCIPfSghqn0w=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qG2u4-004Cal-0b for jfs-discussion@lists.sourceforge.net;
 Sun, 02 Jul 2023 19:38:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8FCA260CA5;
 Sun,  2 Jul 2023 19:38:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62223C433C8;
 Sun,  2 Jul 2023 19:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1688326709;
 bh=fLk1vZb5UsLOtZdH8fzi8Dl5drZopIqCQ/HIXGNMBhQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DniXM4liH5EyCwh8+QGfFxPncH9d1alwNLsWqPdXBz082LCLsvgx+AGr1pz9iPr2d
 Xj/vwCbNwS7vQyORqy28GF4rxwoZCbzw19v3NRwGAuLHZ3rZ7avq6GyYAThdCuI3jV
 xTZ63qs9phVTqfSc5YIFqz5VZ6h10hV4BUPkJ/HNlMSm35hi5qilqllHiWqsE5te4M
 XnwVA3IGFeCYC/2RG1Va5Lz6ZUpIkrSGiXRg+c5Y5sL/mQIZMEYi00U5WNrXLgD/J0
 2z9fwMV88avI0IRAQgLxEd221tbfS/ANQDRtka6p4LIHOt5Cic6VV+caC1qUod/Zj0
 ctJdDODTcb7Vg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun,  2 Jul 2023 15:38:05 -0400
Message-Id: <20230702193815.1775684-6-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230702193815.1775684-1-sashal@kernel.org>
References: <20230702193815.1775684-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.4.1
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Kees Cook <keescook@chromium.org> [ Upstream commit
 820eb59da8c7ca7e705a02f37dda2be316807847 ] To avoid confusing the compiler
 about possible negative sizes, switch "ssize" which can never be negative
 from int to u32. Seen with GCC 13: 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qG2u4-004Cal-0b
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.4 06/16] jfs: Use unsigned
 variable for length calculations
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
Cc: Sasha Levin <sashal@kernel.org>, Dave Kleikamp <shaggy@kernel.org>,
 Christian Brauner <brauner@kernel.org>, Kees Cook <keescook@chromium.org>,
 jfs-discussion@lists.sourceforge.net, Jeff Xu <jeffxu@chromium.org>,
 linux@treblig.org, Dave Chinner <dchinner@redhat.com>, mirimmad17@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Kees Cook <keescook@chromium.org>

[ Upstream commit 820eb59da8c7ca7e705a02f37dda2be316807847 ]

To avoid confusing the compiler about possible negative sizes, switch
"ssize" which can never be negative from int to u32.  Seen with GCC 13:

../fs/jfs/namei.c: In function 'jfs_symlink': ../include/linux/fortify-string.h:57:33: warning: '__builtin_memcpy' pointer overflow between offset 0 and size [-2147483648, -1]
[-Warray-bounds=]
   57 | #define __underlying_memcpy     __builtin_memcpy
      |                                 ^
...
../fs/jfs/namei.c:950:17: note: in expansion of macro 'memcpy'
  950 |                 memcpy(ip->i_link, name, ssize);
      |                 ^~~~~~

Cc: Dave Kleikamp <shaggy@kernel.org>
Cc: Christian Brauner <brauner@kernel.org>
Cc: Dave Chinner <dchinner@redhat.com>
Cc: jfs-discussion@lists.sourceforge.net
Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Jeff Xu <jeffxu@chromium.org>
Message-Id: <20230204183355.never.877-kees@kernel.org>
Signed-off-by: Christian Brauner <brauner@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/namei.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
index b29d68b5eec53..494b9f4043cf6 100644
--- a/fs/jfs/namei.c
+++ b/fs/jfs/namei.c
@@ -876,7 +876,7 @@ static int jfs_symlink(struct mnt_idmap *idmap, struct inode *dip,
 	tid_t tid;
 	ino_t ino = 0;
 	struct component_name dname;
-	int ssize;		/* source pathname size */
+	u32 ssize;		/* source pathname size */
 	struct btstack btstack;
 	struct inode *ip = d_inode(dentry);
 	s64 xlen = 0;
@@ -957,7 +957,7 @@ static int jfs_symlink(struct mnt_idmap *idmap, struct inode *dip,
 		if (ssize > sizeof (JFS_IP(ip)->i_inline))
 			JFS_IP(ip)->mode2 &= ~INLINEEA;
 
-		jfs_info("jfs_symlink: fast symlink added  ssize:%d name:%s ",
+		jfs_info("jfs_symlink: fast symlink added  ssize:%u name:%s ",
 			 ssize, name);
 	}
 	/*
@@ -987,7 +987,7 @@ static int jfs_symlink(struct mnt_idmap *idmap, struct inode *dip,
 		ip->i_size = ssize - 1;
 		while (ssize) {
 			/* This is kind of silly since PATH_MAX == 4K */
-			int copy_size = min(ssize, PSIZE);
+			u32 copy_size = min_t(u32, ssize, PSIZE);
 
 			mp = get_metapage(ip, xaddr, PSIZE, 1);
 
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
