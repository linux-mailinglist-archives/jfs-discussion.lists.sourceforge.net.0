Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D726B3A445
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Aug 2025 17:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kIsMM1pgVGUjLclHPPiKO4w1VhLifqisNQd+A3CJ2io=; b=erYq0zagQhSqsQbkfIj3Vd/fso
	QOv32ScgWZj6vE5Ms1tjXoxHs290t9Rdz/OhtMjzMSaS4wy/jsR4A/EcZvmzeTD3FRWz3SBXsY8KO
	TbOGI+s2lxGOS5KAyzZ17lG7PAVUtSF2XJcEVMo67qKVLEEVpaIexPP3VUDT46D3Ii8g=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ureUU-0005Ga-E9;
	Thu, 28 Aug 2025 15:24:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ssrane_b23@ee.vjti.ac.in>) id 1uqHyw-0005v3-N8
 for jfs-discussion@lists.sourceforge.net;
 Sun, 24 Aug 2025 21:10:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x76S/o+eGtAyfQXS4f4w5/0aFuqXnjv0Dx2n1B93glQ=; b=kKEeOPe3swj59VXtZ6DPrEDXG0
 zpFbq3XZxK0gaTC7Y3CnF0xNyU0L6cHOwRE47VnKxa/Vwn+WvM3QQk7Pvb0o5gxGPuFvqzuUMOAL/
 s2pGSCHHj3bxgFIQHuz/kuwnWtcUaMgEGoLZ4ofSwgKa2wRL1SHuPKnhDXLAOyMsfK94=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=x76S/o+eGtAyfQXS4f4w5/0aFuqXnjv0Dx2n1B93glQ=; b=H
 WkzIDAVCA9HJ5n2Rl5ptFUU6/8G5rGlwa5JgXGjIMokdAFkCXQMwHRo2QfbD0jyoDIdYessdHb5EJ
 i8PEYtrLlaPP/gc4X4I/8tdtgnxMAWgWRXyh701OgqPzPhNwyc26idUmMolXdnvSi36dy188XHfRG
 42rTRp+YENdmb9rY=;
