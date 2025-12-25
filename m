Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5CFCE028C
	for <lists+jfs-discussion@lfdr.de>; Sat, 27 Dec 2025 23:15:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1VcbQ0AkWvc1qhdzaKJQKPq3xUrV8cqMjOG185ZSyuQ=; b=hbnAz/27R3ys6oN/o49Lf3H7sI
	flrhJJLeKh+hvf6+CRNIH4EA8NkmukIV/Ye5xnFpfPSPnfdUs86VVfE8BJZtmI0c+26pmbf2HhrDP
	szU43tAj3u9Enpkij2sb2QdQN/9xNMwGA3D40zkThC2RcdKofKtZSckrDpJ/WUno9oOo=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vZcZJ-0000Xi-Vj;
	Sat, 27 Dec 2025 22:15:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <swilczek.lx@gmail.com>) id 1vYq5J-0005t4-Su
 for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Dec 2025 18:29:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WyC6zqEYs6ZQvozK/zgF0HVbY+q2n5NGSr9N/m+Uu4o=; b=KINiawNHpyS6FQlKeyjYbok06L
 rySLv3afyTfkCvd4aN21T8SWbVSZ7B4Xep5O5t4rADIF047YZmuChQVEK1cwYb5TY3OvV1BeG0Pwg
 bxj3uCyPoLHUOFPh4gTEK3EYibSdhckglVUuiF36XkGQiT3NU7PNs+FbiEtDha/KP0GY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WyC6zqEYs6ZQvozK/zgF0HVbY+q2n5NGSr9N/m+Uu4o=; b=T
 i9rwgdtQbZiUELoBRNhkSWJwjG7xvPtOdv+J21zqTjumUAtcmh2Lyn2j49yLzbeDYuz7hd0RmNXnm
 gRSVmFOnxJa/xYumoQZlHUvq7rGnO0bcYtxssivRh2nP9ev/Ac6IBPAuFI7l5JaqgaQvPgUpeqIgR
 OMzCx0ryZIPBHUrY=;
