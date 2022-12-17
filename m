Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA8B64F9E8
	for <lists+jfs-discussion@lfdr.de>; Sat, 17 Dec 2022 16:29:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p6Z7v-0002YR-Tz;
	Sat, 17 Dec 2022 15:29:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1p6Z7t-0002YE-R3
 for jfs-discussion@lists.sourceforge.net;
 Sat, 17 Dec 2022 15:29:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YrK/uUdC44kA+mp0yJ3VElU4Ne+bUXk429Ngm8zBgYE=; b=nOQl9UUpN3mifcLFI296bNGIQ5
 ChYZ8/8tf60yGSagpG10dOziDAgqxBSIn0VgyteqOdADAt2ViJaE9rwBbg5CcAP5EgS2qt//NNwBh
 z1Fd2CbGvvmNA3NxKRL6IQwioNYkaopXYZ5mT4BwG/+9fEbW0I5ocinjRS+VCENsA7A8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YrK/uUdC44kA+mp0yJ3VElU4Ne+bUXk429Ngm8zBgYE=; b=FyLxRTtZUq3SYI5m2WngWJhAIA
 NJkEyw4gqJr4osw9cXFhSio4p/9UlQVNp9VQzzqLxKV9kI+v3rBSX9lvCYqTfvhb5L94N3oBIPDDX
 R94p1Iy1k8xOl1dSnMZAltWWQvBDJS/4bOHvA1mrlDy8xMSIkMWSjFTXM8BeEWhXps1k=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p6Z7o-002cU7-DM for jfs-discussion@lists.sourceforge.net;
 Sat, 17 Dec 2022 15:29:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 27AA1B802C8;
 Sat, 17 Dec 2022 15:29:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5F27C433F0;
 Sat, 17 Dec 2022 15:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1671290952;
 bh=0W0SzhsVRcakjw8atSqK/xCguPb5Za2BVR5rpbpA6XE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vQyNlja7SLVkPl2jPBdB4Ts8+QhZfkCO5vp910ossxUmuT/9CorX9yuDBZpxsFOUI
 fThGDNZ4OI8Dlky7qI5/d8sXuKpSsdaywQJu3+BVWr8jrUwQHA+KXYH1DALX1A/UzM
 fsdfKxXxPIz2hUsFEOxLL2/vKO4DeQ3T79Mbqr/bWlK1M88dV9PxHc3h4iROsJ5ARd
 d/0masmZuEvgzYyBIRWeZdHxFtDElhdKYmZbSOjK7k3FgUVWXFSYRM6Z0+aBAQp29r
 rPwHe86Kkrl6gUDW2ba4Icy6/sOM817JnbzC/lKPE+tfpY3lxsWb2hsvheKN8k0aE8
 S8Z3dnn8npVYQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sat, 17 Dec 2022 10:28:54 -0500
Message-Id: <20221217152902.98870-4-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221217152902.98870-1-sashal@kernel.org>
References: <20221217152902.98870-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Hoi Pok Wu <wuhoipok@gmail.com> [ Upstream commit
 25e70c6162f207828dd405b432d8f2a98dbf7082
 ] This should be applied to most URSAN bugs found recently by syzbot, by
 guarding the dbMount. As syzbot feeding rubbish into the bmap descriptor. 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p6Z7o-002cU7-DM
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.15 04/10] fs: jfs: fix
 shift-out-of-bounds in dbDiscardAG
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
Cc: Sasha Levin <sashal@kernel.org>, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, paskripkin@gmail.com,
 mudongliangabcd@gmail.com, r33s3n6@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Hoi Pok Wu <wuhoipok@gmail.com>

[ Upstream commit 25e70c6162f207828dd405b432d8f2a98dbf7082 ]

This should be applied to most URSAN bugs found recently by syzbot,
by guarding the dbMount. As syzbot feeding rubbish into the bmap
descriptor.

Signed-off-by: Hoi Pok Wu <wuhoipok@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dmap.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 44600cd7614a..f401bc05d5ff 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -198,6 +198,11 @@ int dbMount(struct inode *ipbmap)
 		goto err_release_metapage;
 	}
 
+	if (((bmp->db_mapsize - 1) >> bmp->db_agl2size) > MAXAG) {
+		err = -EINVAL;
+		goto err_release_metapage;
+	}
+
 	for (i = 0; i < MAXAG; i++)
 		bmp->db_agfree[i] = le64_to_cpu(dbmp_le->dn_agfree[i]);
 	bmp->db_agsize = le64_to_cpu(dbmp_le->dn_agsize);
-- 
2.35.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
