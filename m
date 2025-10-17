Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04EE3BE8F70
	for <lists+jfs-discussion@lfdr.de>; Fri, 17 Oct 2025 15:41:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-Id:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gB3/aWfwKJAY60h9OmGnHxHNRSdTgELAybigmVLdzZ0=; b=Z4WS17wvQZkdwb6O2QHVdCAxSo
	RcP295CmmHdEeCFCnPb3Eau3eN+RUcUgNbqXePPRhj++t+umSBo58WrnNAjyhW3bAUDC0TiwE+n5w
	5f4xmFqqbDZqjUMgn5geTRPQ+BoP80MDlSxY54gUNq0Zk6CjFYQ4U7+7MyM8tKe4MiPg=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v9khJ-0007eX-9p;
	Fri, 17 Oct 2025 13:40:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <xiaopei01@kylinos.cn>) id 1v9fqP-0006ZG-QB
 for jfs-discussion@lists.sourceforge.net;
 Fri, 17 Oct 2025 08:29:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r1OmDMwLv7C/eP0KLVL9rJEccL6af0XdIGj1VGrx6N0=; b=At2NMzZmfHZ/mrqq/4vJmMM5mE
 9gowKJfhI0IATDYxUUGoOy2gyPZkDzgp3WUEh63JeU/YmdnIhJAbu0TcrTzKgYnLZoxFZ8Pd47U74
 6Wty1nIWR9Cx2h++o43jqOqm8b3soLdXPhi6iSzvwYu8MUfacQQQkdfaM/jxKzq2ktao=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r1OmDMwLv7C/eP0KLVL9rJEccL6af0XdIGj1VGrx6N0=; b=iY9iQVQhyIgFc6mfIB7CGjn0/k
 JQbcDp0KlTl4czcnE6yRrzGBcYpTuFkbjG/6ExsEBPvcWMptdcp0KF5b7JwVb81AQHKACoNx6QzEv
 fMlrIfNf1Nv3sTN9o1MKSaJxtSAQNjeBmM/UbCHopQj9OrjhqKP7TaSFcmstcjOobfIs=;
Received: from mailgw.kylinos.cn ([124.126.103.232])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v9fqO-0005zN-TV for jfs-discussion@lists.sourceforge.net;
 Fri, 17 Oct 2025 08:29:49 +0000
X-UUID: 3b76fe44ab3111f0a38c85956e01ac42-20251017
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6, REQID:af7cda80-b4c6-46ce-bbe4-d4c8ec9ffdd7, IP:0,
 UR
 L:0,TC:0,Content:0,EDM:25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
 release,TS:25
X-CID-META: VersionHash:a9d874c, CLOUDID:2e1847c0b96745a96810794bc074a1b7,
 BulkI
 D:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|850,TC:nil,Content:0|50,EDM:5,
 IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:
 0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 3b76fe44ab3111f0a38c85956e01ac42-20251017
X-User: xiaopei01@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
 (envelope-from <xiaopei01@kylinos.cn>)
 (Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
 with ESMTP id 1929928010; Fri, 17 Oct 2025 16:13:58 +0800
From: Pei Xiao <xiaopei01@kylinos.cn>
To: syzbot+4b717071f1eecb2972df@syzkaller.appspotmail.com
Date: Fri, 17 Oct 2025 16:13:55 +0800
Message-Id: <d5067a639f2341e6cce0a48f810c22d2e36c33a8.1760688719.git.xiaopei01@kylinos.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <68f1c794.a00a0220.361615.000f.GAE@google.com>
References: <68f1c794.a00a0220.361615.000f.GAE@google.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c index
 cdfa699cd7c8..9d26c5dc4efd
 100644 --- a/fs/jfs/jfs_dmap.c +++ b/fs/jfs/jfs_dmap.c @@ -1435,6 +1435,11
 @@ dbAllocAG(struct bmap * bmp, int agno, [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1v9fqO-0005zN-TV
X-Mailman-Approved-At: Fri, 17 Oct 2025 13:40:43 +0000
Subject: [Jfs-discussion] [PATCH] jfs: test syz test
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
Cc: Pei Xiao <xiaopei01@kylinos.cn>, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index cdfa699cd7c8..9d26c5dc4efd 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -1435,6 +1435,11 @@ dbAllocAG(struct bmap * bmp, int agno, s64 nblocks, int l2nb, s64 * results)
 			blkno &= ~(MAXL1SIZE - 1);
 		else		/* bmp->db_aglevel == 0 */
 			blkno &= ~(MAXL0SIZE - 1);
+		
+		if (unlikely(budmin < 0)) {
+   			WARN_ON_ONCE(1);
+    			budmin = 0;
+		}		
 
 		blkno +=
 		    ((s64) (ti - le32_to_cpu(dcp->leafidx))) << budmin;
-- 
2.25.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