Received: from mail-ed1-f43.google.com ([209.85.208.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vYq5J-0003ZL-DD for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Dec 2025 18:29:13 +0000
Received: by mail-ed1-f43.google.com with SMTP id
 4fb4d7f45d1cf-64d1ef53cf3so5657660a12.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 25 Dec 2025 10:29:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766687342; x=1767292142; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=WyC6zqEYs6ZQvozK/zgF0HVbY+q2n5NGSr9N/m+Uu4o=;
 b=efJmHjWjIm7ymyi982j9w/hlYN0nzTy6B1gnAKNyJ/D0rBOx3quJ5WIQPk+Vz6wfv0
 n/KMSvWjloaKry49s2LOCe6hTMWEnAUZUI1Ku28sf//jhiSv5CJAxFM8t/9x6Q0bPoGE
 bakYaXied8UfiYjZx8FFcqRvRIx0xvyH1ZYHrlHyZK6LiDQAnc/UeD7++gsQg5Odbqqg
 REjoMrEwy7Otia6Fgak70g0aWxJ5brWvfVg5oH8zAv7X6cBqBkNqNsh1ppz7WvfmcFyQ
 3xEoAp8ZPCwUUO3ttjQZU68sY4Lq2wAESP3368xYXW63nRWZuYGOYTgk7GiqUNwwXqWy
 9bWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766687342; x=1767292142;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WyC6zqEYs6ZQvozK/zgF0HVbY+q2n5NGSr9N/m+Uu4o=;
 b=Lgu9MzBAe9g+rfZuyIhl7Uw/TtRIBHOdfMHLANuNOnecvDijnhUCbVSAk1nGQIkeoB
 1j6oxNisVhtMCTLHDrRK3xwAsGW46jDMweSnjAaB4DoTk4QIzCLPH2E5gfaGw6c7a1Y8
 eqQvzQmc/p8AxTc4i8qfwCA73ggGw1z53x6u5uleowN+O5ek1w5b4tWGR0ex/vy/9USg
 6pvmjH2xnQOJUnNhLo7qWRpHW/XO7pL4ncgDgrbS7joWGtACAA/pK0nkG2ITyBpACQBz
 Dt+KPrtrh3XHGv4mJRPJXaqEClgbMwJMBQoSvTsfvLxp1U4wSREcSbl3+sFxKsZI4ap5
 bYdQ==
X-Gm-Message-State: AOJu0Yx7yLpjc5ZFID42mqGHZsONbXyh7blFBKoqe0gEgQ+bPlcobnw9
 BqghuEkZT6G/ehGRw/yle52WOmld6dMQd1bqa2YGSPxSJv7PnbAfqgn6tjB1eQ==
X-Gm-Gg: AY/fxX6eIsIPrFOOFg9HUfXyer0aO1X9E3mbNBQMqU7ZKZRuPi7Coa3n+6hT62FyNV1
 meHOKeT5NiKN+7xjJZ8e8i8JpqhxlEYEVoOYThH7H29a3ZXrQi7+PD9D+eG1GOPRl+ifnIUr8F6
 EuC3lJ9X1vWHQThw3l4UpAQXwWVfovI400F11SJ+Pv2x0ING9XxHG0MAe7hxe2CtZP2PZ113e0U
 60IrDPexoX1HvVSjc2vaKh4icHa7BkUAN+iwl1NOWFLjdr0JVxEjaLPvjyuPEyfC1NOl0wfN4bS
 f3Yuc/xxXhc/HeDy5Dna4+gOGZcTkWUOHjjrJo643VIJrBkJbe6GT6nHzZoeYa58dlwNQKthVbZ
 uNpbh7t8gXyaHekcoF8U7lj6J9QTqLx9OBybdEonFnwnywTSWgmF9GL/cXH38Wqw3wrt6Zx1QnV
 cuA91j1vtl8Ivc3w==
X-Google-Smtp-Source: AGHT+IGQM6s9qCbNVheuXGU9Agth2R5g8dBliGC2t0XlZjX3ro4bzHX9pjakXoEPsYCRWsEfHiSp9A==
X-Received: by 2002:a05:6402:1ed5:b0:64b:4720:1c23 with SMTP id
 4fb4d7f45d1cf-64b8ea4b950mr19321690a12.13.1766687341667; 
 Thu, 25 Dec 2025 10:29:01 -0800 (PST)
Received: from prometheus ([85.11.110.37]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-64b91494dd3sm20796808a12.21.2025.12.25.10.29.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Dec 2025 10:29:01 -0800 (PST)
To: shaggy@kernel.org
Date: Thu, 25 Dec 2025 19:28:52 +0100
Message-ID: <20251225182852.508200-1-swilczek.lx@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The dtSplitPage function creates a new struct dt_lock (which
 wraps struct linelock) using txLinelock. txLinelock initializes the linelock
 with maxcnt = TLOCKLONG. However, struct linelock defines the lv array with
 size 20, while TLOCKLONG is 28. This leads to a mismatch where maxcnt allows
 indexing beyond the defined array size. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [swilczek.lx(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.43 listed in wl.mailspike.net]
X-Headers-End: 1vYq5J-0003ZL-DD
X-Mailman-Approved-At: Sat, 27 Dec 2025 22:15:23 +0000
Subject: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 dtSplitPage
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
From: Szymon Wilczek via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Szymon Wilczek <swilczek.lx@gmail.com>
Cc: Szymon Wilczek <swilczek.lx@gmail.com>,
 jfs-discussion@lists.sourceforge.net,
 syzbot+a939a1121380d3212940@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The dtSplitPage function creates a new struct dt_lock (which wraps
struct linelock) using txLinelock. txLinelock initializes the
linelock with maxcnt = TLOCKLONG.

However, struct linelock defines the lv array with size 20, while
TLOCKLONG is 28. This leads to a mismatch where maxcnt allows indexing
beyond the defined array size.

This causes an array-index-out-of-bounds error when dtSplitPage or
dtMoveEntry accesses indices between 20 and 27.

Fix this by using TLOCKLONG for the lv array size in struct
linelock. This ensures the structure definition matches the maximum
possible index used in the code.

The size of struct linelock increases from 48 bytes to 64 bytes, but
this fits safely within the 72-byte struct tlock allocation path used
by txLinelock. For the txLock path (where linelock overlays
tlock.lock[]), the code explicitly sets maxcnt = TLOCKSHORT (20), so
access remains within the safe 48-byte limit.

Reported-by: syzbot+a939a1121380d3212940@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=a939a1121380d3212940
Signed-off-by: Szymon Wilczek <swilczek.lx@gmail.com>
---
 fs/jfs/jfs_txnmgr.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/jfs_txnmgr.h b/fs/jfs/jfs_txnmgr.h
index ba71eb5ced56..04eac3850ff0 100644
--- a/fs/jfs/jfs_txnmgr.h
+++ b/fs/jfs/jfs_txnmgr.h
@@ -165,8 +165,8 @@ struct linelock {
 	u8 l2linesize;		/* 1: log2 of linesize */
 	/* (8) */
 
-	struct lv lv[20];	/* 40: */
-};				/* (48) */
+	struct lv lv[TLOCKLONG];	/* 56: */
+};				/* (64) */
 
 #define dt_lock	linelock
 
-- 
2.52.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
