Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3115098D66E
	for <lists+jfs-discussion@lfdr.de>; Wed,  2 Oct 2024 15:41:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1svzb9-0006ds-94;
	Wed, 02 Oct 2024 13:40:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1svzb7-0006dh-Qj
 for jfs-discussion@lists.sourceforge.net;
 Wed, 02 Oct 2024 13:40:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qN4jdMdYc3XrKwX0MrXijGkE/HH5JkxIjoq4ke+SNt4=; b=IM9R/wVLCJy/LbdnvkzLKjLqNn
 U0pD9RlF7HHO4tb4Uh/zoDBpKl6YZBnO3yODUMlvz6EWEnBZo0HlH5CbzSBD25hAf6bh8W+RWTTyy
 mxCOb4XRHEAHpvNQ33Tq8KHskxey73YHAQ34S2gjOh96foxMhlc6Ng3BaS2im2vvjlNA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qN4jdMdYc3XrKwX0MrXijGkE/HH5JkxIjoq4ke+SNt4=; b=BqLG9iKLTY45a79j82IL6um8W6
 0D6y1vpwK3Wliz44L1Vny+rLUKIBMP9n2hIusgQb081bVkXcQyWnmTPoyH+lLGaWHzkM1Ntyscrtf
 surv5VObKydG8wnDDQH5hjhc7m7s2wxJkInrw9A+DVuZJQZZDr4H5fBmJWsn7vry1+zw=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1svzb6-0008Q0-1U for jfs-discussion@lists.sourceforge.net;
 Wed, 02 Oct 2024 13:40:57 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 382071FD63;
 Wed,  2 Oct 2024 13:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1727876444; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qN4jdMdYc3XrKwX0MrXijGkE/HH5JkxIjoq4ke+SNt4=;
 b=TnzRLz4wyBRrAd/SRoVhfy79zNrs0HGerb4290Wa41zekCbCvDy4L9rxcnZ+mXvugbfFTX
 KCLJTSlrLOWlrQAXblhefVK2oWRLMQ3VUyhU+nQLT6EyC+NeOc/Yoop6Cu4sYevnELBi2D
 9P/+c8y6owZak/YRNt7s7ghKItcB+Bo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1727876444;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qN4jdMdYc3XrKwX0MrXijGkE/HH5JkxIjoq4ke+SNt4=;
 b=E2EB3bn2CHboFzcxEQ5RrhbOjVJ8rMRz6+NPt6ePzB1JvQNHQjmk3I9GiR2kSwfAbBfEbN
 CLZmd2ExkWya1uCg==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1727876444; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qN4jdMdYc3XrKwX0MrXijGkE/HH5JkxIjoq4ke+SNt4=;
 b=TnzRLz4wyBRrAd/SRoVhfy79zNrs0HGerb4290Wa41zekCbCvDy4L9rxcnZ+mXvugbfFTX
 KCLJTSlrLOWlrQAXblhefVK2oWRLMQ3VUyhU+nQLT6EyC+NeOc/Yoop6Cu4sYevnELBi2D
 9P/+c8y6owZak/YRNt7s7ghKItcB+Bo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1727876444;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qN4jdMdYc3XrKwX0MrXijGkE/HH5JkxIjoq4ke+SNt4=;
 b=E2EB3bn2CHboFzcxEQ5RrhbOjVJ8rMRz6+NPt6ePzB1JvQNHQjmk3I9GiR2kSwfAbBfEbN
 CLZmd2ExkWya1uCg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 2AA0913974;
 Wed,  2 Oct 2024 13:40:44 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id CJJhClxN/WacIQAAD6G6ig
 (envelope-from <jack@suse.cz>); Wed, 02 Oct 2024 13:40:44 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id D4080A08CB; Wed,  2 Oct 2024 15:40:43 +0200 (CEST)
Date: Wed, 2 Oct 2024 15:40:43 +0200
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+de1498ff3a934ac5e8b4@syzkaller.appspotmail.com>
Message-ID: <20241002134043.4wyvsahhhsrtem2g@quack3>
References: <66fcb7f9.050a0220.f28ec.04e8.GAE@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <66fcb7f9.050a0220.f28ec.04e8.GAE@google.com>
X-Spam-Score: -1.30
X-Spamd-Result: default: False [-1.30 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 SUSPICIOUS_RECIPS(1.50)[];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=286b31f2cf1c36b5];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_RHS_NOT_FQDN(0.50)[];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 RCVD_VIA_SMTP_AUTH(0.00)[]; REDIRECTOR_URL(0.00)[goo.gl];
 MISSING_XM_UA(0.00)[]; TAGGED_RCPT(0.00)[de1498ff3a934ac5e8b4];
 ARC_NA(0.00)[]; MIME_TRACE(0.00)[0:+];
 RCPT_COUNT_SEVEN(0.00)[10];
 DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,suse.com:email];
 TO_DN_SOME(0.00)[]; FROM_EQ_ENVFROM(0.00)[];
 FROM_HAS_DN(0.00)[]; RCVD_COUNT_THREE(0.00)[3];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; FUZZY_BLOCKED(0.00)[rspamd.com];
 RCVD_TLS_LAST(0.00)[];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 SUBJECT_HAS_QUESTION(0.00)[]
