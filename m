Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C486B3D10
	for <lists+jfs-discussion@lfdr.de>; Fri, 10 Mar 2023 11:59:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1paaSa-00007E-CA;
	Fri, 10 Mar 2023 10:58:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1paaSX-000076-4i
 for jfs-discussion@lists.sourceforge.net;
 Fri, 10 Mar 2023 10:58:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=679UQTLIowNLM1jTjnemuHQ+dFUqCUsfTmkMxUeups8=; b=bzUzKH6ipHfa1iJk3vX4v5/ZN4
 Q0eVhSOBvxBLl5j0Vv+mYQ/KG2GVKHCG+kE8eSj9CBo1CxjOmYEYhiEQPQJ9+vJhppmM5hb5mN395
 8+8g4YbWG65iBORPOhpXC3ftbdepVpgs+/WuH70PyqqH96jKa3xL62GSr/tS7uBfDDdA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=679UQTLIowNLM1jTjnemuHQ+dFUqCUsfTmkMxUeups8=; b=R
 meYTnqOYPCRA71VjdCNZ5MkWQsZjPeB3mEDnRoJH8nXS5ONi5TdgcoSK3U/FOzawQCyAlzJqHqev/
 AY+eM/oI9HsMtjATXIr48S5Y7yh7v5rb7SSUZhoOHNtAnf5aalvxc9YeKkSkJZA1ThhKNxf0NVReV
 5NikV5U3YWPA46Ow=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1paaSX-003Q1C-PH for jfs-discussion@lists.sourceforge.net;
 Fri, 10 Mar 2023 10:58:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2EA0D60C53
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 10 Mar 2023 10:58:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4276DC433D2;
 Fri, 10 Mar 2023 10:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1678445923;
 bh=2PbdpuHnm68R93IOIBydODEBDyDPFZVOp/rXkI79sPQ=;
 h=From:To:Cc:Subject:Date:From;
 b=NE7vnC2rm7kw0xT/vNxHOPyEsAVUd7i0Fx7DqJ1bBbhJRm8BOUbQ6d1lSOlty+5Lm
 wfExhWHyG/f4IsirKfYCZ2i/OUcMUjInRgMnBD3DeYtp77KQv+Wl5zBJuZKoVgo4Qg
 21Iojd7uV5kfo/SwK65ujmgQRIIQhtcr4IzmZsj74dAPxxCh4bITu9jMs7eXsV39or
 1PVgyvbT5hOLKdwl6VI8AybiWaPgW4lmqqw4yB3wcSqRft34heQ1lrIxKLKIHYrh+B
 FZIsQYyMrI+zJRlRYAsoYluv3IJtsJAPiY9q2f0h5+93ok3gIPOgI8GTmpQ9NWAbYX
 Ec6co9oLVAWUw==
From: Sasha Levin <sashal@kernel.org>
To: stable-commits@vger.kernel.org,
	jfs-discussion@lists.sourceforge.net
Date: Fri, 10 Mar 2023 05:58:41 -0500
Message-Id: <20230310105841.3091923-1-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Patchwork-Hint: ignore
X-stable: review
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This is a note to let you know that I've just added the patch
 titled fs/jfs: fix shift exponent db_agl2size negative to the 5.4-stable
 tree which can be found at:
 http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;
 a=summary
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1paaSX-003Q1C-PH
Subject: [Jfs-discussion] Patch "fs/jfs: fix shift exponent db_agl2size
 negative" has been added to the 5.4-stable tree
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

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     fs-jfs-fix-shift-exponent-db_agl2size-negative.patch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.



commit 84b6550e4debb5b17a7b7b7bea5433015d8e3187
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
index aa4643854f947..cc1fed285b2d6 100644
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
