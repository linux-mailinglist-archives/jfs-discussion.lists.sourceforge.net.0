Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB64982E4B8
	for <lists+jfs-discussion@lfdr.de>; Tue, 16 Jan 2024 01:24:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rPXG0-0002mA-Pc;
	Tue, 16 Jan 2024 00:24:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1rPXFw-0002m1-KN
 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Jan 2024 00:24:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2cmzezFVbAsFc4AvWUpM06gsCYSQHU2ySQyDXK8+6cY=; b=OPTzrgkzxN/a7jl066Y7VnCiDn
 Ifo6MJQIWHppJzZ1MwdS6w0hoJBmml6hUeuOrVCj49SNQ2/9+45qw8zTLxx5NwrRDYwc0Ok4HhIM1
 VeY+avmxEoQ5qeCZaBV23yNLki71Q92uRe64Orhsr+a9F/eE3Wbsz8JDgPq5ehH8gP08=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2cmzezFVbAsFc4AvWUpM06gsCYSQHU2ySQyDXK8+6cY=; b=asw4RBu+kXmdJRII/SezcLusUC
 rvuMEDKm44l7i3StUh3rEaxpVCSplTwzgULcqgXVka9DrAOc1J10wbikB1FO/gs9bNzAHn1jE154b
 cVyyQypUFoelC/IhaPDyUfwTsX5wJNkGGiU3ZibRh0OXUhiGzmMaswq8ROLdZRMRa/0k=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPXFv-0002lF-33 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Jan 2024 00:24:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 09004CE180B;
 Tue, 16 Jan 2024 00:24:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B10AC433C7;
 Tue, 16 Jan 2024 00:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1705364667;
 bh=LagxqXkvmbmLpxNxyaHDb852YM9tDD7OqkSJB6TUz4w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lmCVgPa8cD2p9/+LBbJjc9YUK0G51XCW989RQFvOWvF+Un3eEwQT5ZVCVqaFnBI+5
 MzAQgV50s3bx+hLTcfeiP3WTJzSC3tu0EqqZ0i6vlIFFYvS7lRcxXq68DxyWlHqGuI
 +V1Q9q9x+uXDCkO+a1ovzgrJqiqu9rVEcF4MG7wVFjQqh1Vd7GNZGI5+9w4RMfI/EG
 S8hDAsAp10WGJx8vlRCOzlTZWVezv1YRjhUySSG/DXFA0sYPL218j78ml/P7qfJtRn
 T8CnYoTGunt0bUGC7kZWJdi21Y702jY2UNh2mwWDSQtAxl1FNcgZ/iA/NWDXFv1/PJ
 3OccrcztUrYOA==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 15 Jan 2024 19:23:40 -0500
Message-ID: <20240116002413.215163-5-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240116002413.215163-1-sashal@kernel.org>
References: <20240116002413.215163-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.12
X-Spam-Score: -4.0 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rPXFv-0002lF-33
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.6 05/19] jfs: fix uaf in
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
index b83aae56a1f2..631b8bd3e438 100644
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
