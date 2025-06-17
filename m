Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3265BADBFEA
	for <lists+jfs-discussion@lfdr.de>; Tue, 17 Jun 2025 05:33:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:Date:To:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2kXzr8g+3bf9SvzrWwfczglcNSURNkj8GfE6lBQoQh8=; b=S4pNIAF1P1eRJO08L7L197wIg5
	WlJ8pRH2WKWkyLx22iWDm1MkXF0Edzk8pyCDA+NgNMqNMt9LdTBnKJxFanpQ7jGue/jVG/yRIWXwQ
	OiHKo4paCSfs37nfuzLFbVlh72ZluXTPaUeI0ISTw/nEqBtOW5QC39RA3Ap3E9Jw/IZA=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uRN48-00085o-7u;
	Tue, 17 Jun 2025 03:32:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1uRN46-00085i-Vg
 for jfs-discussion@lists.sourceforge.net;
 Tue, 17 Jun 2025 03:32:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EHB/nKe3H6oNehWCjTnKytYQyFXIqU682RBCgDLU448=; b=feQgmI3H8fdBwDbtlF3XcUdrEI
 t2QhKBtBpZuVwhfha3VGXqfzt3mvOj+S9dBRF1x19Qij/kJMGFVD++HzEKRkWWCU4TqA8kmFlnlSz
 FAuRtMIeVWNZDXL9OPbA1UkPf5SzqncLDjeLmPnmKUZKpk2yGexeotU8npbN/7hyBp/s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EHB/nKe3H6oNehWCjTnKytYQyFXIqU682RBCgDLU448=; b=WnHAIOpcbbdf/zbLbgm5EFYgZw
 xDeBVy2xQ2Auy4ldJlG3MgBfafinEzujBQVqTmW6p1TGpjuSzFalEYW55lG9yvEk2R6NPuSRCnb2m
 /uKxW2AXDpbnwxu3c0TJ/H8r6XUSr91SCArUMkNi10kGYThjYJOZ0sRaBDKKLTrnyiIE=;
Received: from out203-205-221-240.mail.qq.com ([203.205.221.240])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uRN45-0005TD-TB for jfs-discussion@lists.sourceforge.net;
 Tue, 17 Jun 2025 03:32:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1750130855; bh=EHB/nKe3H6oNehWCjTnKytYQyFXIqU682RBCgDLU448=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=mYUSlCsTAaS1RucXKO36k6N8FGmWG9fZygVEd8Jo7XmH2QnVXf9/Iae1yArfgPj+o
 NM8n8vBDYifCVDI5wL650Bk5hkMn0OfL1HKpfdvUyqXIgLHet5ClEricpxCicUW4JH
 JUxuyAOukr0r2gzX6Mr0bWv937G0gpkyt1q1qob8=
Received: from pek-lxu-l1.corp.ad.wrs.com ([111.198.228.63])
 by newxmesmtplogicsvrsza29-0.qq.com (NewEsmtp) with SMTP
 id 4F88BC3D; Tue, 17 Jun 2025 11:19:56 +0800
