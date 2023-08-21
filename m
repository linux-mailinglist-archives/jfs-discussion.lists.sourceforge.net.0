Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF120787BD1
	for <lists+jfs-discussion@lfdr.de>; Fri, 25 Aug 2023 01:10:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qZJSQ-0005UB-Nh;
	Thu, 24 Aug 2023 23:09:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <osmtendev@gmail.com>) id 1qY9Wa-0005hl-UD
 for jfs-discussion@lists.sourceforge.net;
 Mon, 21 Aug 2023 18:21:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WMRvtQ0OeEguDDqLUeJcBfQqYljKtL7yUUjmCfDbAp4=; b=D3LZE5YSzcXmT8J87hDPr/14Sv
 JTkSKjo/QpFFussec4d0TYUzw7DFFhmVRmIzT+KiDQM7hmsA860YtHqZLG9rIvCgIYWWtImiqedGA
 CpZ63UKrQVnVBLhgvG3rH6SlCgyQ4dYzrQ+NW2q3aMfZ7Um4EOtbNZqASZKRo6kJK5hc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WMRvtQ0OeEguDDqLUeJcBfQqYljKtL7yUUjmCfDbAp4=; b=d
 6G+33ExR6fNxP7kVWUkmdpoo+bHhnBbJtaYRz54IWvmwGnY84wAREZsKhtcWKnt5HOQ7pwiUDSA9A
 qOIFeOoQaqUhX2dfs4RQDygPgpwbvlZQuf9E2exsS+5KTcGgoA2N7WemAf3dVBiQpRo1OPUf6BnOI
 bHhqbr28RKIihQm0=;
