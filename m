Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F84475E6ED
	for <lists+jfs-discussion@lfdr.de>; Mon, 24 Jul 2023 03:23:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qNkIY-0002f7-8T;
	Mon, 24 Jul 2023 01:23:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1qNkIV-0002f0-3o
 for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Jul 2023 01:23:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6BO1QagZXojlic80OAtM47ijNpNXJYlWV2c14m7qJ9k=; b=W2b9aVmFWvQrLoVJ1n5m64Bvuu
 XeuNFGPGD319Q/eK9Op27qQ4awPuXy0usBaYKvax2uNnLTOLPcKSLInmEDBzIgPj9QuZIhb/pldko
 wK18NgvPSIWal9oWP2ANtD8M6BVzgSipv2teZgX8DZEBbSRXQ8ntjlN8aApYJiDM8iy0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6BO1QagZXojlic80OAtM47ijNpNXJYlWV2c14m7qJ9k=; b=nHFmWugvsM9bxrPVsVkBJh1Glx
 tQQWNxRBtMRZ7CFcqV26jxWHV0AH6YRwJqjDqYUfVjaybBWMB6UuaKvyXhnQDbEbL8ckI5ktd5Ot2
 AK8pefhCz7MM4UCXMTvKWlmWxiW61Wg4Cwb6I/Ab61dKRwhM0xPk2pZImTwRnQHInMr4=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qNkIU-0006dA-Fd for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Jul 2023 01:23:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A64EB60F1E;
 Mon, 24 Jul 2023 01:23:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41554C433CB;
 Mon, 24 Jul 2023 01:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1690161809;
 bh=nZcd8Y0w1L07bToIpy37Cq9joP5aPuM7Dv2MNvW6M3Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OSVFMBrZX53X8TiTjayJ1QJpt5yHJxMDyhmx3X4SIMPvFB+Pkg7aGFlt2JUsAK6j1
 Wc+Jee51MAUBCwTYpVMPUSF8dSVrACmEZIlqRs9o+HMvm8PzV0qoHXAL/zfwoYpEY/
 Ww7jkGL7fEJDk/BnfTLepOUOVUozK9BPe+gNptuj+9mL565vXQwiWCGyMPkD48gULL
 dkY4QxYNO1KLLzbPte6zhtARQJqxOOMMyUitwVqGgos+8r4izq/XhgwIWYykl90PLd
 QuFM6nDvQ+FjlFWynsJcm6/C4pMBMcCy1o/n/kbY5hyCr9hjOu4QZ2FNEISwmrKPxJ
 hgLWEdGtPwEPg==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 23 Jul 2023 21:21:13 -0400
Message-Id: <20230724012118.2316073-40-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230724012118.2316073-1-sashal@kernel.org>
References: <20230724012118.2316073-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.40
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Immad Mir <mirimmad17@gmail.com> [ Upstream commit
 47cfdc338d674d38f4b2f22b7612cc6a2763ba27
 ] Syzkaller reported an issue where txBegin may be called on a superblock
 in a read-only mounted filesystem which leads to NULL pointer deref. This
 could be solved by checking if the filesystem is read [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qNkIU-0006dA-Fd
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.1 40/41] FS: JFS: Fix
 null-ptr-deref Read in txBegin
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
 jfs-discussion@lists.sourceforge.net,
 syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com,
 Immad Mir <mirimmad17@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Immad Mir <mirimmad17@gmail.com>

[ Upstream commit 47cfdc338d674d38f4b2f22b7612cc6a2763ba27 ]

 Syzkaller reported an issue where txBegin may be called
 on a superblock in a read-only mounted filesystem which leads
 to NULL pointer deref. This could be solved by checking if
 the filesystem is read-only before calling txBegin, and returning
 with appropiate error code.

Reported-By: syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?id=be7e52c50c5182cc09a09ea6fc456446b2039de3

Signed-off-by: Immad Mir <mirimmad17@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/namei.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
index 4fbbf88435e69..b3a0fe0649c49 100644
--- a/fs/jfs/namei.c
+++ b/fs/jfs/namei.c
@@ -799,6 +799,11 @@ static int jfs_link(struct dentry *old_dentry,
 	if (rc)
 		goto out;
 
+	if (isReadOnly(ip)) {
+		jfs_error(ip->i_sb, "read-only filesystem\n");
+		return -EROFS;
+	}
+
 	tid = txBegin(ip->i_sb, 0);
 
 	mutex_lock_nested(&JFS_IP(dir)->commit_mutex, COMMIT_MUTEX_PARENT);
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
