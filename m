Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B7AAF6240
	for <lists+jfs-discussion@lfdr.de>; Wed,  2 Jul 2025 21:01:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rSH0WRzXHNefeFH4Onmm91DZJGgrSvHq6Kp6/9sh6hk=; b=imkflivXvaPPgKy+jAhAEfMk01
	chWSW/mdOofCmpIsaI5IaT4srniRbG7jyatOnafWEHusL4L9ej273Iac9WWRDTJjCbGPTQS3np4U+
	ixBYN4fMay7pUHRsVSA7rS1kpmFrkECqi9m7UzLo9rtIzWBuc9vqbY9b86nZRTrLKzJ4=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uX2hC-0002FJ-2n;
	Wed, 02 Jul 2025 19:00:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <duttaditya18@gmail.com>) id 1uX2h9-0002FA-Kp
 for jfs-discussion@lists.sourceforge.net;
 Wed, 02 Jul 2025 19:00:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dNvEoNaOIW82DnFZ370ho50EsopFgUiF2vv7ai8Lmhs=; b=VPoHitGXImaNwBQv/RnpLayvyR
 9KKjRuh2scIMxEzVETtHfoALpDz/EdG0e+KbrlGSXO+leqAa4jsDqJt+B8TkGDrFYsmikdcqzah5u
 ZTJfBry4dWPThUcxTFZkGsNQQd9kpx+gXqzjIaEhZL6Wgz8lvB9/blyYTMi8ZcQRrikE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=dNvEoNaOIW82DnFZ370ho50EsopFgUiF2vv7ai8Lmhs=; b=N
 sDTont5eKE6p3Ji29hg9N+jX9QaEiufbQN6UvXCGzbtbbV+aKZkO8qC7nS9eq4toH/vM0rEzqV1/L
 EvJLplV7zt8jGIULR+uJvC6uzFdbA8WEOeaGtKqp9V6amHS/Rtzgh0MJP9Icjl2vLyxZRVkaUCZST
 1NQm6cyUYfqtlOFE=;
