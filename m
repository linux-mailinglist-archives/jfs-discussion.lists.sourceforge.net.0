Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFF49B8E6D
	for <lists+jfs-discussion@lfdr.de>; Fri,  1 Nov 2024 11:00:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t6oS6-00010z-2o;
	Fri, 01 Nov 2024 10:00:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zoo868e@gmail.com>) id 1t6oS4-00010s-Kp
 for jfs-discussion@lists.sourceforge.net;
 Fri, 01 Nov 2024 10:00:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kXE+qi0LSm8ODysTE3U4uCY5bjtR4TQVd3Ql3XOl3gw=; b=YOqjwvNZMNT2bDKj6x0vPJsJHA
 ltkkF0og4gx0zZ+3+RWkXz6w6b9AapKFAgS+4yRLdPcgW3ysHU59XqvY3lS8lNjTSODIooQnP8JUi
 Tnh+ooQR0tagcXqbH/VZmwhEmUb+rkF7aadydGQAurgwAF5rGwz/dJptzfctJzbPEjAs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kXE+qi0LSm8ODysTE3U4uCY5bjtR4TQVd3Ql3XOl3gw=; b=KNrRLGT9o8yGz4jFsASdrQSVh3
 HzVOcPqZ+4yaBmSEExXbUNzz0cE/5V7CCmdB6P+BLjeJr3KHi3nGkOeu0PIiiftSOBeCixihVANuJ
 +HQ0vWjKBsqA3kz8e88YQ6ipNRWt/D2qNcQjk/HoXGWoiMUVAehT/urBtQ/L7MiL88So=;
Received: from mail-pg1-f169.google.com ([209.85.215.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1t6oS2-00040K-DT for jfs-discussion@lists.sourceforge.net;
 Fri, 01 Nov 2024 10:00:19 +0000
Received: by mail-pg1-f169.google.com with SMTP id
 41be03b00d2f7-7db238d07b3so1425432a12.2
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 01 Nov 2024 03:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1730455208; x=1731060008; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kXE+qi0LSm8ODysTE3U4uCY5bjtR4TQVd3Ql3XOl3gw=;
 b=lH9FqXov6SBcE6Tc4y+ahXhxOyiHnVoCjZB40rqAZXWJOjBoMYtsdcFMCKyFGoIWBG
 W2x+jMHzQUc+bOiq5V/hTMgU4H4seEsu5vnZgV3tj7WH0+ufpyw/ithBcMIPeo6I55Kk
 +jOj/TuYDQowLgMbccI7OWuwBPu09vhTEY/LWJ7IedlwPpbnDq+1NR1Yu3c9qkT3JmZA
 asO3U/aBB88y3vESI6GeS3U0NeuQlW8kQP3X1/dXf/2MO5AWR97M9pyn1mj+8PfBGiTH
 LCeVRH8mx9xYiWBXODS9aHwLPHIMSQe3wTV0q+jXlfNgpQPquQAbKnPklvA79c8Y5kNl
 TPgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730455208; x=1731060008;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kXE+qi0LSm8ODysTE3U4uCY5bjtR4TQVd3Ql3XOl3gw=;
 b=SYDpv6LQCDR1eStmHfVp2/cN1XzQqKbPA1W7glpLaNDmPNXrXRUUAxGqWHthHMPGBb
 E2dSgq0fDwcOcWngWiaMJ/ELp5mHSIm+na9EuvD39bRIO/e7kHAshzUq4E4od+MIxAhJ
 fvcfFF7v07GNvrcsJtbTbs2OgSPTbsLWqXpXO8caeU1e23/+ObYUiCwY738JSedWpY2+
 rUY7ffuUXzzraxmtd0ka95jv3RIGU+Z1c/EmrsRFbroKYSQBm7FVvxSYGTPkrSWYRcMU
 0xNXv3uoljr7gRD38WS7d8tniMhw7WTV4Q5O6cQiTRLlMx7snPbwNSdaXDdQC6epAgdf
 Vzkw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXdOztQR4ya27zyEq1dM9UCyYVCDlJn9k/T9tpMjB5WcZUVoSP5zEbhx8dgjU4SbOWLPpLYmTgAQmrZYf0Cww==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yz9b/Nx/ZVZPh/cC3j8XFMnRGsY+v2d/TIGwroJFNgFc8O0CoKc
 m5sznwhJPKTp9oyDX45M/+pH75Xqk2N0Hrtk8r9t95KLQt1UcBLC65aHjtrN
X-Google-Smtp-Source: AGHT+IH+qDmPE014XFSIXoWs+bf29PK2M0J/yz6dZkz/5vEdYvX38kp2/2dRiZcLu/cOq6W9GxN86A==
X-Received: by 2002:a17:902:f684:b0:206:fd9d:b88d with SMTP id
 d9443c01a7336-210c6d291e5mr258001815ad.61.1730455207493; 
 Fri, 01 Nov 2024 03:00:07 -0700 (PDT)
Received: from TW-MATTJAN1.eu.trendnet.org (61-216-130-235.hinet-ip.hinet.net.
 [61.216.130.235]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e92fa4850esm4595553a91.27.2024.11.01.03.00.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2024 03:00:06 -0700 (PDT)
To: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Shuan Khan <skhan@linuxfoundation.org>
Date: Fri,  1 Nov 2024 17:59:55 +0800
Message-Id: <20241101095955.9786-1-zoo868e@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <671b3f75.050a0220.2eb763.00d7.GAE@google.com>
References: <671b3f75.050a0220.2eb763.00d7.GAE@google.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Ensure l2nb is less than BUDMIN by performing a sanity check
 in the caller. Return -EIO if the check fails. #syz test Reported-by:
 syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com
 Signed-off-by: Matt Jan --- Changes in v4: Thanks to Shaggy for the review.
 We now perform a sanity check instead of continuing as [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zoo868e[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.169 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.169 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1t6oS2-00040K-DT
Subject: [Jfs-discussion] [PATCH v4] jfs: UBSAN: shift-out-of-bounds in
 dbFindBits
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
From: Matt Jan via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Matt Jan <zoo868e@gmail.com>
Cc: Matt Jan <zoo868e@gmail.com>,
 syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Ensure l2nb is less than BUDMIN by performing a sanity check in the caller.
Return -EIO if the check fails.

#syz test

Reported-by: syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com
Signed-off-by: Matt Jan <zoo868e@gmail.com>
---
Changes in v4: Thanks to Shaggy for the review. We now perform a sanity check instead of continuing as if nothing is wrong.
Changes in v3: Return the result earlier instead of assert it
Changes in v2: Test if the patch resolve the issue through syzbot and reference the reporter

 fs/jfs/jfs_dmap.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 974ecf5e0d95..89c22a18314f 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -1217,7 +1217,7 @@ dbAllocNear(struct bmap * bmp,
 	int word, lword, rc;
 	s8 *leaf;
 
-	if (dp->tree.leafidx != cpu_to_le32(LEAFIND)) {
+	if (dp->tree.leafidx != cpu_to_le32(LEAFIND) || l2nb >= L2DBWORD) {
 		jfs_error(bmp->db_ipbmap->i_sb, "Corrupt dmap page\n");
 		return -EIO;
 	}
@@ -1969,7 +1969,7 @@ dbAllocDmapLev(struct bmap * bmp,
 	if (dbFindLeaf((dmtree_t *) &dp->tree, l2nb, &leafidx, false))
 		return -ENOSPC;
 
-	if (leafidx < 0)
+	if (leafidx < 0 || l2nb >= L2DBWORD)
 		return -EIO;
 
 	/* determine the block number within the file system corresponding
-- 
2.25.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
