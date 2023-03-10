Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 881D16B3D1F
	for <lists+jfs-discussion@lfdr.de>; Fri, 10 Mar 2023 12:02:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1paaVS-00068k-Cz;
	Fri, 10 Mar 2023 11:01:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1paaVQ-00068e-Ql
 for jfs-discussion@lists.sourceforge.net;
 Fri, 10 Mar 2023 11:01:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=frey1/N/p0WNHhNYF0xkmnVmXCZOisPP2TIL4xv5Usk=; b=bhU1ug9c7paWBZOkmU+wwVRgWP
 HQmLKE6OdelX3WSmvIOd0qYp+i9gGZHo1lT+GcO5HJOJS3X+Wf8SA7ZR0irZv/05Lo5TIxl+Qa71h
 z4aP3/GZ5JyyJSzHUTpuwPGKu0tvSgoE6CWX9jltTa9ab+21yMRXH0H9ZQR8V0XRVCdY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=frey1/N/p0WNHhNYF0xkmnVmXCZOisPP2TIL4xv5Usk=; b=P
 gY36g1AujxCcZGyqdxCA7i9gJvy566KqZ1ILXuj7hK9SGkWAEk30WKWw6atLFE4uoKQwOQ+g3sfvL
 OQXV9zqKa82L1ZVh7h1yWrinu+Qmzn/jI9NZWsRb628Sl2VPo2Q0zoLIV70tPfP6srvbO0JPhcylj
 k0+vEIzPTUP2QwKE=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1paaVR-0005eE-L4 for jfs-discussion@lists.sourceforge.net;
 Fri, 10 Mar 2023 11:01:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 6B532B808CE
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 10 Mar 2023 11:01:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6580C433D2;
 Fri, 10 Mar 2023 11:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1678446101;
 bh=qGWmylliJvhYxK6aX6iSmtZ2twz2pXDXCzL2yQW1gwc=;
 h=From:To:Cc:Subject:Date:From;
 b=f0Hh+AetyK8moJ/mkv+TdaEjRelyNN9AwFZBtjEqnGBp/CWfo76jxWbgf6L5sr5bM
 VqisolqbsaR/celDSUzHsZfwyL270jL7ZrTJAVovxK9BobOBg2vAYJ43eNzsS9JPp3
 ofYAeYOUhsEKuKuvftxHCliCe8UrMlQwQ8GsTbPwwb55xcMRe4MKBNTwkDBP2Izt+0
 1LbmbaBSCl8WMaSjmi17xEuDhsNJr5tEaRt/aZdG+H2QXbiTbnXVW2/qxAx/jvn55A
 GV26GeQF4KfDNOOaNTfDJc+GjYQvT9E75gBgS5nqKY7RGcQ+UZlEAMIgO6Doqcyb1t
 ecpa1day8EAcA==
From: Sasha Levin <sashal@kernel.org>
To: stable-commits@vger.kernel.org,
	jfs-discussion@lists.sourceforge.net
Date: Fri, 10 Mar 2023 06:01:38 -0500
Message-Id: <20230310110139.3094481-1-sashal@kernel.org>
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
 titled fs/jfs: fix shift exponent db_agl2size negative to the 4.19-stable
 tree which can be found at:
 http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;
 a=summary
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1paaVR-0005eE-L4
Subject: [Jfs-discussion] Patch "fs/jfs: fix shift exponent db_agl2size
 negative" has been added to the 4.19-stable tree
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

to the 4.19-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     fs-jfs-fix-shift-exponent-db_agl2size-negative.patch
and it can be found in the queue-4.19 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.



commit b2829da999ef241f604f4345d0c10e08185871f0
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
index f06796cad9aa8..3ad0a33e0443b 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -206,7 +206,8 @@ int dbMount(struct inode *ipbmap)
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
