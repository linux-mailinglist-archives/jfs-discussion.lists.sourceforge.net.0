Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBjVFShHj2kiPAEAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Fri, 13 Feb 2026 16:45:44 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 261A5137AC1
	for <lists+jfs-discussion@lfdr.de>; Fri, 13 Feb 2026 16:45:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HLMcKYsbX/D+wctN2K6FsMxGA821mOSr2SkXxL2tQ28=; b=jqaCes7SY9q81mb73mV7I+p8sO
	vEx61hVcD4qSMyaycPyji8zWr6pWbCYFoARk8RBNazOB+mYiaYbScfNKzoOfAEH5b2crV6gIZhYxb
	IgK/71K/bTeYdriLbiMW34Wy6dm6G5Bx+eFfWpBnWOZMpUe4XR4tlfd52DsugCeahMk4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vqvLg-0003vN-Tx;
	Fri, 13 Feb 2026 15:44:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <samsun1006219@gmail.com>) id 1vqvLf-0003vE-MM
 for jfs-discussion@lists.sourceforge.net;
 Fri, 13 Feb 2026 15:44:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mHpcgdAO9JtlVhzKnVek+DOk6EKZtcnGZl/eIMyTp+Y=; b=M87Sdyb1JaUQU/Lm0vX22VslNE
 q3Y3vU+u4cozoRBhyQGhdj6xCA3E9paDLlTBNbsIxE38f+U272wc3YqY0mgEPLeVFme6yuYbIXmz2
 HDEGq0/DkdjuvDpuvMj1kdeXb3nLW98vORjcgvolvt1AK3mNhiisRigiRD/2AZIbyj20=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mHpcgdAO9JtlVhzKnVek+DOk6EKZtcnGZl/eIMyTp+Y=; b=k
 tQHg4FAC4QS4C0Bc+3G+nm77OzRxlx3rb9PiKYoWTxqibgP9p5hMcZqQ9J2dJsQPTmW8V2PU0n4vL
 DYmJTH1A7Tco3NCwY03Yh2yRwDiSDXUzDxAxrtovHKByNPgAFufJY9aBaJxGGVkahocP/gJ6lTZyw
 TbycwM6WMr3kh40M=;
