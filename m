Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 532D1A99B83
	for <lists+jfs-discussion@lfdr.de>; Thu, 24 Apr 2025 00:27:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u7iYi-0007R4-BS;
	Wed, 23 Apr 2025 22:27:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <contact@arnaud-lcm.com>) id 1u7iE8-0007UE-7k
 for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Apr 2025 22:05:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fnz6PMKzzX8rUPOZzgjEK4WgpKeHuRwnc+6Rs6FctgA=; b=Lj6qyQNDOkjtJzjB+Ml/ksambZ
 5CS90Ma8gUWVEg9vbCgDbneZ2HSxJGo3PpFRzyisRh6FqeZwtq+b37gS3K5gsTgegmHlt41T9MO17
 vLCHdyh/BC8FvotjKadarj7RWua2gLVglIbvqHL4VlSYFw9YKWs92qXZQCgsltObWxSA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Fnz6PMKzzX8rUPOZzgjEK4WgpKeHuRwnc+6Rs6FctgA=; b=hyvoxtuquAcJ+gxgr9kXDcXemT
 5C2guwmebQHBu6U7j+c0/4gA0KH5tDxP2xIbvb2H6dGYS5PMLj4iWM9F4MoQ0nGh6kTJ9j2lJRlAW
 ntkYU3mILr32UxX/JroSEVWw2pcFUVlphseyf6IrtdeE15Gt/Q56qh9BpRo9/3uD8GyQ=;
Received: from plesk.hostmyservers.fr ([45.145.164.37])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7iDs-00021g-49 for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Apr 2025 22:05:56 +0000
Received: from arnaudlcm-X570-UD.. (unknown
 [IPv6:2a01:e0a:3e8:c0d0:d851:318b:70da:57a7])
 by plesk.hostmyservers.fr (Postfix) with ESMTPSA id 197C63237FB;
 Wed, 23 Apr 2025 21:47:17 +0000 (UTC)
Authentication-Results: Plesk;
 spf=pass (sender IP is 2a01:e0a:3e8:c0d0:d851:318b:70da:57a7)
 smtp.mailfrom=contact@arnaud-lcm.com smtp.helo=arnaudlcm-X570-UD..
Received-SPF: pass (Plesk: connection is authenticated)
To: syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com
Date: Wed, 23 Apr 2025 23:47:10 +0200
Message-ID: <20250423214710.551189-1-contact@arnaud-lcm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <68094bc8.050a0220.2c0118.0ac0.GAE@google.com>
References: <68094bc8.050a0220.2c0118.0ac0.GAE@google.com>
MIME-Version: 1.0
X-PPP-Message-ID: <174544483750.12415.18414490868860721087@Plesk>
X-PPP-Vhost: arnaud-lcm.com
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  #syz test --- a/fs/jfs/jfs_dmap.c +++ b/fs/jfs/jfs_dmap.c
 @@ -1385,6 +1385,12 @@ dbAllocAG(struct bmap * bmp, int agno, s64 nblocks,
 int l2nb, s64 * results) (1 << (L2LPERCTL - (bmp->db_agheight << 1))) / bmp->
 [...] Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [45.145.164.37 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [45.145.164.37 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1u7iDs-00021g-49
X-Mailman-Approved-At: Wed, 23 Apr 2025 22:27:11 +0000
Subject: [Jfs-discussion] syztest
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
From: Arnaud Lecomte via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Arnaud Lecomte <contact@arnaud-lcm.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

#syz test

--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -1385,6 +1385,12 @@ dbAllocAG(struct bmap * bmp, int agno, s64 nblocks, int l2nb, s64 * results)
            (1 << (L2LPERCTL - (bmp->db_agheight << 1))) / bmp->db_agwidth;
        ti = bmp->db_agstart + bmp->db_agwidth * (agno & (agperlev - 1));
 
+       if (ti >= le32_to_cpu(dcp->nleafs)) {
+               jfs_error(bmp->db_ipbmap->i_sb, "Corrupt dmapctl page: ti out of bounds\n");
+               release_metapage(mp);
+               return -EIO;
+       }
+
        /* dmap control page trees fan-out by 4 and a single allocation
         * group may be described by 1 or 2 subtrees within the ag level
         * dmap control page, depending upon the ag size. examine the ag's



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
