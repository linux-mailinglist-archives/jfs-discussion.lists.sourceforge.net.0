Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA37738F0A
	for <lists+jfs-discussion@lfdr.de>; Wed, 21 Jun 2023 20:45:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qC2pR-00044I-NN;
	Wed, 21 Jun 2023 18:45:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yogi.kernel@gmail.com>) id 1qC2he-0003xq-Uf
 for jfs-discussion@lists.sourceforge.net;
 Wed, 21 Jun 2023 18:37:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HttJ+IZPAFgAC2KFju7xOOGbFCf82oXdQ0iEodC89/8=; b=XJ3STOwHYxr9atcKU91wc7QoSW
 qd1WPO4l0pgItH3o0agliAWrCMLbxRNsMYLszVcsW0FvUpPCNRH6e6UdrsvWfSPdT0aiy2QeLyRM7
 0zLzhd93AcdHdXAVu/vTS+hNXbKv4lx97NcZeIFDPLFHKPZhf1N3pfOgGjlhuCG8RpP8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HttJ+IZPAFgAC2KFju7xOOGbFCf82oXdQ0iEodC89/8=; b=U
 p+/0/n2GKAZQazDUEMnYOpOCtFsVht576c0YoNydaxwJUVMAlZlUdU3Y+aag/e5KL9mY7YslSojFX
 ndYOMfPiRF0M+pmYgmM/ZGpN49LyXAOe2n+0krXqsoPeGfKichAttfNS++J3TqW/Ion+k54IW1MzS
 3SQnBN0bjOa0mSKg=;