Received: from mail-qt1-f179.google.com ([209.85.160.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vqvLe-0004El-P3 for jfs-discussion@lists.sourceforge.net;
 Fri, 13 Feb 2026 15:44:51 +0000
Received: by mail-qt1-f179.google.com with SMTP id
 d75a77b69052e-5069b3e0c66so20724821cf.1
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 13 Feb 2026 07:44:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770997480; cv=none;
 d=google.com; s=arc-20240605;
 b=F60m6JykPGVFsW+YCx42wIjSNbNwsr7/AQJ2l7NsGnRq98/TQ3lsSxf1kDfe8jcA4/
 kphb5hLkoyccVfLZ0mMxAfqYQda13QiIf60AOVnDMhu9187y6Z2WIGRp+1empYrO74lI
 81cFffB6oUbZBLoelIECudbSq/pkBW8b0dsgud21P0Y3J1rORy1A2zXlXaXfunt4nihZ
 OOjxV4TKC16gmGiQNeX+na2kSbHAv7LizAK0TKWUxqHm/rox/SpuzL3f2G/clXnkGNFQ
 prGF/FAaHHKK7F4iTorb0V7kCZLGHqi3NNAKNA2svockTSlkjqBQXABk/Ac/pdzbmVOM
 kPbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
 bh=mHpcgdAO9JtlVhzKnVek+DOk6EKZtcnGZl/eIMyTp+Y=;
 fh=J5CCh0Mjv1QS9+1NqbqCdaR7aMjOhVvfcPQ91z2lVuA=;
 b=SQRz8D3hISrCj7DV6aYNFcKuhm3yCD2pBkPy7gor3Tw3ctJw5MYprGczmLQoZBBSIM
 /hEHtb00Cjnm9ZlkxK0GebwT+dU8LvHD2W7Rb+2dEmbybwGLvlGPfLznRAl/HWH3ADhu
 pKGyyuHj2XDfEPtzObxSYu623c3NSwUhfX4qa7Wpa9cMVwifmCPyRaUnNYtUBfsLCy3R
 tVnkfMMbUtYorgSAfDFG8v+EmqRvNE4df29fP6FF6A5qthXIx5vxGpm/bDYEY/b1x2Dz
 rDSJYBmVrzqjShD7tVyhfWIYXqtx2i2+vp135p2VJy7PeO98yDufSZJQwE0hRvuBc/D5
 HKKg==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770997480; x=1771602280; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=mHpcgdAO9JtlVhzKnVek+DOk6EKZtcnGZl/eIMyTp+Y=;
 b=kuLh9STMdOXzYicbICdxJAUa1zhiM0tQVtd7PJMsiQEcEc+mP/NjYUacHXGKMKncMr
 WOOQcErpPHYsuzBFR3SkxVNMVFCwNaVzCaH9ShDlgwLJkuuu94GtoG8f1YTLT6SSwVcR
 AFAk+ClWll+lXnhBWcAtmjaf/cvMhXZctiGNluxoKzBzRcn3Us+c2wITNKQvnu+adtix
 GEJPLKPvwWjzAK2rzpnVH0jLmtPei/PUR4uFJBLC4arNy+iWqtSY18jOGxVVq7we01FC
 k7Z5qMPTWFJyLcEfbP/PmgvVpAdup8OehaDc9Iu0v8IpEepiBxuKLpWECG9ppf+dzUbv
 8QQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770997480; x=1771602280;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=mHpcgdAO9JtlVhzKnVek+DOk6EKZtcnGZl/eIMyTp+Y=;
 b=W/BKF2XbD0ygijEU87WAkSF8Z8LGGuz1ock2iA3J51hSIdVElUuhDK1piqLvCuxccW
 qQXMSgvYd6rEyfyhuoVK2B58KljCj4JykcN50SFinN//Av9HBveJeX+9Ooenavdb/NPr
 HMZ5114fi+OrsWbtvzy6qceB6qQj8dQHyK4Z8ICwzks/6/O55QNDphRT6RErRT9Eny16
 TALhmlfm8Q22Y3RSWANN79WsstgtAYwZh/nRS5yEAPmcy8WgCMor+w2wzhTC0Z/qlv7l
 0YA/B0Z5r1LUrglW2FBb4VVwZNknB77jPcQ9yZTWEM3bt8vXOf2ToTVFiVe/Nc+9bpd6
 mEww==
X-Forwarded-Encrypted: i=1;
 AJvYcCUjA2LayRA17rrjggRyO4DsrcPSF4AihRQmgwFjSgzCIVGS6Eq8NDOnQEPFc7AQHMrMM0RmuJzZXb4QNLwF2Q==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwFH8trGrVbcJWchbqYf4TqpREGdrzEU65qdmL5ONimFpVv9DpG
 pcjLKWNRN4nYgMr4bIFKb7NjdsXQnLr70F25f4pKUmsU5RNLmDZebkiwkWwLRgtCu8EUmtnG7Fm
 HXDzrHvhKlD1ut1qGW+PPc38qma/V6eY=
X-Gm-Gg: AZuq6aKMgH2h+ca9Ijs2u4BJx1lgBDjamwu2LXyTVp5lBIrQe0Maaae2voaC9omjsUb
 Lxxv6aJayyhglLTDXp64ya8t40rI8XZT6ycUmOWPqI4DDDXMBQhayJ1eAV9CJqg5atVMRcNSU+B
 QOO3Am2EuVquxfFu3Fan3hECW4XxXboXhZDFiQtEFSxfB7dvhAQ8TSlWPJhJf+gUnxy1KcOSIKa
 sIl+G01yCyheupYuk2eQV3i6cwiN7bVPGLEMvOOtFiYN4lygtDV09O1FMSp1E71jWD1tamkG2bG
 JseejmbR
X-Received: by 2002:a05:622a:1a96:b0:4f1:de87:ad90 with SMTP id
 d75a77b69052e-506b25fc7c9mr8413201cf.4.1770997479215; Fri, 13 Feb 2026
 07:44:39 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 13 Feb 2026 23:44:28 +0800
X-Gm-Features: AZwV_Qi38IgdTK3_8v3idWLA9ydFuBD7aEuB-ubE1RQeBfUm5_ph54QOX04dbbU
Message-ID: <CAEkJfYOD0AU88t+2nKUvB4SVuo=b_dkJVBUP9JJRYXeDewFPkw@mail.gmail.com>
To: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, 
 linux-kernel@vger.kernel.org
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear developers and maintainers, We encountered a KASAN bug
 that crashes in the JFS directory tree insertion path during fuzzing using
 a modified syzkaller. The bug was found on kernel v6.19, and the bug report
 is listed below. 
 Content analysis details:   (0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [samsun1006219(at)gmail.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [samsun1006219(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.179 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vqvLe-0004El-P3
Subject: [Jfs-discussion] [Bug] KASAN: slab-use-after-free Read in
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
From: Sam Sun via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Sam Sun <samsun1006219@gmail.com>
Cc: syzkaller@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-5.21 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_MIXED(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:shaggy@kernel.org,m:jfs-discussion@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:syzkaller@googlegroups.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20230601];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	TAGGED_RCPT(0.00)[jfs-discussion];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[samsun1006219@gmail.com];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 261A5137AC1
X-Rspamd-Action: no action

Dear developers and maintainers,

We encountered a KASAN bug that crashes in the JFS directory tree
insertion path during fuzzing using a modified syzkaller. The bug was
found on kernel v6.19, and the bug report is listed below.

==================================================================
BUG: KASAN: slab-use-after-free in dtInsertEntry.isra.0+0x12dd/0x15f0
fs/jfs/jfs_dtree.c:3701
Read of size 1 at addr ff11000124004580 by task syz.0.1269/28159

CPU: 1 UID: 0 PID: 28159 Comm: syz.0.1269 Tainted: G             L
 6.19.0-01452-g72c395024dac-dirty #8 PREEMPT(full)
Tainted: [L]=SOFTLOCKUP
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x116/0x1b0 lib/dump_stack.c:120
 print_address_description mm/kasan/report.c:378 [inline]
 print_report+0xca/0x5f0 mm/kasan/report.c:482
 kasan_report+0xca/0x100 mm/kasan/report.c:595
 dtInsertEntry.isra.0+0x12dd/0x15f0 fs/jfs/jfs_dtree.c:3701
 dtInsert+0x49b/0xad0 fs/jfs/jfs_dtree.c:894
 jfs_create+0x609/0xb30 fs/jfs/namei.c:138
 lookup_open.isra.0+0xc12/0x1030 fs/namei.c:4483
 open_last_lookups fs/namei.c:4583 [inline]
 path_openat+0xe97/0x2cf0 fs/namei.c:4827
 do_file_open+0x216/0x470 fs/namei.c:4859
 do_sys_openat2+0xe6/0x250 fs/open.c:1366
 do_sys_open fs/open.c:1372 [inline]
 __do_sys_openat fs/open.c:1388 [inline]
 __se_sys_openat fs/open.c:1383 [inline]
 __x64_sys_openat+0x13f/0x1f0 fs/open.c:1383
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xcb/0xf80 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f54f93b145d
Code: 02 b8 ff ff ff ff c3 66 0f 1f 44 00 00 f3 0f 1e fa 48 89 f8 48
89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d
01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f54fa23ef98 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
RAX: ffffffffffffffda RBX: 00007f54f9655fe0 RCX: 00007f54f93b145d
RDX: 000000000000275a RSI: 00002000000010c0 RDI: ffffffffffffff9c
RBP: 000000000000000b R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000004f5000c
R13: 00007f54f9656078 R14: 00007f54f9655fe0 R15: 00007f54fa21f000
 </TASK>

Allocated by task 26041:
 kasan_save_stack+0x24/0x50 mm/kasan/common.c:57
 kasan_save_track+0x14/0x30 mm/kasan/common.c:78
 unpoison_slab_object mm/kasan/common.c:340 [inline]
 __kasan_slab_alloc+0x87/0x90 mm/kasan/common.c:366
 kasan_slab_alloc include/linux/kasan.h:253 [inline]
 slab_post_alloc_hook mm/slub.c:4953 [inline]
 slab_alloc_node mm/slub.c:5263 [inline]
 kmem_cache_alloc_lru_noprof+0x26b/0x790 mm/slub.c:5282
 jfs_alloc_inode+0x27/0x60 fs/jfs/super.c:105
 alloc_inode+0x68/0x250 fs/inode.c:346
 new_inode+0x22/0x1d0 fs/inode.c:1176
 diReadSpecial+0x53/0x730 fs/jfs/jfs_imap.c:426
 jfs_mount+0xe5/0x8b0 fs/jfs/jfs_mount.c:87
 jfs_fill_super+0x820/0x1030 fs/jfs/super.c:523
 get_tree_bdev_flags+0x389/0x620 fs/super.c:1694
 vfs_get_tree+0x93/0x340 fs/super.c:1754
 fc_mount+0x1a/0x220 fs/namespace.c:1193
 do_new_mount_fc fs/namespace.c:3760 [inline]
 do_new_mount fs/namespace.c:3836 [inline]
 path_mount+0x76e/0x20a0 fs/namespace.c:4146
 do_mount fs/namespace.c:4159 [inline]
 __do_sys_mount fs/namespace.c:4348 [inline]
 __se_sys_mount fs/namespace.c:4325 [inline]
 __x64_sys_mount+0x293/0x310 fs/namespace.c:4325
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xcb/0xf80 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Freed by task 23:
 kasan_save_stack+0x24/0x50 mm/kasan/common.c:57
 kasan_save_track+0x14/0x30 mm/kasan/common.c:78
 kasan_save_free_info+0x3b/0x60 mm/kasan/generic.c:584
 poison_slab_object mm/kasan/common.c:253 [inline]
 __kasan_slab_free+0x61/0x80 mm/kasan/common.c:285
 kasan_slab_free include/linux/kasan.h:235 [inline]
 slab_free_hook mm/slub.c:2540 [inline]
 slab_free mm/slub.c:6674 [inline]
 kmem_cache_free+0x154/0x760 mm/slub.c:6789
 i_callback+0x46/0x70 fs/inode.c:325
 rcu_do_batch kernel/rcu/tree.c:2617 [inline]
 rcu_core+0x59e/0x1130 kernel/rcu/tree.c:2869
 handle_softirqs+0x1d4/0x8e0 kernel/softirq.c:622
 run_ksoftirqd kernel/softirq.c:1063 [inline]
 run_ksoftirqd+0x3a/0x60 kernel/softirq.c:1055
 smpboot_thread_fn+0x3d4/0xaa0 kernel/smpboot.c:160
 kthread+0x38d/0x4a0 kernel/kthread.c:467
 ret_from_fork+0x966/0xaf0 arch/x86/kernel/process.c:158
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:246

Last potentially related work creation:
 kasan_save_stack+0x24/0x50 mm/kasan/common.c:57
 kasan_record_aux_stack+0xa7/0xc0 mm/kasan/generic.c:556
 __call_rcu_common.constprop.0+0xa4/0xa00 kernel/rcu/tree.c:3131
 destroy_inode+0x12c/0x1b0 fs/inode.c:401
 evict+0x574/0xa90 fs/inode.c:861
 iput_final fs/inode.c:1957 [inline]
 iput.part.0+0x5bb/0xf50 fs/inode.c:2006
 iput+0x35/0x40 fs/inode.c:1972
 diFreeSpecial+0x7b/0x110 fs/jfs/jfs_imap.c:552
 jfs_umount+0x213/0x440 fs/jfs/jfs_umount.c:81
 jfs_put_super+0x85/0x1d0 fs/jfs/super.c:194
 generic_shutdown_super+0x15e/0x390 fs/super.c:646
 kill_block_super+0x3b/0x90 fs/super.c:1725
 deactivate_locked_super+0xbf/0x1a0 fs/super.c:476
 deactivate_super fs/super.c:509 [inline]
 deactivate_super+0xb1/0xd0 fs/super.c:505
 cleanup_mnt+0x2df/0x430 fs/namespace.c:1312
 task_work_run+0x16b/0x260 kernel/task_work.c:233
 resume_user_mode_work include/linux/resume_user_mode.h:50 [inline]
 __exit_to_user_mode_loop kernel/entry/common.c:44 [inline]
 exit_to_user_mode_loop+0x11e/0x520 kernel/entry/common.c:75
 __exit_to_user_mode_prepare include/linux/irq-entry-common.h:226 [inline]
 syscall_exit_to_user_mode_prepare include/linux/irq-entry-common.h:256 [inline]
 syscall_exit_to_user_mode_work include/linux/entry-common.h:159 [inline]
 syscall_exit_to_user_mode include/linux/entry-common.h:194 [inline]
 do_syscall_64+0x4ec/0xf80 arch/x86/entry/syscall_64.c:100
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

The buggy address belongs to the object at ff11000124004018
 which belongs to the cache jfs_ip of size 2216
The buggy address is located 1384 bytes inside of
 freed 2216-byte region [ff11000124004018, ff110001240048c0)

The buggy address belongs to the physical page:
page: refcount:0 mapcount:0 mapping:0000000000000000
index:0xff11000124000000 pfn:0x124000
head: order:3 mapcount:0 entire_mapcount:0 nr_pages_mapped:0 pincount:0
memcg:ff11000107f4cc01
flags: 0x57ff00000000040(head|node=1|zone=2|lastcpupid=0x7ff)
page_type: f5(slab)
raw: 057ff00000000040 ff1100001df57b40 dead000000000122 0000000000000000
raw: ff11000124000000 00000000800d000c 00000000f5000000 ff11000107f4cc01
head: 057ff00000000040 ff1100001df57b40 dead000000000122 0000000000000000
head: ff11000124000000 00000000800d000c 00000000f5000000 ff11000107f4cc01
head: 057ff00000000003 ffd4000004900001 00000000ffffffff 00000000ffffffff
head: ffffffffffffffff 0000000000000000 00000000ffffffff 0000000000000008
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Reclaimable, gfp_mask
0xd2050(__GFP_RECLAIMABLE|__GFP_IO|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC),
pid 10963, tgid 10962 (syz.2.11), ts 59603361833, free_ts 59331310638
 set_page_owner include/linux/page_owner.h:32 [inline]
 post_alloc_hook+0x1ca/0x240 mm/page_alloc.c:1884
 prep_new_page mm/page_alloc.c:1892 [inline]
 get_page_from_freelist+0xdb3/0x2a70 mm/page_alloc.c:3945
 __alloc_frozen_pages_noprof+0x256/0x20f0 mm/page_alloc.c:5240
 alloc_pages_mpol+0x1f1/0x550 mm/mempolicy.c:2486
 alloc_slab_page mm/slub.c:3075 [inline]
 allocate_slab mm/slub.c:3248 [inline]
 new_slab+0x2d0/0x440 mm/slub.c:3302
 ___slab_alloc+0xdd8/0x1bc0 mm/slub.c:4656
 __slab_alloc.constprop.0+0x66/0x110 mm/slub.c:4779
 __slab_alloc_node mm/slub.c:4855 [inline]
 slab_alloc_node mm/slub.c:5251 [inline]
 kmem_cache_alloc_lru_noprof+0x4be/0x790 mm/slub.c:5282
 jfs_alloc_inode+0x27/0x60 fs/jfs/super.c:105
 alloc_inode+0x68/0x250 fs/inode.c:346
 new_inode+0x22/0x1d0 fs/inode.c:1176
 jfs_fill_super+0x6ab/0x1030 fs/jfs/super.c:511
 get_tree_bdev_flags+0x389/0x620 fs/super.c:1694
 vfs_get_tree+0x93/0x340 fs/super.c:1754
 fc_mount+0x1a/0x220 fs/namespace.c:1193
 do_new_mount_fc fs/namespace.c:3760 [inline]
 do_new_mount fs/namespace.c:3836 [inline]
 path_mount+0x76e/0x20a0 fs/namespace.c:4146
page last free pid 11012 tgid 11012 stack trace:
 reset_page_owner include/linux/page_owner.h:25 [inline]
 free_pages_prepare mm/page_alloc.c:1433 [inline]
 __free_frozen_pages+0x83e/0x1130 mm/page_alloc.c:2973
 discard_slab mm/slub.c:3346 [inline]
 __put_partials+0x132/0x170 mm/slub.c:3886
 qlink_free mm/kasan/quarantine.c:163 [inline]
 qlist_free_all+0x4e/0xf0 mm/kasan/quarantine.c:179
 kasan_quarantine_reduce+0x195/0x1e0 mm/kasan/quarantine.c:286
 __kasan_slab_alloc+0x67/0x90 mm/kasan/common.c:350
 kasan_slab_alloc include/linux/kasan.h:253 [inline]
 slab_post_alloc_hook mm/slub.c:4953 [inline]
 slab_alloc_node mm/slub.c:5263 [inline]
 kmem_cache_alloc_lru_noprof+0x26b/0x790 mm/slub.c:5282
 shmem_alloc_inode+0x27/0x50 mm/shmem.c:5181
 alloc_inode+0x68/0x250 fs/inode.c:346
 new_inode+0x22/0x1d0 fs/inode.c:1176
 __shmem_get_inode mm/shmem.c:3097 [inline]
 shmem_get_inode+0x19c/0x1000 mm/shmem.c:3171
 shmem_symlink+0xec/0x8f0 mm/shmem.c:4132
 vfs_symlink fs/namei.c:5615 [inline]
 vfs_symlink+0x180/0x4e0 fs/namei.c:5594
 filename_symlinkat+0x363/0x490 fs/namei.c:5640
 __do_sys_symlinkat fs/namei.c:5660 [inline]
 __se_sys_symlinkat fs/namei.c:5655 [inline]
 __x64_sys_symlinkat+0xa4/0x140 fs/namei.c:5655
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xcb/0xf80 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Memory state around the buggy address:
 ff11000124004480: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ff11000124004500: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>ff11000124004580: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                   ^
 ff11000124004600: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ff11000124004680: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
==================================================================

<<<<<<<<<<<<<<< tail report >>>>>>>>>>>>>>>

raw: 057ff00000000040 ff1100001df57b40 dead000000000122 0000000000000000
raw: ff11000124000000 00000000800d000c 00000000f5000000 ff11000107f4cc01
head: 057ff00000000040 ff1100001df57b40 dead000000000122 0000000000000000
head: ff11000124000000 00000000800d000c 00000000f5000000 ff11000107f4cc01
head: 057ff00000000003 ffd4000004900001 00000000ffffffff 00000000ffffffff
head: ffffffffffffffff 0000000000000000 00000000ffffffff 0000000000000008
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Reclaimable, gfp_mask
0xd2050(__GFP_RECLAIMABLE|__GFP_IO|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC),
pid 10963, tgid 10962 (syz.2.11), ts 59603361833, free_ts 59331310638
 post_alloc_hook+0x1ca/0x240
 get_page_from_freelist+0xdb3/0x2a70
 __alloc_frozen_pages_noprof+0x256/0x20f0
 alloc_pages_mpol+0x1f1/0x550
 new_slab+0x2d0/0x440
 ___slab_alloc+0xdd8/0x1bc0
 __slab_alloc.constprop.0+0x66/0x110
 kmem_cache_alloc_lru_noprof+0x4be/0x790
 jfs_alloc_inode+0x27/0x60
 alloc_inode+0x68/0x250
 new_inode+0x22/0x1d0
 jfs_fill_super+0x6ab/0x1030
 get_tree_bdev_flags+0x389/0x620
 vfs_get_tree+0x93/0x340
 fc_mount+0x1a/0x220
 path_mount+0x76e/0x20a0
page last free pid 11012 tgid 11012 stack trace:
 __free_frozen_pages+0x83e/0x1130
 __put_partials+0x132/0x170
 qlist_free_all+0x4e/0xf0
 kasan_quarantine_reduce+0x195/0x1e0
 __kasan_slab_alloc+0x67/0x90
 kmem_cache_alloc_lru_noprof+0x26b/0x790
 shmem_alloc_inode+0x27/0x50
 alloc_inode+0x68/0x250
 new_inode+0x22/0x1d0
 shmem_get_inode+0x19c/0x1000
 shmem_symlink+0xec/0x8f0
 vfs_symlink+0x180/0x4e0
 filename_symlinkat+0x363/0x490
 __x64_sys_symlinkat+0xa4/0x140
 do_syscall_64+0xcb/0xf80
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
Memory state around the buggy address:
 ff11000124004480: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ff11000124004500: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>ff11000124004580: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                   ^
 ff11000124004600: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ff11000124004680: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
==================================================================

Unfortunately, no reproducer is available currently. If you have any
questions, please let me know.

Best regards,
Yue


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
