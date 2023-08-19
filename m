Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 73ED5781AA6
	for <lists+jfs-discussion@lfdr.de>; Sat, 19 Aug 2023 19:32:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qXPoO-0001Jv-AO;
	Sat, 19 Aug 2023 17:32:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <halip0503@gmail.com>) id 1qXPoM-0001Jp-RR
 for jfs-discussion@lists.sourceforge.net;
 Sat, 19 Aug 2023 17:32:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wsby/C1UcyJ8rjbjsYf/N7EFvfuqmKzyTlBjmpiFcO8=; b=JwQbdxXO9tlNj4xrQ1bt5L29o2
 1EMtwwtpDdXmGNVKdV2N6MofoBKjdHJaJ6oiWl0QGi8qUrNeMdKQgTwHrBllcuLv3DZHjhW84faHC
 kI6KOeHD7QEjintt2qFeF+HnlO+yKQ0QArMXC5+CPrPRf87TDryUgM53/0TUjLQ1GamU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wsby/C1UcyJ8rjbjsYf/N7EFvfuqmKzyTlBjmpiFcO8=; b=CablLrkdElEYeJhYOvNopnBFXw
 hHQGrV3L9WrEkeOF/aOCcovEoBl0PylYy3i7Mcu5bj0bBYnShQurrWgC6QmuSqTaIdDdD90JK/+08
 ALLpxFr4KRfYWI98+A94MOtsFdNfeFrMzb/4e1J2UvoMLuRqQYikMlerfniSIMKmAZos=;
Received: from mail-lj1-f177.google.com ([209.85.208.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qXPoK-009iAr-3X for jfs-discussion@lists.sourceforge.net;
 Sat, 19 Aug 2023 17:32:31 +0000
Received: by mail-lj1-f177.google.com with SMTP id
 38308e7fff4ca-2b9cf2b1309so22869071fa.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 19 Aug 2023 10:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1692466341; x=1693071141;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wsby/C1UcyJ8rjbjsYf/N7EFvfuqmKzyTlBjmpiFcO8=;
 b=E7Ku42Dqqgf+CDj2pZlq2dk1dEzmqfhRCXS4NjHGquGpQgwu27YyTC3vKu6dAjIpkO
 O5MqfT4DIYHSlKUcQkXrIySHFbjhF8eUChSIeo0YVcKRnsp8pBas3HLi3bzaTnD+kRTn
 i1HzLj+Rx73kGlbEf9i5faRYtvXaXI/G63nYou/SaA+n1nnFwMdu+WOs+hTVbGAlIHCf
 /WIEDHLLlinLcAX4l2v3rSUGruvEUunI2VXGbaO48u61Jw2sjZZwUADznQC8/KG5r0d7
 5hn/XxUXkcWmmGRI8rV67PjnXcDUQN123YP16ntAkaJMrhdoYznI0lBIQhQ+53t/Mpl5
 sbtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692466341; x=1693071141;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wsby/C1UcyJ8rjbjsYf/N7EFvfuqmKzyTlBjmpiFcO8=;
 b=kflPhl5+WOySeY6OkeaQO8Zb127KoQKdDnC13A1jmgSFsksW8bvhRfFgg9o7+kyM3s
 DXNJtNz+2LwzqcVXE9XKCz43co8Whyv7kO3SNS88ej1ORAw+OVJR9NCr/mui7AypfVY3
 XGhrfiBi/Nl+UNCyIr4f+36bOWwf2gtEYKish2MasKVovfIUpnmNFjTGVxlhBP2sNPZr
 ASBjvnkDCoTqsSEkBCEMe944auFyaSUkOIDqs6GHdWcw7tdA2yRTqCbO2e674KMtWuqC
 ksRypF35J3xjhzdsTjxcfTbfgStApiFBDHE7NSghQhFV+kskYKVub4o2hJcSkA41l7lx
 DWYA==
X-Gm-Message-State: AOJu0YwKsnU+WL90OTL8rm29gPXHVPbKKJAXGARp3k45zpcvhFgUUMdW
 cqm1b4zwxRNibGptus6kuHA=
X-Google-Smtp-Source: AGHT+IFZiCZgMXyyaT8bSAl0dN1Hov0jEgeh6KnXr88hNtN4pYLIACeBqwyy62bSqn/NXHHicik7aA==
X-Received: by 2002:a2e:9d81:0:b0:2bb:96de:f554 with SMTP id
 c1-20020a2e9d81000000b002bb96def554mr790077ljj.6.1692466341154; 
 Sat, 19 Aug 2023 10:32:21 -0700 (PDT)
Received: from halip-Pc.42.fr (ip-95-221-49-4.bb.netbynet.ru. [95.221.49.4])
 by smtp.gmail.com with ESMTPSA id
 h16-20020a2e3a10000000b002b9ccbe074bsm1216522lja.73.2023.08.19.10.32.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Aug 2023 10:32:20 -0700 (PDT)
To: gregkh@linuxfoundation.org
Date: Sat, 19 Aug 2023 20:32:16 +0300
Message-Id: <20230819173216.6098-1-halip0503@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <2023072336-seventy-untangled-cbba@gregkh>
References: <2023072336-seventy-untangled-cbba@gregkh>
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Alexei Filippov The lack of checking
 bmp->db_max_freebud
 in extBalloc() can lead to shift out of bounds,
 so this patch prevents undefined
 behavior, because bmp->db_max_freebud == -1 only if there is no free space.
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.177 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [halip0503[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [halip0503[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.177 listed in wl.mailspike.net]
X-Headers-End: 1qXPoK-009iAr-3X
Subject: [Jfs-discussion] [PATCH v5] jfs: validate max amount of blocks
 before allocation.
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
Cc: shaggy@kernel.org, halip0503@gmail.com,
 syzbot+5f088f29593e6b4c8db8@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Alexei Filippov <halip0503@gmail.com>

The lack of checking bmp->db_max_freebud in extBalloc() can lead to
shift out of bounds, so this patch prevents undefined behavior, because
bmp->db_max_freebud == -1 only if there is no free space.

Signed-off-by: Aleksei Filippov <halip0503@gmail.com>
Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Reported-and-tested-by: syzbot+5f088f29593e6b4c8db8@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?id=01abadbd6ae6a08b1f1987aa61554c6b3ac19ff2
---

Changes since v1:
	-Commit message fix. Add Fixes line.
Changes since v2-v4:
	-Commit message fixes.
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
