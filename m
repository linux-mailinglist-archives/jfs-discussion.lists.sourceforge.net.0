Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C895682E4A5
	for <lists+jfs-discussion@lfdr.de>; Tue, 16 Jan 2024 01:23:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rPXEx-0001PP-UC;
	Tue, 16 Jan 2024 00:23:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1rPXEx-0001PH-25
 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Jan 2024 00:23:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z6hlj+jQkTBWwz9TQjueyU9/2LtsPvdIpDAnIBS9fJU=; b=b5RNa1tAh1ifiV7SpFvIM5Jplg
 Z50VVGFHid5QQoP/0nnB4R9yW4uS5sZiWRdFL+JtxoAwdct7uJAjiTCE9IDuBCH0FW2LAPOm86C7p
 to6Jwa5gxBDnn6+BgJ9AVJDZfymaA3J404EX41RZ7LdIa08lPUJuGpeo3rCcDMg60HhA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Z6hlj+jQkTBWwz9TQjueyU9/2LtsPvdIpDAnIBS9fJU=; b=iU0+blDCwvnYP6Fu57V0h3a/h3
 B0pT3PiSeh5ZT6/30JWNX0s8vGPXm8EdHjbETXgauk3GfHAuAiH23co3gsAynnLWjD8kEI82cUh8h
 PQsDgkb4gCXtB6ZeFROHRooLhfWXAgOLiRXNuTWxbxsywNFEuyj1Upf0sAeKyiXZ9Jew=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPXEv-0002bL-E9 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Jan 2024 00:23:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 5D619CE180B;
 Tue, 16 Jan 2024 00:23:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90EDEC433C7;
 Tue, 16 Jan 2024 00:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1705364605;
 bh=Qdak5kFCJCEiGC/EwJHmomc+kPKNGN2IwI4GY5ymDjA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jDvPJUbS8FmhRhk/XPHoHKUzPgXOUPaiOpsTOplHuoJWbRbc+4jTqDI1ZN96OoI3m
 WtcBDdk48oAfkYd8ha6zEn5D9bYhE30gEw6t9VAXyXbUBaPXa9HC/4qbneZEY5kDEQ
 XRHOCaXxOqV5L7eXSUDOmdsvjwiEseW1bg6NaR++wPZmi4focyaBdmBPhGSlWgmrVh
 a/u5cdx1Q6xibdiMr30L7TOt9Ek8Pgf3Xl34v2rLmq+01UNxRhLwk/QZ6hqoRC5Fbg
 cCUrQru8nVgOBoXKYveG4b/OgV2EY+ZKmzqjDNQCqS5wSyTKgEx7g/arVooUepXQk3
 Ggh0NbumJuX3g==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 15 Jan 2024 19:22:41 -0500
Message-ID: <20240116002311.214705-5-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240116002311.214705-1-sashal@kernel.org>
References: <20240116002311.214705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.7
X-Spam-Score: -4.0 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Edward Adam Davis <eadavis@qq.com> [ Upstream commit
 e0e1958f4c365e380b17ccb35617345b31ef7bf3 ] When the execution of
 diMount(ipimap) fails,
 the object ipimap that has been released may be accessed in diFreeSpecial().
 Asynchronous ipimap release occurs when rcu_core() calls jfs_free_node().
 Content analysis details:   (-4.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rPXEv-0002bL-E9
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.7 05/19] jfs: fix uaf in
 jfs_evict_inode
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
 jack@suse.cz, Edward Adam Davis <eadavis@qq.com>,
 jfs-discussion@lists.sourceforge.net,
 syzbot+01cf2dbcbe2022454388@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Edward Adam Davis <eadavis@qq.com>

[ Upstream commit e0e1958f4c365e380b17ccb35617345b31ef7bf3 ]

When the execution of diMount(ipimap) fails, the object ipimap that has been
released may be accessed in diFreeSpecial(). Asynchronous ipimap release occurs
when rcu_core() calls jfs_free_node().

Therefore, when diMount(ipimap) fails, sbi->ipimap should not be initialized as
ipimap.

Reported-and-tested-by: syzbot+01cf2dbcbe2022454388@syzkaller.appspotmail.com
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_mount.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/jfs/jfs_mount.c b/fs/jfs/jfs_mount.c
index 415eb65a36ff..9b5c6a20b30c 100644
--- a/fs/jfs/jfs_mount.c
+++ b/fs/jfs/jfs_mount.c
@@ -172,15 +172,15 @@ int jfs_mount(struct super_block *sb)
 	}
 	jfs_info("jfs_mount: ipimap:0x%p", ipimap);
 
-	/* map further access of per fileset inodes by the fileset inode */
-	sbi->ipimap = ipimap;
-
 	/* initialize fileset inode allocation map */
 	if ((rc = diMount(ipimap))) {
 		jfs_err("jfs_mount: diMount failed w/rc = %d", rc);
 		goto err_ipimap;
 	}
 
+	/* map further access of per fileset inodes by the fileset inode */
+	sbi->ipimap = ipimap;
+
 	return rc;
 
 	/*
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
