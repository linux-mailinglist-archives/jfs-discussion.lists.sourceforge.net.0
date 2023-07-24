Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D59FF75E698
	for <lists+jfs-discussion@lfdr.de>; Mon, 24 Jul 2023 03:21:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qNkGF-0007u8-UA;
	Mon, 24 Jul 2023 01:21:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1qNkGE-0007u2-8k
 for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Jul 2023 01:21:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pau2cTRFc3EDNvw/+W7nMUOS6kYDtYKQIZv6G55G4Zg=; b=QVL54paenPo6tcCsx33uj/AXUR
 Vn8pDjNft9ParpQRkywXiEddxe+clSJMQwRplWgTpuv0c5KzCez3LYJ9sYIK5tMC/u8wRp7DLHMzW
 Eibv1jWTm0NUx4EBy+TbCuJVG2PDiRsnjcxpjWfhfyMZS8634dQGMeP/jC7BwmyWIlhw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pau2cTRFc3EDNvw/+W7nMUOS6kYDtYKQIZv6G55G4Zg=; b=ldeXavIfjdhGpNQQTBfX59yqgO
 jyHy9XuTSjMplVwabx3Zt+CmTc8UikAuIyJFRAmUf7Gkm79PRxPlmCRB2VV96Fiq3r+DDa/+VZLgF
 8rTDN/BqnL4RLuDttyqgxuCJVMAKIoZpC+DG7iMjfs4gmuNlM8uocR7mUjlbCh124Vx8=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qNkGB-0000CH-93 for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Jul 2023 01:21:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A2A5160F1E;
 Mon, 24 Jul 2023 01:21:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5D10C433C8;
 Mon, 24 Jul 2023 01:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1690161667;
 bh=n9zCeCBaqI73vhP4arOKe07oo3onC9y88+7PEr7qHYk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eGDyxjr+7XV+xzAAE5s4gHVtVSYPikOW8fakTWAuT9HoKS3Z4P8mz9c4h7Wk4y/7W
 pXrm0nDajb1prXmKzJSFx3nd4wUz1ApZeRwdjSpkCWnaA6oqYHHpoTdfBUlmztKb74
 EkKiPLTA1DcUOq14S/0emVeA6gYf92hW1lgW8B/gURC1KwpXi4wxm+nOKNr63Mp4MT
 8odj53V79eI6YJIT5V+oBFcriCrrdg2CZ73HPssUmrK/D1js5PhxD/ctQrL9/t6JPA
 w9OVNarmyiGkXQ5l3iLS3sFelUh9T9R1P4yHW7kx84Rd4tS2x/1jOYRgDgkxHGAjKR
 oEfEfllpZ5krw==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 23 Jul 2023 21:13:25 -0400
Message-Id: <20230724011338.2298062-57-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230724011338.2298062-1-sashal@kernel.org>
References: <20230724011338.2298062-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.4.5
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qNkGB-0000CH-93
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.4 57/58] FS: JFS: Fix
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
Cc: Sasha Levin <sashal@kernel.org>, shaggy@kernel.org, brauner@kernel.org,
 keescook@chromium.org, jfs-discussion@lists.sourceforge.net,
 syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com, linux@treblig.org,
 dchinner@redhat.com, Immad Mir <mirimmad17@gmail.com>
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
index b29d68b5eec53..f370c76051205 100644
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
