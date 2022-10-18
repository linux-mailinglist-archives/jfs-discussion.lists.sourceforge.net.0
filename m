Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E980B602F96
	for <lists+jfs-discussion@lfdr.de>; Tue, 18 Oct 2022 17:23:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1okoRA-0005qe-GK;
	Tue, 18 Oct 2022 15:23:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <colin.i.king@gmail.com>) id 1okoR9-0005qY-Vd
 for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Oct 2022 15:23:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OuktP/aQVcIixsd3H1BycnEwVjhNMLHzZI3vDKt2TCE=; b=iyeoNzbSF09jy+SKcPlxMqL8Pk
 YlSPdv6u17ki0yOoZanFjGUoyTeuiZHfgbyBNf/vsluXh3oClupUnb9lfRciBg0RUClcUCuZMtjoI
 ZsqIE6eZ91iGuGDFqgdBIQtHLHs5Q3yVXUdHni+OiMpzeuKGOS++XutGHUw+4tBYRbpI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OuktP/aQVcIixsd3H1BycnEwVjhNMLHzZI3vDKt2TCE=; b=e
 GNoeWXsmpt4iWJLFNf5n6JeqJwcTHUVjC2/58I//AZQs/TvRCH7g1SoLjfzwMmgPfustphVN3bzHA
 TGy4oBi6gVshexr12lT9o0sZWPgBKE8t21z9Qdbx4Bv8XLSII1sHBwueoHp/hg80GS05A+ulc/516
 kZmduwsrHZ+P30yY=;
Received: from mail-wm1-f49.google.com ([209.85.128.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1okoR3-0008JC-TG for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Oct 2022 15:23:23 +0000
Received: by mail-wm1-f49.google.com with SMTP id iv17so10964795wmb.4
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 18 Oct 2022 08:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=OuktP/aQVcIixsd3H1BycnEwVjhNMLHzZI3vDKt2TCE=;
 b=hDAwsrhsKS+SPsEjAinvEM/ehe7PzpVeQGv9sXVKw7hsS+pNecMp18s8IOgXZFlf/R
 IbhA1U2y8ZnirNxe6g/L4SHb4FO7eWzoTHjn7t2Lies5NJMUeFtnyNssEe/KuZcYE3Tf
 CW20OL6yqvPSVegMUsjJQ5gIHoYsyQgJAj1eFoaq7QOZgOk3DxsDmnJv0BArBNFW2CRr
 DfmJ4BJIalnBnPBSIg/6pLEOR1grYCQMxDmKwto6Ik8mD+NW1nR5tQNOqQJtZRMCWFDL
 2HJk9MJrgBwbuGYk0I0/8PwU5P3g/PDblCTgwnU7IdUBepTl7ZYirEo5KFNJ0qV1iKxg
 LiQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=OuktP/aQVcIixsd3H1BycnEwVjhNMLHzZI3vDKt2TCE=;
 b=4WxlmWLPUYv0GAaXHmQzjG7TMYq2B5MslNUMAibN5B4mV7PAPA3qskxDObm5EVWf43
 vpucWeJE6VzP1ga8/a86f5S8DEzFjlPzguPJvTggYOvJCkeejWgv00pAIVwGfzzR1e46
 gnuggeGWdwcp/EKPnaHKLbEFiiJJ/555Dnl1x8H342JJyNhwzMq3p+4Nl3gNSYfo7oaU
 5toG9XAE4SH9PpKgT3RY1+mXVgccw2n+rXcsx5lacMb3Js1J5JDjFTceJSh+HlRfZVtA
 xo5a9Hrhv49k+4b+GEGUDpvke52TBw6sEyZAd4ElhhBdvIU3txYU/QFxbBAS/pa6V6qE
 U8Ow==
X-Gm-Message-State: ACrzQf0aL6LV3WHaZg6HAPV3Lp9SgZInDWvGpNz8IEojYwV0GPa9Tp+X
 uEvbrakX3xHJlPaJzUoeHqk=
X-Google-Smtp-Source: AMsMyM5up2w2JHyQVaU1eRlRnWFBK3r2aapndJwprZs/HAzxbT7MKeZodL6eY1JPZVSdXRvYu7yU/Q==
X-Received: by 2002:a05:600c:2754:b0:3c6:aba7:5c93 with SMTP id
 20-20020a05600c275400b003c6aba75c93mr2346816wmw.177.1666106591457; 
 Tue, 18 Oct 2022 08:23:11 -0700 (PDT)
Received: from localhost (cpc154979-craw9-2-0-cust193.16-3.cable.virginm.net.
 [80.193.200.194]) by smtp.gmail.com with ESMTPSA id
 az12-20020a05600c600c00b003a62052053csm22308877wmb.18.2022.10.18.08.23.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Oct 2022 08:23:10 -0700 (PDT)
From: Colin Ian King <colin.i.king@gmail.com>
To: Dave Kleikamp <shaggy@kernel.org>,
	jfs-discussion@lists.sourceforge.net
Date: Tue, 18 Oct 2022 16:23:10 +0100
Message-Id: <20221018152310.941770-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The pointers ipaimap and ipaimap2 are re-assigned with values
 a second time with the same values when they were initialized. The
 re-assignments
 are redundant and can be removed. Cleans up two clang scan build warnings:
 fs/jfs/jfs_umount.c:42:16: warning: Value stored to 'ipaimap' during its
 initialization is never read [deadcode.DeadStores] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.49 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [colin.i.king[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.49 listed in wl.mailspike.net]
X-Headers-End: 1okoR3-0008JC-TG
Subject: [Jfs-discussion] [PATCH][V2] jfs: remove redundant assignments to
 ipaimap and ipaimap2
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The pointers ipaimap and ipaimap2 are re-assigned with values a second
time with the same values when they were initialized. The re-assignments
are redundant and can be removed.

Cleans up two clang scan build warnings:
fs/jfs/jfs_umount.c:42:16: warning: Value stored to 'ipaimap' during
its initialization is never read [deadcode.DeadStores]

fs/jfs/jfs_umount.c:43:16: warning: Value stored to 'ipaimap2' during
its initialization is never read [deadcode.DeadStores]

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
V2: remove re-assignments rather than initializations as per the
    recommendation from Dave Kleikamp
---
 fs/jfs/jfs_umount.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/fs/jfs/jfs_umount.c b/fs/jfs/jfs_umount.c
index 3e8b13e6aa01..95ebcd17ce75 100644
--- a/fs/jfs/jfs_umount.c
+++ b/fs/jfs/jfs_umount.c
@@ -68,7 +68,6 @@ int jfs_umount(struct super_block *sb)
 	/*
 	 * close secondary aggregate inode allocation map
 	 */
-	ipaimap2 = sbi->ipaimap2;
 	if (ipaimap2) {
 		diUnmount(ipaimap2, 0);
 		diFreeSpecial(ipaimap2);
@@ -78,7 +77,6 @@ int jfs_umount(struct super_block *sb)
 	/*
 	 * close aggregate inode allocation map
 	 */
-	ipaimap = sbi->ipaimap;
 	diUnmount(ipaimap, 0);
 	diFreeSpecial(ipaimap);
 	sbi->ipaimap = NULL;
-- 
2.37.3



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