Received: from mail-vs1-f48.google.com ([209.85.217.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uqHyx-0005hl-1Q for jfs-discussion@lists.sourceforge.net;
 Sun, 24 Aug 2025 21:10:31 +0000
Received: by mail-vs1-f48.google.com with SMTP id
 ada2fe7eead31-522c2a648a7so10557137.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 24 Aug 2025 14:10:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vjti.ac.in; s=google; t=1756069820; x=1756674620; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=x76S/o+eGtAyfQXS4f4w5/0aFuqXnjv0Dx2n1B93glQ=;
 b=JUIETlvgjswvTpw5BLdXl5zW80TwyCn5Y/kxXAiIuJGlYSUKDJAtfq/rCUnPh0DZfx
 aXO2R3whZ1pHzM5GelGLAVyvoMe7aqnZkOKQyK7cZj+2De63xmlEKk1wQFxWp+zbwTDs
 BhXG4/s2g4OInN0XDrra4c5fecW5dT0EEV3L0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756069820; x=1756674620;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=x76S/o+eGtAyfQXS4f4w5/0aFuqXnjv0Dx2n1B93glQ=;
 b=plKd35Cwn79B2gne3uuX3/IxKJad133KY1SDvfmwnj28DbiS7Kdv+zx8RN4MUlCs5T
 9tsLGhsvFUnPDDvA3Cv0JiEwguJkqhEpp+vNk0q2J544D1N/aRX9B03xanFDXVzrbbql
 XW8s/r2hkob1F3s/CW5pbaUNGlA9voevr6zkBj5k7Nu/WW/V7WiBm88D2C9J/E05IqJU
 gbid+YA+6jZb+pYDxxKaLn4snDthR5St0JySVBmWlEEImEXRTQ5281dHRkaJdv87+YsV
 Rv2xO+C/dGv7lLtDejZ9Rf7oAqGaRQu8nd2VWb1tKkQzEA9HdHZufCYapCyiLPLWOtKw
 cjPg==
X-Gm-Message-State: AOJu0YzQg/+CYX+zrWbvsCytwD5gmOD4nTmgY5RTu2gXlp/9uvoYZNdi
 fRAK8R1r9XyZUvSF/XKeZZ4gTnEzBQCuYlbf1h5d6fmILRbiQdObQfaGUS+2SIWknT7ZQNv/plw
 mdiVAA6g=
X-Gm-Gg: ASbGnctDxxa830+5S1/c1lXZ2dL4iPjOj4GRlf/mgl2jAYA6U8QHeuJQ1GnTVaYUWGJ
 0Km6z4UPDocHMA/mul/IRIHf9ElJWmPK+o9tz0ObvBivHPiRxykLBYWBnygpl50dMj8rSVTxCj6
 xwCcXnAa1oL1sVGDYP7610zo6uHyD2iercAdJPVUWseQJvR2XGZN0a7SXWWtBPBLb+DmNEilY39
 XQqZH2sTGkXinbOUJSMbDEq0NvQ7hjJr4K1PIMiA6sMxo96j3pKFn62JC+4hR/ikqD01qQs+5H9
 CDoC0LPHDq7uhfFD83NmbMcRcE4+cRJPOAB28KR11H3SpduAsMLSNtxJEcrlq2SPbXMvX+v0Z1K
 mFWvV3UO6KkYrV9BCDxa7fpwKZXH1gg==
X-Google-Smtp-Source: AGHT+IFE2UIoWuGuZxRVNliHypdTt1MzfzYsLZkO4j1r2l1oyvaMo77/1+8D2w4za3snZ1HG8LFRXw==
X-Received: by 2002:a17:903:166e:b0:243:a32:1f0d with SMTP id
 d9443c01a7336-24632a3602emr138158285ad.18.1756066427873; 
 Sun, 24 Aug 2025 13:13:47 -0700 (PDT)
Received: from fedora ([152.58.45.20]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-246688804c9sm49033195ad.130.2025.08.24.13.13.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Aug 2025 13:13:47 -0700 (PDT)
To: shaggy@kernel.org
Date: Mon, 25 Aug 2025 01:43:32 +0530
Message-ID: <20250824201332.4236-1-ssrane_b23@ee.vjti.ac.in>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The transaction manager initialization in txInit() was not
 properly initializing TxBlock[0].waitor waitqueue,
 causing a crash when txEnd(0)
 is called on read-only filesystems. When a filesystem is mounted read-only,
 txBegin() returns tid=0 to indicate no transaction. However, txEnd(0) still
 gets called and tries to access TxBlock[0].waitor via tid_to_tblock(0), but
 this wai [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.48 listed in wl.mailspike.net]
X-Headers-End: 1uqHyx-0005hl-1Q
X-Mailman-Approved-At: Thu, 28 Aug 2025 15:24:39 +0000
Subject: [Jfs-discussion] [PATCH] jfs: fix uninitialized waitqueue in
 transaction manager
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
From: Shaurya Rane via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Shaurya Rane <ssrane_b23@ee.vjti.ac.in>
Cc: jfs-discussion@lists.sourceforge.net,
 Shaurya Rane <ssrane_b23@ee.vjti.ac.in>, linux-kernel@vger.kernel.org,
 syzbot+c4f3462d8b2ad7977bea@syzkaller.appspotmail.com,
 syzbot+0cee785b798102696a4b@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The transaction manager initialization in txInit() was not properly
initializing TxBlock[0].waitor waitqueue, causing a crash when
txEnd(0) is called on read-only filesystems.

When a filesystem is mounted read-only, txBegin() returns tid=0 to
indicate no transaction. However, txEnd(0) still gets called and
tries to access TxBlock[0].waitor via tid_to_tblock(0), but this
waitqueue was never initialized because the initialization loop
started at index 1 instead of 0.

This causes a 'non-static key' lockdep warning and system crash:
  INFO: trying to register non-static key in txEnd

Fix by ensuring all transaction blocks including TxBlock[0] have
their waitqueues properly initialized during txInit().

Reported-by: syzbot+c4f3462d8b2ad7977bea@syzkaller.appspotmail.com

Signed-off-by: Shaurya Rane <ssrane_b23@ee.vjti.ac.in>
---
 fs/jfs/jfs_txnmgr.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index be17e3c43582..7840a03e5bcb 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -272,14 +272,15 @@ int txInit(void)
 	if (TxBlock == NULL)
 		return -ENOMEM;
 
-	for (k = 1; k < nTxBlock - 1; k++) {
-		TxBlock[k].next = k + 1;
+	for (k = 0; k < nTxBlock; k++) {
 		init_waitqueue_head(&TxBlock[k].gcwait);
 		init_waitqueue_head(&TxBlock[k].waitor);
 	}
+
+	for (k = 1; k < nTxBlock - 1; k++) {
+		TxBlock[k].next = k + 1;
+	}
 	TxBlock[k].next = 0;
-	init_waitqueue_head(&TxBlock[k].gcwait);
-	init_waitqueue_head(&TxBlock[k].waitor);
 
 	TxAnchor.freetid = 1;
 	init_waitqueue_head(&TxAnchor.freewait);
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