X-Spam-Flag: NO
X-Spam-Level: 
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue 01-10-24 20:03:21, syzbot wrote: > Hello, > > syzbot
 found the following issue on: > > HEAD commit: e32cde8d2bd7 Merge tag
 'sched_ext-for-6.12-rc1-fixes-1'
 of.. > git tree: upstream > console o [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.223.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1svzb6-0008Q0-1U
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: null-ptr-deref Read in
 drop_buffers (3)
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
Cc: shaggy@kernel.org, brauner@kernel.org, jack@suse.cz,
 syzkaller-bugs@googlegroups.com, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue 01-10-24 20:03:21, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    e32cde8d2bd7 Merge tag 'sched_ext-for-6.12-rc1-fixes-1' of..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=17b18307980000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=286b31f2cf1c36b5
> dashboard link: https://syzkaller.appspot.com/bug?extid=de1498ff3a934ac5e8b4
> compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10718307980000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12f3939f980000
> 
> Downloadable assets:
> disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7feb34a89c2a/non_bootable_disk-e32cde8d.raw.xz
> vmlinux: https://storage.googleapis.com/syzbot-assets/9c681f5609bc/vmlinux-e32cde8d.xz
> kernel image: https://storage.googleapis.com/syzbot-assets/00b4d54de1d9/bzImage-e32cde8d.xz
> mounted in repro: https://storage.googleapis.com/syzbot-assets/14b0b7eafa4c/mount_0.gz
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+de1498ff3a934ac5e8b4@syzkaller.appspotmail.com
> 
> ==================================================================
> BUG: KASAN: null-ptr-deref in instrument_atomic_read include/linux/instrumented.h:68 [inline]
> BUG: KASAN: null-ptr-deref in atomic_read include/linux/atomic/atomic-instrumented.h:32 [inline]
> BUG: KASAN: null-ptr-deref in buffer_busy fs/buffer.c:2881 [inline]
> BUG: KASAN: null-ptr-deref in drop_buffers+0x6f/0x710 fs/buffer.c:2893
> Read of size 4 at addr 0000000000000060 by task kswapd0/74

Weird. This shows bh has been NULL in drop_buffers() which can happen only
when the buffer_head circular list on the page has been corrupted
(otherwise page_buffers() would have BUGed earlier). The reproducer does
only mount of JFS and FAT filesystems so likely suitably corrupted
filesystem for one of these is causing memory corruption. Added relevant
maintainers to CC to have a look.

								Honza

> CPU: 0 UID: 0 PID: 74 Comm: kswapd0 Not tainted 6.12.0-rc1-syzkaller-00031-ge32cde8d2bd7 #0
> Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
> Call Trace:
>  <TASK>
>  __dump_stack lib/dump_stack.c:94 [inline]
>  dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
>  print_report+0xe8/0x550 mm/kasan/report.c:491
>  kasan_report+0x143/0x180 mm/kasan/report.c:601
>  kasan_check_range+0x282/0x290 mm/kasan/generic.c:189
>  instrument_atomic_read include/linux/instrumented.h:68 [inline]
>  atomic_read include/linux/atomic/atomic-instrumented.h:32 [inline]
>  buffer_busy fs/buffer.c:2881 [inline]
>  drop_buffers+0x6f/0x710 fs/buffer.c:2893
>  try_to_free_buffers+0x295/0x5f0 fs/buffer.c:2947
>  shrink_folio_list+0x240c/0x8cc0 mm/vmscan.c:1432
>  evict_folios+0x549b/0x7b50 mm/vmscan.c:4583
>  try_to_shrink_lruvec+0x9ab/0xbb0 mm/vmscan.c:4778
>  shrink_one+0x3b9/0x850 mm/vmscan.c:4816
>  shrink_many mm/vmscan.c:4879 [inline]
>  lru_gen_shrink_node mm/vmscan.c:4957 [inline]
>  shrink_node+0x3799/0x3de0 mm/vmscan.c:5937
>  kswapd_shrink_node mm/vmscan.c:6765 [inline]
>  balance_pgdat mm/vmscan.c:6957 [inline]
>  kswapd+0x1ca3/0x3700 mm/vmscan.c:7226
>  kthread+0x2f0/0x390 kernel/kthread.c:389
>  ret_from_fork+0x4b/0x80 arch/x86/kernel/process.c:147
>  ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
>  </TASK>
> ==================================================================
> 
> 
> ---
> This report is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
> 
> syzbot will keep track of this issue. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> 
> If the report is already addressed, let syzbot know by replying with:
> #syz fix: exact-commit-title
> 
> If you want syzbot to run the reproducer, reply with:
> #syz test: git://repo/address.git branch-or-commit-hash
> If you attach or paste a git patch, syzbot will apply it before testing.
> 
> If you want to overwrite report's subsystems, reply with:
> #syz set subsystems: new-subsystem
> (See the list of subsystem names on the web dashboard)
> 
> If the report is a duplicate of another one, reply with:
> #syz dup: exact-subject-of-another-report
> 
> If you want to undo deduplication, reply with:
> #syz undup
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