X-QQ-mid: xmsmtpt1750130396tbcgx4cp5
Message-ID: <tencent_279220DDBEDD93995BCF998D8B25B18D8B07@qq.com>
X-QQ-XMAILINFO: MhK4DKsBP06if8MPSwrVCdWpm74FUszJnySk2ZCmHvLprutXp1AvspMspqJx8Q
 BFqtuQAseR3kHWNXp91IQKn/r1PDaLoX0Cpd1ui16Prh7LspeaUTMdiKxu4YRSvQ7ra4SMtMmxvT
 RHGdO7jqB8dRplXxB/POb8aCMz9u871bMovBZT763J6P2yNciuxkzDs3S8dong3wZj0xGvEiRCUJ
 tg6P9E5tv04cWvAJtv7gYQ9UFqxOpxQZJyVP6XeCCVqzEi7BN7op0Mo4SLfdHHZhmW8yM9wVTDJG
 4Cg4BLzVIHBJyo0r8zM7d8gq/SEn+Ja1lBSPoFndn7xs8brtIDgfa4Ni6dgRTrHSSqEoxiDKNgpS
 SkwoOiBeXxga6QyzSlwZI1Aic6RZXJE2KCEX2aLV4FxsP09cZZqowp4wUUNFcQdxQVUY1Gk1EH/7
 KP/YBaV/OpqyYajBNIMSZN593WOG1ZjD2Ql2zp2aK8Rfc5H6is60ZiWqmegLm6sT56DAGW8BLwus
 2zHduwdTD7rHb+Iif2iWXsyhKq3coGVosCpzXSBOTqA+l/YmtussyoTBc+TUNiCOg2ZuUyuevxlr
 ZPZpj+zHFjA7dmPiL6ncdQfwHbXALAtD7nMJSI8Ci2b+aRsia5PV16EirCPrO6Pxby5ve+LA73m4
 C8HFfG7yek+GYAvqz7noHVWKhUeRJXrSFGrSTwt2DCMvC0PXZzzSjPvdOlK2Haj9WinUI6vD5uuO
 pdoflCtc9UZIJ/SyR/2c/BySUnp0XhW4Nq4SrtKH4RBxBo2mZly6m/NzURjDBQRUDQ5eSmxDWMXC
 YVTMh051mctFpzGY6A1JnGUXz2UQDtpxINkZMQBI++QFoJFwz0jpvArlUfK4D6MnNu614oqrVicZ
 gxLa/OV2Npon3ynDOKZqhO3vqSpsg9sav8xyYO3XXmenckNjpY889UTrCQInol28Ar1lahXVfaUA
 ssQyD12wSoYbAzTVsu2HkIpOJxxH5mhHZQGz9mfOZ5LR/Ra5GTuyMngQXCI0lmmS5JivO9OZE=
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
To: syzbot+077d9ebda84f426a6a1e@syzkaller.appspotmail.com
Date: Tue, 17 Jun 2025 11:19:57 +0800
X-OQ-MSGID: <20250617031956.334239-2-eadavis@qq.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <6850d37f.a70a0220.395abc.01f9.GAE@google.com>
References: <6850d37f.a70a0220.395abc.01f9.GAE@google.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When it is clear that leafidx is too large,
 a warn is triggered
 to distinguish it from other sizes. Reported-by:
 https://syzkaller.appspot.com/bug?extid=077d9ebda84f426a6a1e
 Signed-off-by: Edward Adam Davis --- fs/jfs/jfs_dmap.c | 6 +++++- 1 file
 changed, 5 insertions(+), 1 deletion(-) 
 Content analysis details:   (3.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.205.221.240 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [eadavis(at)qq.com]
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP addr
 1)
X-Headers-End: 1uRN45-0005TD-TB
Subject: [Jfs-discussion] [PATCH] jfs: Issue a warning when leafidx is too
 large
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
From: Edward Adam Davis via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Edward Adam Davis <eadavis@qq.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

When it is clear that leafidx is too large, a warn is triggered to
distinguish it from other sizes.

Reported-by: syzbot+077d9ebda84f426a6a1e@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=077d9ebda84f426a6a1e
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
---
 fs/jfs/jfs_dmap.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 35e063c9f3a4..7e3c5f6826d8 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2856,9 +2856,13 @@ static int dbJoin(dmtree_t *tp, int leafno, int newval, bool is_ctl)
 static void dbAdjTree(dmtree_t *tp, int leafno, int newval, bool is_ctl)
 {
 	int lp, pp, k;
-	int max, size;
+	int max, size, max_idx;
 
 	size = is_ctl ? CTLTREESIZE : TREESIZE;
+	max_idx = is_ctl ? LPERCTL : LPERDMAP;
+
+	if (WARN_ON_ONCE(le32_to_cpu(tp->dmt_leafidx) >= max_idx))
+		return;
 
 	/* pick up the index of the leaf for this leafno.
 	 */
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
