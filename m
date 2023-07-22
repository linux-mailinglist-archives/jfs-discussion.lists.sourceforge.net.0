Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4A575F9E1
	for <lists+jfs-discussion@lfdr.de>; Mon, 24 Jul 2023 16:29:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qNwYC-00019p-T8;
	Mon, 24 Jul 2023 14:28:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <halip0503@gmail.com>) id 1qNDWo-00040J-3m
 for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Jul 2023 14:24:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HEMPNWlfZvC+ZaudeklsqNdBgq4KJbNHXO/19SnqXeY=; b=hroXgXJhbCQgf6XRJWvv2Y3/60
 GecwYcdRkX6tvkJziykJ4on9oZ49N/Z6ZlHblS7h3tvYbd03ytdaQfSf/IUj+K/75o7XSlFLOHe4e
 ZKPh1Z0FweZCFIvCcUCZGjfRVbxKxefSXXoVcUxRtDK9XapzP1PyOyOukig7abwyyGsQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HEMPNWlfZvC+ZaudeklsqNdBgq4KJbNHXO/19SnqXeY=; b=G
 sUwlQSE4NEUFBKKglyaAoJv211VOnKT52GMD7bzRXlbJEbiJeeIfahz9OKa47HVBizibCtgbzBqY6
 Cw6J7KhBafyNMNtDgHasiLNB7ZuVIiH4tSdhRlDIXeHzEbgCYBLyIFcagDmEAWgVvoyKMKMTU5r63
 u7hoqCwXdcKg/mmQ=;
Received: from mail-lf1-f42.google.com ([209.85.167.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qNDWk-00065D-Ie for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Jul 2023 14:24:14 +0000
Received: by mail-lf1-f42.google.com with SMTP id
 2adb3069b0e04-4fba8f2197bso4500429e87.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 22 Jul 2023 07:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690035844; x=1690640644;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=HEMPNWlfZvC+ZaudeklsqNdBgq4KJbNHXO/19SnqXeY=;
 b=CX/YDMFJYKOCdP4a3Jzb9GeKS39qNoJnsb4Yyu9v6qEQLAaJVlyX1SWqDSTcUpt2ZK
 BZiZ+JKrNwJMX6vMEtpH8VemfrDrdfqabCOy44aT/eYluzqB6j1XE1BlCtP9sb+C+lg5
 jz8rmNydDqQwl6KIMCmZ6Y5ybbi+hhbq9GSygv3C4631CpO11YKRdVHrP9bJ9AN9hDrn
 rWJq32dZzLxFmfOLBTv2GDs2iwS5s2QB6D05rnSowXcgvca2gpAqGPyK2+TSnAeZucpl
 Y1mQVCR0WJiaomYBurfmWNz1WKzEpijS0NC1ICVMY/qfgp02mGbU8oDqh8+gln3VgBb8
 0eYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690035844; x=1690640644;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=HEMPNWlfZvC+ZaudeklsqNdBgq4KJbNHXO/19SnqXeY=;
 b=Yo/g1Si7igKbtOl8ezJ8yWQKgkymU6yKgbznFdk/cfp6Dr/kaUt+xZx9+7pHkY6jAs
 Lql/tkCBEI7i+tu8PHHHMqQPrcgX6IyUQf/wOXYqQkNJLi/REqpvNXpeAvAkBttGDvIc
 7yRczFG+ecMzgqzs/iuEuUnvqEd/aqE6kO4/41Pwj4aRCQnc3NLtBcSJUctpxHUk3cYO
 ujwQBSMQuyyNIk81PupS61E1SeJ46EZI/c2v3wi59r6ITWKF8JAEvZ+OYE0ICE//5ei/
 AUbSQP9Vue9yeznyHV56cJCUPFHWnjEw9nWnZpsoERxGEwos8kcUsu8+XE64eZBb3PBJ
 uO9Q==
X-Gm-Message-State: ABy/qLZSnix265SE6dzk+dUWKD1mQ/WOfA68DA+nltn9BRwTORjGer8S
 fji2mwFH68EbG85UTBMwHYE=
X-Google-Smtp-Source: APBJJlE6gDQMTodJm2ZziRpUo9Zx+TWL5mbtIxZ430omJ/panegE+Km6XqOQdW5hkmyT8FwWCoNnNQ==
X-Received: by 2002:a19:770a:0:b0:4f5:a181:97b8 with SMTP id
 s10-20020a19770a000000b004f5a18197b8mr2658409lfc.25.1690035843438; 
 Sat, 22 Jul 2023 07:24:03 -0700 (PDT)
Received: from halip-Pc.42.fr ([93.188.41.70])
 by smtp.gmail.com with ESMTPSA id
 v10-20020a056512048a00b004fb86c89fa1sm1213642lfq.135.2023.07.22.07.24.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Jul 2023 07:24:03 -0700 (PDT)
To: shaggy@kernel.org,
	gregkh@linuxfoundation.org
Date: Sat, 22 Jul 2023 17:24:01 +0300
Message-Id: <20230722142401.71257-1-halip0503@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Alexei Filippov The lack of checking
 bmp->db_max_freebud
 in extBalloc() can lead to shift out of bounds,
 so this patch prevents undefined
 behavior, because bmp->db_max_freebud == -1 only if there is no free space.
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [halip0503[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [halip0503[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.42 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.42 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qNDWk-00065D-Ie
X-Mailman-Approved-At: Mon, 24 Jul 2023 14:28:40 +0000
Subject: [Jfs-discussion] [PATCH] jfs: validate max amount of blocks before
 allocation.
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
From: Aleksei Filippov via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Aleksei Filippov <halip0503@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net,
 syzbot+5f088f29593e6b4c8db8@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, Alexei Filippov <halip0503@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Alexei Filippov <halip0503@gmail.com>

The lack of checking bmp->db_max_freebud in extBalloc() can lead to
shift out of bounds, so this patch prevents undefined behavior,
because bmp->db_max_freebud == -1 only if there
is no free space.

Signed-off-by: Aleksei Filippov <halip0503@gmail.com>
Reported-and-tested-by: syzbot+5f088f29593e6b4c8db8@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?id=01abadbd6ae6a08b1f1987aa61554c6b3ac19ff2
---
 fs/jfs/jfs_extent.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/jfs/jfs_extent.c b/fs/jfs/jfs_extent.c
index ae99a7e232ee..a82751e6c47f 100644
--- a/fs/jfs/jfs_extent.c
+++ b/fs/jfs/jfs_extent.c
@@ -311,6 +311,11 @@ extBalloc(struct inode *ip, s64 hint, s64 * nblocks, s64 * blkno)
 	 * blocks in the map. in that case, we'll start off with the
 	 * maximum free.
 	 */
+
+	/* give up if no space left */
+	if (bmp->db_maxfreebud == -1)
+		return -ENOSPC;
+
 	max = (s64) 1 << bmp->db_maxfreebud;
 	if (*nblocks >= max && *nblocks > nbperpage)
 		nb = nblks = (max > nbperpage) ? max : nbperpage;
-- 
2.25.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