Received: from mail-pf1-f173.google.com ([209.85.210.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qC2he-0003wZ-MK for jfs-discussion@lists.sourceforge.net;
 Wed, 21 Jun 2023 18:37:15 +0000
Received: by mail-pf1-f173.google.com with SMTP id
 d2e1a72fcca58-66869feb7d1so2960937b3a.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 21 Jun 2023 11:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687372629; x=1689964629;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=HttJ+IZPAFgAC2KFju7xOOGbFCf82oXdQ0iEodC89/8=;
 b=nO50UhyVVA8Y94ODBGdhTOLw2aFgzMeIqVRRWVk7tgqaqKiMGEytcSwZ+y4vzjPB1u
 F/JgOQJHv6TbyKU8bvIxFCjvs+Iho9/b/0PnAm/XkSPl7NA4mASHCPGg97pUBmSKZ+K1
 VFDWNssgbn0YsTuILvQ2iBY/cfknOADdQOZr1MWChptp0H6PGhP0rS1e9LrEhD9x98BP
 gyOXoV38+jDpPmDz5VNQLW3jOW24wsUzpOdYaSTCNftO9q5ySsNDceIoxGE5lWSa9Xne
 eixcKbbhqJBuL2+2m6jZJZynRcsuUMdUBXfW47cLhoXswmHXdmH5duy3VtvwrAF+qCNy
 GcjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687372629; x=1689964629;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=HttJ+IZPAFgAC2KFju7xOOGbFCf82oXdQ0iEodC89/8=;
 b=hvoLcprZ+yuAoChbJsTTOAAunAZDd+xJYM8VdyF8u3AWfYrS0y0M8Tx7Cw8GruJs6k
 JA50BiYRgbRKi4gZAwV63MxRQdebSmM/TxBv/+d/UZbuqxJiByTNeiI3psFuf8QF1/RH
 XCT39747S0CjNZVmTa6wCZ+KWWlJbP1z+tYa81TMTytWGeFU7DO4Dshvk8J68LpxAg7h
 kHOAZD3bq7ecO2IanCpa9yYWGe06lxFVlHJVW/3vsv2h4qHZNZARSYHxOicN1wqUH9hz
 hjNG6IH6JaIYCN+RsHOl+nEjBqufqvVg8bxlnIIKYaXgWwZnIAduREBKxo3Y83pEsrGv
 mx4g==
X-Gm-Message-State: AC+VfDxadeDA+fty0u/XnGd0Wh+F1wPdyNj3IubfW4RB29ASTzIJdSFE
 AxItQEO8Lfk4YN9Kbr0EoNw=
X-Google-Smtp-Source: ACHHUZ7BMK4uKx4E4hlm1l99TriZp6rOiSWu6de4B1O/UAlnENoG+aYVvtHECZDw12qdEkLBJ0/fiA==
X-Received: by 2002:a05:6a00:1a0f:b0:668:8705:57dd with SMTP id
 g15-20020a056a001a0f00b00668870557ddmr6703897pfv.28.1687372629026; 
 Wed, 21 Jun 2023 11:37:09 -0700 (PDT)
Received: from zephyrusG14 ([103.251.210.211])
 by smtp.gmail.com with ESMTPSA id
 y17-20020a63e251000000b0050a0227a4bcsm3446104pgj.57.2023.06.21.11.37.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jun 2023 11:37:08 -0700 (PDT)
Date: Thu, 22 Jun 2023 00:07:03 +0530
From: Yogesh <yogi.kernel@gmail.com>
To: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Message-ID: <ZJNDT7ro6OA4hYM9@zephyrusG14>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 1.3 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Syzkaller reported the following issue: UBSAN:
 array-index-out-of-bounds
 in fs/jfs/jfs_dmap.c:1965:6 index -84 is out of range for type 's8[341]'
 (aka 'signed char[341]') CPU: 1 PID: 4995 Comm: syz-executor146 Not tainted
 6.4.0-rc6-syzkalle [...] 
 Content analysis details:   (1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [103.251.210.211 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yogi.kernel[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.173 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.173 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qC2he-0003wZ-MK
X-Mailman-Approved-At: Wed, 21 Jun 2023 18:45:17 +0000
Subject: [Jfs-discussion] [PATCH] fs: jfs: Fix UBSAN:
 array-index-out-of-bounds in dbAllocDmapLev
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
Cc: ivan.orlov0322@gmail.com, linux-kernel-mentees@lists.linuxfoundation.org,
 skhan@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Syzkaller reported the following issue:

UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:1965:6
index -84 is out of range for type 's8[341]' (aka 'signed char[341]')
CPU: 1 PID: 4995 Comm: syz-executor146 Not tainted 6.4.0-rc6-syzkaller-00037-gb6dad5178cea #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 05/27/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:217 [inline]
 __ubsan_handle_out_of_bounds+0x11c/0x150 lib/ubsan.c:348
 dbAllocDmapLev+0x3e5/0x430 fs/jfs/jfs_dmap.c:1965
 dbAllocCtl+0x113/0x920 fs/jfs/jfs_dmap.c:1809
 dbAllocAG+0x28f/0x10b0 fs/jfs/jfs_dmap.c:1350
 dbAlloc+0x658/0xca0 fs/jfs/jfs_dmap.c:874
 dtSplitUp fs/jfs/jfs_dtree.c:974 [inline]
 dtInsert+0xda7/0x6b00 fs/jfs/jfs_dtree.c:863
 jfs_create+0x7b6/0xbb0 fs/jfs/namei.c:137
 lookup_open fs/namei.c:3492 [inline]
 open_last_lookups fs/namei.c:3560 [inline]
 path_openat+0x13df/0x3170 fs/namei.c:3788
 do_filp_open+0x234/0x490 fs/namei.c:3818
 do_sys_openat2+0x13f/0x500 fs/open.c:1356
 do_sys_open fs/open.c:1372 [inline]
 __do_sys_openat fs/open.c:1388 [inline]
 __se_sys_openat fs/open.c:1383 [inline]
 __x64_sys_openat+0x247/0x290 fs/open.c:1383
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f1f4e33f7e9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 51 14 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffc21129578 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f1f4e33f7e9
RDX: 000000000000275a RSI: 0000000020000040 RDI: 00000000ffffff9c
RBP: 00007f1f4e2ff080 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f1f4e2ff110
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
 </TASK>

The bug occurs when the dbAllocDmapLev()function attempts to access
dp->tree.stree[leafidx + LEAFIND] while the leafidx value is negative.

To rectify this, the patch introduces a safeguard within the
dbAllocDmapLev() function. A check has been added to verify if leafidx is
negative. If it is, the function immediately returns an I/O error, preventing
any further execution that could potentially cause harm.

Tested via syzbot.

Reported-by: syzbot+853a6f4dfa3cf37d3aea@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?extid=ae2f5a27a07ae44b0f17
Signed-off-by: Yogesh <yogi.kernel@gmail.com>
---
 fs/jfs/jfs_dmap.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index a3eb1e826947..839f1b67485f 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -1953,6 +1953,8 @@ dbAllocDmapLev(struct bmap * bmp,
 	if (dbFindLeaf((dmtree_t *) & dp->tree, l2nb, &leafidx))
 		return -ENOSPC;
 
+	if (leafidx < 0)
+		return -EIO;
 	/* determine the block number within the file system corresponding
 	 * to the leaf at which free space was found.
 	 */
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