Received: from mail-pf1-f169.google.com ([209.85.210.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qY9WZ-00039r-KJ for jfs-discussion@lists.sourceforge.net;
 Mon, 21 Aug 2023 18:21:13 +0000
Received: by mail-pf1-f169.google.com with SMTP id
 d2e1a72fcca58-68a68d23f51so154633b3a.2
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 21 Aug 2023 11:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1692642066; x=1693246866;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=WMRvtQ0OeEguDDqLUeJcBfQqYljKtL7yUUjmCfDbAp4=;
 b=jc1qHonRZAQUt2+1YpNcR9AwUucjGgltbWERJ+92ideW5UR+jhS7efr9htN6b9NG2P
 ukObyiHRIHDgdhkKXuzYeYW4xR3Z8/r9KrEGQF5jw0xYGnitJJ2M7RqGyiboh1Ar6e2c
 zjoQvifmIUGd1G6NzfxWO9q7+VqnQq9Kdj8xQ9zxB5bIoFKFQXdvi497ai7T1RpYAADn
 r4C2FZkwG8jREwTzmMWaK83S2NTA+oBJT6wUukRuyYzGAtyAzP3ItZfST0aMzn5xCZzP
 UFmn7WspvvaEnVCN5reIb+9lEoE4nY/cxhGXj8o1EGy24eyb3YjU3FASEYYVNvqBxMnr
 +Z5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692642066; x=1693246866;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=WMRvtQ0OeEguDDqLUeJcBfQqYljKtL7yUUjmCfDbAp4=;
 b=RVkQGPCnPuPe2b8fgP3pxod7Zkj3HhG8+y57sFn8NaNMrm4V1/OwdgAkvh39FvQ+/u
 F92LX1VBx/Au++U3S/gxKHAjXBHNSV4NM7fUeFfhgzB7LYksWHSM/nn3uiMC5z49L8vG
 ab7jHdxL92jfh1xZeSKukeWgEmszjkvGRUymOFidcsFyEfx+ge7LCw14e35/9Y5pVtc0
 cokSu3NdNyMbYpPcNN7ovabCBXKqK3oJHSX+YhqNg+HnxJNbCad3lwqdPOX42URA7TT8
 Wf0S2LV2FkIAIiUl9ZMvlNq7dTTpkJ7qhTGoGi8wExENIm7/OnjXFVRgXAtcg/9k+e3X
 f0uA==
X-Gm-Message-State: AOJu0Yz1w+c9PSNRNVK90003HnLgZAbkVWd4urbrbnseYxOwIKg53Oyr
 4efnsswJl0qOzX0RPwKvOw4=
X-Google-Smtp-Source: AGHT+IGoNWVHhpQT09obUTj8KDIZnwB2hziWcFswUWmyzFroKqJvcEKVOIPziKs3wFyhzGuRVLskBA==
X-Received: by 2002:a05:6a20:4425:b0:149:7fea:d88e with SMTP id
 ce37-20020a056a20442500b001497fead88emr1467914pzb.24.1692642065500; 
 Mon, 21 Aug 2023 11:21:05 -0700 (PDT)
Received: from Osmten.. ([103.84.150.75]) by smtp.gmail.com with ESMTPSA id
 h26-20020aa786da000000b0067777e960d9sm6432065pfo.155.2023.08.21.11.21.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Aug 2023 11:21:05 -0700 (PDT)
To: shaggy@kernel.org
Date: Mon, 21 Aug 2023 23:20:24 +0500
Message-Id: <20230821182024.14522-1-osmtendev@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Syzkaller reported the following issue: UBSAN:
 array-index-out-of-bounds
 in fs/jfs/jfs_xtree.c:622:9 index 19 is out of range for type 'xad_t [18]'
 CPU: 1 PID: 3614 Comm: syz-executor388 Not tainted
 6.0.0-rc6-syzkaller-00321-g105a36f3694e # [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.169 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [osmtendev[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.169 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qY9WZ-00039r-KJ
X-Mailman-Approved-At: Thu, 24 Aug 2023 23:09:40 +0000
Subject: [Jfs-discussion] [PATCH] FS:JFS:UBSAN:array-index-out-of-bounds in
 xtInsert
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
From: Osama Muhammad via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Osama Muhammad <osmtendev@gmail.com>
Cc: syzbot+55a7541cfd25df68109e@syzkaller.appspotmail.com,
 Osama Muhammad <osmtendev@gmail.com>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Mushahid Hussain <mushi.shar@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Syzkaller reported the following issue:

UBSAN: array-index-out-of-bounds in fs/jfs/jfs_xtree.c:622:9
index 19 is out of range for type 'xad_t [18]'
CPU: 1 PID: 3614 Comm: syz-executor388 Not tainted 6.0.0-rc6-syzkaller-00321-g105a36f3694e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e3/0x2cb lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_out_of_bounds+0x107/0x150 lib/ubsan.c:283
 xtInsert+0xfbe/0x1020 fs/jfs/jfs_xtree.c:622
 extAlloc+0xaa4/0x1030 fs/jfs/jfs_extent.c:145
 jfs_get_block+0x410/0xe30 fs/jfs/inode.c:248
 __block_write_begin_int+0x6f6/0x1d70 fs/buffer.c:2006
 __block_write_begin fs/buffer.c:2056 [inline]
 block_write_begin+0x93/0x1e0 fs/buffer.c:2117
 jfs_write_begin+0x2d/0x60 fs/jfs/inode.c:304
 generic_perform_write+0x314/0x610 mm/filemap.c:3738
 __generic_file_write_iter+0x176/0x400 mm/filemap.c:3866
 generic_file_write_iter+0xab/0x310 mm/filemap.c:3898
 do_iter_write+0x6f0/0xc50 fs/read_write.c:855
 vfs_writev fs/read_write.c:928 [inline]
 do_writev+0x27a/0x470 fs/read_write.c:971
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x2b/0x70 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f0e179f7fb9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffed4fe4448 EFLAGS: 00000246 ORIG_RAX: 0000000000000014
RAX: ffffffffffffffda RBX: 0030656c69662f2e RCX: 00007f0e179f7fb9
RDX: 0000000000000001 RSI: 0000000020000000 RDI: 0000000000000003
RBP: 00007f0e179b7780 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00000000f8008000
R13: 0000000000000000 R14: 00080000000000f4 R15: 0000000000000000
 </TASK>

The issue is caused when the value of index becomes greater than the
max size of array. Introducing check before accessing solves the issue.

The patch is tested via syzbot.

Reported-by: syzbot+55a7541cfd25df68109e@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?extid=55a7541cfd25df68109e
Signed-off-by: Osama Muhammad <osmtendev@gmail.com>
Signed-off-by: Mushahid Hussain <mushi.shar@gmail.com>
---
 fs/jfs/jfs_xtree.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/jfs/jfs_xtree.c b/fs/jfs/jfs_xtree.c
index 2d304cee8..034a1613f 100644
--- a/fs/jfs/jfs_xtree.c
+++ b/fs/jfs/jfs_xtree.c
@@ -619,6 +619,10 @@ int xtInsert(tid_t tid,		/* transaction id */
 			(nextindex - index) * sizeof(xad_t));
 
 	/* insert the new entry: mark the entry NEW */
+	if (index >= XTROOTMAXSLOT) {
+		rc = -EINVAL;
+		goto out;
+	}
 	xad = &p->xad[index];
 	XT_PUTENTRY(xad, xflag, xoff, xlen, xaddr);
 
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