Received: from mail-pj1-f44.google.com ([209.85.216.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uX2h8-0004f6-MU for jfs-discussion@lists.sourceforge.net;
 Wed, 02 Jul 2025 19:00:35 +0000
Received: by mail-pj1-f44.google.com with SMTP id
 98e67ed59e1d1-315b0050bb5so4159594a91.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 02 Jul 2025 12:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1751482829; x=1752087629; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=dNvEoNaOIW82DnFZ370ho50EsopFgUiF2vv7ai8Lmhs=;
 b=gRq/ik0mFRGVgli+xXW0p9M1eEGQw5OvIpY5OXtLRKckkAWhPOknjh8p+2Y/k665wL
 fP1N6U+N8st+70of95JVphnsuizuGBJpQyp4xbBRRUSJYAK7Bs1K6Y9Of5mZNdAblg0h
 GFOkDxGIMCo/POGrt3U6rEh/nLihTgd4xWuMlVoV8cVD0iLYkKqBfKTraS9KUlwhcX26
 pXwDs6qmAjGCPgAN6ph53Fq1eAhhzrFC+rb7I6tIzNFUkMr2I3D4dQrj2wtQIsEbQ9gN
 p+KGUvAwdXqK8A989eThC4FSaPMPHbt5BJ0hzDU+T9LK5WMnSMJCXFkw79oAc4CuXWAB
 BoRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751482829; x=1752087629;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=dNvEoNaOIW82DnFZ370ho50EsopFgUiF2vv7ai8Lmhs=;
 b=ddqwG+NfruJsDhqxPOUed+mBnWNroObOvddtvgt63Dd58OB1Su6DM7kHl5Yz5JwNgj
 GodJ1rTeB9l6p6J0hoDUIYsUH4oDGPGemNi7IVrT1ca1vpPeCTXG/Bd2qm5EYjjp8jLV
 iOClQ7AXJY6oq8wkMF5lYLyFHscCyJnuE8JyfsZFj380XoVujb2144d5qvHf9C9J31GT
 nI1JhShwAfFMCsscyXLy90c+XvFGB/Ya1sOGPo1spIiz1VLJTdIeeQGAVFT2631RaCEe
 gGBHezXcxWjxlP/YXo2HocITvzU3F90OVL9jYE5jdSZy2jpLv4s6ticpxmEpkSKzJjWg
 7uJg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWIkr/dbreiMiFal94oDyWvLfDSqU0/xFcZoW0kZREhVLVntt7YsiymEriSGX8JbPxkKyAX/+t3tQt2q4yfYQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwOv8dslIy3WG8zexv6/BPIAlwlCRKEu9MXI+DQYbqT8CdibNgI
 miQ6d/WINqYIl5osuMP/szDTvhliIrflAEj0g6Ynuy7OIDyRWxur5rwd
X-Gm-Gg: ASbGncvL5r/xQuQz7R1g9CuiR8yZAQquKOdm9nLslQCL/rNcinb+mXkfoDLk0xBuuda
 ivCfhIXaTMrvRclai9fhp6jLHUiJmKqfdiQKHFsMNyLRwoA4Oi91Nd0CKqmb9SNc5XX1524OPtN
 waxDP5SntjYPvucfbN+8IlLWgEMqCP6NBXeMgRfDbigy8pIpR6DqKJIiX6xVM99rRIw/w6ZzUIJ
 AZo5A7D6AVGsT/bltR5iaLgp1bK5a8z3HrjP8d5em+EYiyYqKb5KB+7nO3i+v4QNC3+J0RQiWS0
 VtCDgwCWbt+DQZkcPgdwtNS3PtFqQRJb8RMPapSY9T0mNlSMiITiWd9b6ThPlVNPw/RgB0j3
X-Google-Smtp-Source: AGHT+IHisT+jL2i9exD2iEGFPt0p0HhJMwOgwOqxm5sMieaqvdl02QcRn6IPSerxf/AqzuegXaPCvw==
X-Received: by 2002:a17:90b:52c6:b0:316:3972:b9d0 with SMTP id
 98e67ed59e1d1-31a90a2d5d4mr7166223a91.0.1751482828855; 
 Wed, 02 Jul 2025 12:00:28 -0700 (PDT)
Received: from pop-os.. ([49.207.217.131]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-31a9cc66830sm415374a91.16.2025.07.02.12.00.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Jul 2025 12:00:28 -0700 (PDT)
To: stable@vger.kernel.org
Date: Thu,  3 Jul 2025 00:29:36 +0530
Message-Id: <20250702185936.68245-1-duttaditya18@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Edward Adam Davis [ Upstream commit
 ce6dede912f064a855acf6f04a04cbb2c25b8c8c
 ] [syzbot reported] general protection fault, probably for non-canonical
 address 0xdffffc0000000001: 0000 [#1] PREEMPT SMP KASAN PTI KASAN:
 null-ptr-deref
 in range [0x0000000000000008-0x000000000000000f [...] 
 Content analysis details:   (0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [duttaditya18(at)gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [duttaditya18(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.44 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uX2h8-0004f6-MU
Subject: [Jfs-discussion] [PATCH 5.15.y] jfs: fix null ptr deref in
 dtInsertEntry
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
From: Aditya Dutt via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Aditya Dutt <duttaditya18@gmail.com>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Manas Ghandat <ghandatmanas@gmail.com>,
 syzbot+30b3e48dc48dd2ad45b6@syzkaller.appspotmail.com,
 Edward Adam Davis <eadavis@qq.com>, linux-kernel@vger.kernel.org,
 syzbot+bba84aef3a26fb93deb9@syzkaller.appspotmail.com,
 skhan@linuxfoundation.org, linux-kernel-mentees@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Edward Adam Davis <eadavis@qq.com>

[ Upstream commit ce6dede912f064a855acf6f04a04cbb2c25b8c8c ]

[syzbot reported]
general protection fault, probably for non-canonical address 0xdffffc0000000001: 0000 [#1] PREEMPT SMP KASAN PTI
KASAN: null-ptr-deref in range [0x0000000000000008-0x000000000000000f]
CPU: 0 PID: 5061 Comm: syz-executor404 Not tainted 6.8.0-syzkaller-08951-gfe46a7dd189e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
RIP: 0010:dtInsertEntry+0xd0c/0x1780 fs/jfs/jfs_dtree.c:3713
...
[Analyze]
In dtInsertEntry(), when the pointer h has the same value as p, after writing
name in UniStrncpy_to_le(), p->header.flag will be cleared. This will cause the
previously true judgment "p->header.flag & BT-LEAF" to change to no after writing
the name operation, this leads to entering an incorrect branch and accessing the
uninitialized object ih when judging this condition for the second time.

[Fix]
After got the page, check freelist first, if freelist == 0 then exit dtInsert()
and return -EINVAL.

Closes: https://syzkaller.appspot.com/bug?extid=30b3e48dc48dd2ad45b6
Reported-by: syzbot+30b3e48dc48dd2ad45b6@syzkaller.appspotmail.com
Reported-by: syzbot+bba84aef3a26fb93deb9@syzkaller.appspotmail.com
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Aditya Dutt <duttaditya18@gmail.com>
---

I tested the patch manually using the C reproducer:
https://syzkaller.appspot.com/text?tag=ReproC&x=135c9b70580000
given in the syzkaller dashboard above.

 fs/jfs/jfs_dtree.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 27ca98614b0b..cb57d4f1161f 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -835,6 +835,8 @@ int dtInsert(tid_t tid, struct inode *ip,
 	 * the full page.
 	 */
 	DT_GETSEARCH(ip, btstack->top, bn, mp, p, index);
+	if (p->header.freelist == 0)
+		return -EINVAL;
 
 	/*
 	 *	insert entry for new key
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
