Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C38446B3CF9
	for <lists+jfs-discussion@lfdr.de>; Fri, 10 Mar 2023 11:55:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1paaPT-0008VA-14;
	Fri, 10 Mar 2023 10:55:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1paaP5-0008Uz-Km
 for jfs-discussion@lists.sourceforge.net;
 Fri, 10 Mar 2023 10:55:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AKtbQTUnKy1dB+kDr4m3g0y0Cr9FOUiyIZAMXMXWsIg=; b=iyn0MJeDS/Tbl65stKOjGmSp8X
 LKIT0aucHr5NVH6Bqr2FCjOcRZ33KxcxSOvUxyzOL2E4owiLos9RJRdY+eLMtkzL8rtdOUCvcqf54
 m0PJ3dci0l6oU9iFgAsU9HPTNPn7FTW/couXDB4WwyGcSm0g+t9xUSu4W0910qeCG5pM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AKtbQTUnKy1dB+kDr4m3g0y0Cr9FOUiyIZAMXMXWsIg=; b=h
 DP9WhASrV9r7CAJT+aNjE0++ATdFw85FGwalvaXH66CbKdpBGG8KsNHK5PTqI1PEQxff8aae1ydgp
 PLUGBWL7lTVfb6mNkmPKCcbAv3bQTH6D7ZCvY3V/fZ7rTf8PNJTMiWpX2WCjKXAc6/0qUC91GID3Q
 5+EaPhekMWWIfEfU=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1paaOy-0005NW-5h for jfs-discussion@lists.sourceforge.net;
 Fri, 10 Mar 2023 10:55:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D8687613C5
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 10 Mar 2023 10:55:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E026DC4331E;
 Fri, 10 Mar 2023 10:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1678445700;
 bh=zB4YFCi5/Tqw+2zAszP888oC9UkTi25Ata8u6Ll30Zo=;
 h=From:To:Cc:Subject:Date:From;
 b=RItBAS7YZqwx4DFDhKclqsy6N3aeK4/ZulUCVoOd/7CxmnHtm3f0tNYpv2LegI+EN
 d9eeeR4GmuMDaVoefg0Tu4V37dyf1cldfk/KGyK58pD2hy97lXMCrs3OEt2GW4ccRA
 ooO7L155hTl92dyso782rp1jboc1DAQrCt1KeMS3HiizU/7Wrq1A26gBmyqLI6XkAW
 ukwVeT9OdK73UECM1MWK9BsKM8j2UWvPZmDo8UBXJ2d1JysiUsU3o5q1aQzawwNGe4
 t1xJstn09j90ZOCsT+QlOwoJD/kBSz63oMGP7NU+PRMtZfGYvr0yF706SMuU61ZeXR
 hNC6kUAU9/fCA==
From: Sasha Levin <sashal@kernel.org>
To: stable-commits@vger.kernel.org,
	jfs-discussion@lists.sourceforge.net
Date: Fri, 10 Mar 2023 05:54:58 -0500
Message-Id: <20230310105458.3088722-1-sashal@kernel.org>
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
 titled fs/jfs: fix shift exponent db_agl2size negative to the 5.10-stable
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
X-Headers-End: 1paaOy-0005NW-5h
Subject: [Jfs-discussion] Patch "fs/jfs: fix shift exponent db_agl2size
 negative" has been added to the 5.10-stable tree
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

to the 5.10-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     fs-jfs-fix-shift-exponent-db_agl2size-negative.patch
and it can be found in the queue-5.10 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.



commit afa3d73c21d566f88d90906be3e80ea3627abeb1
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
index 2c9493011aec3..501263355ef48 100644
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
