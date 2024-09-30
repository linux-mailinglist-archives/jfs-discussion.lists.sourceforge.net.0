Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE3A989C53
	for <lists+jfs-discussion@lfdr.de>; Mon, 30 Sep 2024 10:13:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1svBWb-0004Ea-HC;
	Mon, 30 Sep 2024 08:12:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghanshyam1898@gmail.com>) id 1svBWa-0004ED-2n
 for jfs-discussion@lists.sourceforge.net;
 Mon, 30 Sep 2024 08:12:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nKf47q4qzBnZJUXqLq9Cg9vwr1MLw2EnMAazJatgi74=; b=i7jD09RMC3zU/X7ePXSMEn7xOw
 F02BsZ6osuBxtpKwCUlBsyUplFzxxUY3CruDjT0zUSP/9oGSeUkhsGDE1NqOetZZiJCxVvTAGbvrW
 gAeIhu45ZhgfjQtuzIiN/w0IupSYygDyBewvv+85oQCIFBu7di7T0fBSjIjY7A9vMJh8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nKf47q4qzBnZJUXqLq9Cg9vwr1MLw2EnMAazJatgi74=; b=K
 onoLraXDyw27btliBUdF/qR84L6TlPjljl/l58NXnXmFRcF66CpjPlYkrAMCZChwEzUcGiWTkJZjc
 q/+DY1+At3TbzAvLv3NUBId8Znwx9u/eoPrsFI568536RsWo5z4X6Xc0A/8Jht9ktt8oUtHKqlOjc
 816fZdsXK4YLhTKw=;
Received: from mail-pl1-f177.google.com ([209.85.214.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1svBWZ-0001XH-FP for jfs-discussion@lists.sourceforge.net;
 Mon, 30 Sep 2024 08:12:56 +0000
Received: by mail-pl1-f177.google.com with SMTP id
 d9443c01a7336-20b90984971so4459325ad.3
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 30 Sep 2024 01:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1727683970; x=1728288770; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=nKf47q4qzBnZJUXqLq9Cg9vwr1MLw2EnMAazJatgi74=;
 b=Yb/DEpt55ZqdCGH9e0wOHbF6e+/o8yz3BefK7JXGA/1yIFJuWCQ41S6rshkplAj5uz
 0h40FsDE4RRBq2Ue7VzxP7nNfbPs+GGu7WoNQ3ngWBl8RUoavTpMza1WJFSwZJHoIyfd
 QYWpTW2li9LnW9DPBTr1PuvU0IhzJulv8bEidJv+IYqzeJVr88PdSKJ8pYuq9QUVbVNN
 rrxxE9EYMlmVIBkiyRjpp9oWLu5zhTQUYZxnFjbpqDeIXsFMJB8c//zwBzJY+AetRuCD
 sR8fQUFJmnaCOFqRrOBrDDwYFh5aAQe4BZAKh8YNAEhx1LA/7uydKAdwzqoIhFdBM+L2
 0JWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727683970; x=1728288770;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=nKf47q4qzBnZJUXqLq9Cg9vwr1MLw2EnMAazJatgi74=;
 b=q69ycWjueybunXeAR/tOHYV4IUrDb1dL4SleR/4g9hqPug6gpwmuKyhLyZvqOqx2ZN
 /ZtnaUwtEI4o44/7pp1ETnmz5rrJyb95dsv8xegIm1DVzwZiYWSPZfJignJfsC+IvojI
 jkvD95ATV2vPFJ4LxOpGx15VP3YRzCtQUspoGUEmXY06sYOQiERjNoEEejluCFC0KjpW
 Os2faaRRv/AzucZC+wnYwyKtd23Mm1GOhhtneBabBobqmqEM95cnVR8+52ppzg3V3h2N
 tYz7fwWTKTIxBlt6rtpdBwTX9CfRsfN3l5V4oMRvo5voljx6Er1mUKn+h1nS3rl7xr97
 qyew==
X-Gm-Message-State: AOJu0YzIbbqjhyOEltlzOsPM9ess+1CxZu9D9sTmzBP3Wa6m2Pz6DzgL
 gFa2IEPiHSzVBraWfBA7gDS4qofyVlaptLe0Pi2bwnYlwUF7QSgK
X-Google-Smtp-Source: AGHT+IEvB7nEgYPcyext9HcfeNP/SQZqPskXRD17yWTaQoiKzyunJTitrYT4WJQmKOowOIy6+NmG7Q==
X-Received: by 2002:a17:902:dacc:b0:20b:8ef3:68a with SMTP id
 d9443c01a7336-20b8ef30b87mr29858625ad.59.1727683969675; 
 Mon, 30 Sep 2024 01:12:49 -0700 (PDT)
Received: from dell-xps.. ([2405:201:3036:a902:439e:137:a1fb:3127])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20b37e4e61csm50105825ad.237.2024.09.30.01.12.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2024 01:12:49 -0700 (PDT)
To: shaggy@kernel.org, ghandatmanas@gmail.com, juntong.deng@outlook.com,
 aha310510@gmail.com, peili.dev@gmail.com, ghanshyam1898@gmail.com,
 eadavis@qq.com
Date: Mon, 30 Sep 2024 13:42:18 +0530
Message-Id: <20240930081218.2992648-1-ghanshyam1898@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When dmt_budmin is less than zero, it causes errors in the
 later stages. Added a check to return an error beforehand in dbAllocCtl
 itself.
 Reported-by: https://syzkaller.appspot.com/bug?extid=b5ca8a249162c4b9a7d0
 Signed-off-by: Ghanshyam Agrawal --- fs/jfs/jfs_dmap.c | 5 +++++ 1 file
 changed, 5 insertions(+) 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ghanshyam1898[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghanshyam1898[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.177 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.177 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1svBWZ-0001XH-FP
Subject: [Jfs-discussion] [PATCH] jfs: fix shift-out-of-bounds in dbSplit
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
From: Ghanshyam Agrawal via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Ghanshyam Agrawal <ghanshyam1898@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 syzbot+b5ca8a249162c4b9a7d0@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

When dmt_budmin is less than zero, it causes errors
in the later stages. Added a check to return an error beforehand
in dbAllocCtl itself.

Reported-by: syzbot+b5ca8a249162c4b9a7d0@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=b5ca8a249162c4b9a7d0
Signed-off-by: Ghanshyam Agrawal <ghanshyam1898@gmail.com>
---
 fs/jfs/jfs_dmap.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 974ecf5e0d95..f65a07252c22 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -1808,6 +1808,7 @@ dbAllocCtl(struct bmap * bmp, s64 nblocks, int l2nb, s64 blkno, s64 * results)
 	s64 b, lblkno, n;
 	struct metapage *mp;
 	struct dmap *dp;
+	dmtree_t *tp;
 
 	/* check if the allocation request is confined to a single dmap.
 	 */
@@ -1819,6 +1820,10 @@ dbAllocCtl(struct bmap * bmp, s64 nblocks, int l2nb, s64 blkno, s64 * results)
 		if (mp == NULL)
 			return -EIO;
 		dp = (struct dmap *) mp->data;
+		tp = (dmtree_t *) &dp->tree;
+
+		if (tp->dmt_budmin < 0)
+			return -EIO;
 
 		/* try to allocate the blocks.
 		 */
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
