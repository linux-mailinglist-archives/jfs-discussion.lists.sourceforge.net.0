Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B05611102
	for <lists+jfs-discussion@lfdr.de>; Fri, 28 Oct 2022 14:18:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ooOJi-0007nW-Gh;
	Fri, 28 Oct 2022 12:18:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <okanatov@gmail.com>) id 1ooOJe-0007nL-Pr
 for jfs-discussion@lists.sourceforge.net;
 Fri, 28 Oct 2022 12:18:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/dY7Y+da7X9K9O4Ac5PtXq8SnkiyCLSRFHFISMn8IhE=; b=P2Zz4RnyxhKqFOID7PNOtTYTHp
 Z5YrPGi3BjfOWcpEpe21nJf1+IKdyhGdORQrgCoWwaYhiGjkws3YqHID5DGBNslBby97hSOFaZcdN
 6BLdNSUGfwEvlHanUX/mM6gE/QbEf3vfcKASWAH9hfupq2KoqdEQqTlx3s2ca2KQXwek=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/dY7Y+da7X9K9O4Ac5PtXq8SnkiyCLSRFHFISMn8IhE=; b=a
 Z+wq46CWKAYu95dFvZjFHB405ikJwfVXxpz1I+O2p9DFOselDpT6AQSGU890sOWYHra/+yyL3K5bI
 dooYhzrwh95CoZ8n49NYeybJEMB9pnW+GPdNR9nuNaAv9OF0I6hIqT8XQUkFZWeb4Ewic0aeklcSU
 CLSsYaM7fs1VjCJE=;
Received: from mail-lf1-f44.google.com ([209.85.167.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ooOJZ-003SKs-P0 for jfs-discussion@lists.sourceforge.net;
 Fri, 28 Oct 2022 12:18:26 +0000
Received: by mail-lf1-f44.google.com with SMTP id d6so7967222lfs.10
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 28 Oct 2022 05:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=/dY7Y+da7X9K9O4Ac5PtXq8SnkiyCLSRFHFISMn8IhE=;
 b=DU/ltOdllZxhJVdhSGGBTsAkXZC5s2ayfhqb/2pf8/3L9WCb7vmJSPARaIteVgy/C6
 qefskjshrJUgmbJvibi3tHq0ZBku8XhlPA3Rz2pqtcKr/QEXOySEOD0e5hhfX6/nqS7D
 dsFXf7B8regkLIC4WtjeGV3BelF8TQs7tkv20VdQABoAPosbWtzVEYiommR6l7x9ruom
 I+a9bRGWQFtWVRyLquZEZYbaBp374LTir4XJFDPoGs4sRXHMirMUQFTuw28kif3drxGs
 aNRC8BAwblSSghNY2r4gkPVmm7Q0vU6C9ifwEyg8kXzCOoVZrTd9PaDMgNXTlUY3qLOv
 ze7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/dY7Y+da7X9K9O4Ac5PtXq8SnkiyCLSRFHFISMn8IhE=;
 b=EvijjXmjOBvO+LZDqrdh0PdjvBifN9O+8PUj0rforSmvs7DJmttDXSChJntcY/y9IY
 x3466X+g8cF5KQ2efi31k5dMqKUoYZmsVJEfVa78qcypuyLgl3tetJER0qtKlbbTPp9C
 auRYv1kc4TOeAhL7akd7I7rK7oHK1iYFWOyBDL3ZCBDv9XvjQhiHmfcfNFTstNgCNRrc
 4g3qySR0NJPAdNabvxEC8JlVx+7n5dHmZg2muCksYW+iEw731yfr1/Flzs2s7cv5do7k
 Qr6gTWcG4ReAa2AVxv5DPzQfusJCW3jT86U+1bwxs884W3C2Daw/fBwFLhVVQn3RS9Zq
 YAjA==
X-Gm-Message-State: ACrzQf0F3RhMlSI0n4o1rKzr6u4pFRgUW3c9mGTowKx5+LCNiFnpAXFT
 obFbtS/sklcP175SXi+dqcY=
X-Google-Smtp-Source: AMsMyM4c64YK1SqRcBUqVGXKUB+3puqxMCX6YfubK8Z20vazKfoyf++BNBmBQ6mfJ01bOyalCKPcYw==
X-Received: by 2002:a05:6512:2213:b0:4ae:8476:2ce with SMTP id
 h19-20020a056512221300b004ae847602cemr7356152lfu.0.1666959495019; 
 Fri, 28 Oct 2022 05:18:15 -0700 (PDT)
Received: from localhost.localdomain ([95.79.189.126])
 by smtp.gmail.com with ESMTPSA id
 v7-20020a2ea607000000b00277041268absm618550ljp.78.2022.10.28.05.18.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Oct 2022 05:18:14 -0700 (PDT)
From: Oleg Kanatov <okanatov@gmail.com>
X-Google-Original-From: Oleg Kanatov <okanatov@astralinux.ru>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Fri, 28 Oct 2022 15:16:39 +0300
Message-Id: <20221028121639.19341-1-okanatov@astralinux.ru>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When closing the block allocation map, an incorrect pointer
 was NULL'ed. This commit fixes that. Signed-off-by: Oleg Kanatov ---
 fs/jfs/jfs_umount.c
 | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [okanatov[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.44 listed in wl.mailspike.net]
X-Headers-End: 1ooOJZ-003SKs-P0
Subject: [Jfs-discussion] [PATCH] jfs: Fix a typo in function jfs_umount
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
Cc: lvc-project@linuxtesting.org, jfs-discussion@lists.sourceforge.net,
 Oleg Kanatov <okanatov@astralinux.ru>, Oleg Kanatov <okanatov@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

When closing the block allocation map, an incorrect pointer
was NULL'ed. This commit fixes that.

Signed-off-by: Oleg Kanatov <okanatov@gmail.com>
---
 fs/jfs/jfs_umount.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_umount.c b/fs/jfs/jfs_umount.c
index 3e8b13e6aa01..673e132c1c26 100644
--- a/fs/jfs/jfs_umount.c
+++ b/fs/jfs/jfs_umount.c
@@ -89,7 +89,7 @@ int jfs_umount(struct super_block *sb)
 	dbUnmount(ipbmap, 0);
 
 	diFreeSpecial(ipbmap);
-	sbi->ipimap = NULL;
+	sbi->ipbmap = NULL;
 
 	/*
 	 * Make sure all metadata makes it to disk before we mark
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
