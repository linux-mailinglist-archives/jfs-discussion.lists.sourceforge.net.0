Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4876B3CC7
	for <lists+jfs-discussion@lfdr.de>; Fri, 10 Mar 2023 11:50:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1paaKF-0008SL-Pn;
	Fri, 10 Mar 2023 10:50:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1paaJo-0008Rw-B3
 for jfs-discussion@lists.sourceforge.net;
 Fri, 10 Mar 2023 10:49:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8B7P9SZD3H0I6kGg82vDrJGBl0QARrj6z6PUX+MxvyU=; b=VVdmzdsvdTUvi3OWpJ0f77MYGG
 JT8zu2gmPM2m7iM/BrNa86eGqLnOedftrIW9W7jzUDPXkshEUxmRjpkw47bTstB0QJRTqd6lycs+4
 1cCstKfAigl8ZSBGwR2xohp+da3ZIWLk+NOEFQTgBDNfLpLUhZFXRKYNkYr08wzmu7zs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8B7P9SZD3H0I6kGg82vDrJGBl0QARrj6z6PUX+MxvyU=; b=X
 rirrOrW/7uza8zLe7F1s6J4MLLObkUsvzPIkGFSv6iNx4iUwSbv19Pl1TxGq11MGYHfR6hZTgyz/X
 uOg5rkh0XlDkgoQzVPFHeD/8uyjB3KPW1zoofj0XxK1PBmstN9Bn3hGIIbmQ6/9h6mVPuNzbsRfyd
 R7q2a9xwg41dDkXw=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1paaJd-0005Bk-Dd for jfs-discussion@lists.sourceforge.net;
 Fri, 10 Mar 2023 10:49:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 363C8B821FD
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 10 Mar 2023 10:49:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8576FC433EF;
 Fri, 10 Mar 2023 10:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1678445368;
 bh=rEzZ4zLQNI4/qhraw3blYBC+fbDC21N+v1jvVYNit6Y=;
 h=From:To:Cc:Subject:Date:From;
 b=PiSFXJfe8p2HyR8WgzTCQV9EksEOZrw2M8js+DK3B9nXGq7pmZUwBAg1AEjHxIQ6N
 NrlOh4tjSNJZrsBIGV6UnVR+NhRg6fzxbLE/HpTmSdHa1wl/u7y0ARqcqdtJueGQaF
 w5LQ6qhyZ5Mo7BPjDYA7hOA8tpxzGmzjyGOaXbL88EVvVSOrwaZB4MCe2zZOqQuN9i
 BOUHap1qOSbF7OE9Ijb/oJ3Rh1M2Ow/ivnAxARbgLKGaaW1QS2/FAlJqxy/MAn0m7d
 I6ihS5F9XtesD56B4cGa/LiySKbxrKzaM81rl8s8GIKT5v6J7cb0aIIazvtQeml3/g
 BBQ88mMPIq6Mw==
From: Sasha Levin <sashal@kernel.org>
To: stable-commits@vger.kernel.org,
	jfs-discussion@lists.sourceforge.net
Date: Fri, 10 Mar 2023 05:49:26 -0500
Message-Id: <20230310104926.3083844-1-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Patchwork-Hint: ignore
X-stable: review
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This is a note to let you know that I've just added the patch
 titled fs/jfs: fix shift exponent db_agl2size negative to the 5.15-stable
 tree which can be found at:
 http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;
 a=summary
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1paaJd-0005Bk-Dd
Subject: [Jfs-discussion] Patch "fs/jfs: fix shift exponent db_agl2size
 negative" has been added to the 5.15-stable tree
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
Cc: Dave Kleikamp <shaggy@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

This is a note to let you know that I've just added the patch titled

    fs/jfs: fix shift exponent db_agl2size negative

to the 5.15-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     fs-jfs-fix-shift-exponent-db_agl2size-negative.patch
and it can be found in the queue-5.15 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.



commit b49161cdad9c074ef596249cac49ead72989b234
Author: Liu Shixin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Date:   Thu Nov 3 11:01:59 2022 +0800

    fs/jfs: fix shift exponent db_agl2size negative
    
    [ Upstream commit fad376fce0af58deebc5075b8539dc05bf639af3 ]
    
    As a shift exponent, db_agl2size can not be less than 0. Add the missing
    check to fix the shift-out-of-bounds bug reported by syzkaller:
    
     UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:2227:15
     shift exponent -744642816 is negative
    
    Reported-by: syzbot+0be96567042453c0c820@syzkaller.appspotmail.com
    Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
    Signed-off-by: Liu Shixin <liushixin2@huawei.com>
    Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
    Signed-off-by: Sasha Levin <sashal@kernel.org>

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index f401bc05d5ff6..0034b0f397153 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -193,7 +193,8 @@ int dbMount(struct inode *ipbmap)
 	bmp->db_agwidth = le32_to_cpu(dbmp_le->dn_agwidth);
 	bmp->db_agstart = le32_to_cpu(dbmp_le->dn_agstart);
 	bmp->db_agl2size = le32_to_cpu(dbmp_le->dn_agl2size);
-	if (bmp->db_agl2size > L2MAXL2SIZE - L2MAXAG) {
+	if (bmp->db_agl2size > L2MAXL2SIZE - L2MAXAG ||
+	    bmp->db_agl2size < 0) {
 		err = -EINVAL;
 		goto err_release_metapage;
 	}


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
