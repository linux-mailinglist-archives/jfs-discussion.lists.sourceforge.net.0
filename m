Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA279D0F2D
	for <lists+jfs-discussion@lfdr.de>; Mon, 18 Nov 2024 12:04:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tCzYR-0003iW-AR;
	Mon, 18 Nov 2024 11:04:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1tCzYP-0003iN-OZ
 for jfs-discussion@lists.sourceforge.net;
 Mon, 18 Nov 2024 11:04:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6vCH4fT25UAM+LK3vGgiSrmNPx5b+seiHu6tJYQO25c=; b=CjeySbdzV8Y8vCiPyOuEdQeMMf
 tvDHP3yFFrkSUrszU+iGQrKqX1Wy+hv5LUTrZzMxVKuGp8G6Thg4iQpNW18JXYeO/76R19drV90pX
 H4UtMZc4EDFU7KNvsaDoXr4hpq/Rk70SETEu3EAt8ZnwCNZEnpV7WIHF63e99bleLxQM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6vCH4fT25UAM+LK3vGgiSrmNPx5b+seiHu6tJYQO25c=; b=BFRReniyRlwOd+jkE13cNK1qI3
 SUqZWMQoGqp3MfStHQvTJAfaK6NKsYhgQ60MVwUD0iTjJGAevurm96IJqiXloaGepSBjiY0Vw/m6L
 uhAYv0pUB/UHNb1PelrEyUUiP6r9pCjp/9GSPqQm3y1gDEB3ys4v/QUAlwVb4dwOHpBE=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tCzYN-0004vl-TH for jfs-discussion@lists.sourceforge.net;
 Mon, 18 Nov 2024 11:04:25 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 624271F365;
 Mon, 18 Nov 2024 11:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1731927852; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6vCH4fT25UAM+LK3vGgiSrmNPx5b+seiHu6tJYQO25c=;
 b=vAkuQX38+MlQdorYrWrdn2UXx0IFRo06D9A78Pgp8OaFevLxHGeEynz8UlFJ/ZsFpCio6D
 P5UfTFWCHPooAWvOvlqrdzCHNjPgLpeG/WXaXtInvlRdOyTGRFCAIcaQO6u9sfjL/GiA1C
 AzEUZEkXKVfFhWNBqGozcwtu03eZ0Ao=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1731927852;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6vCH4fT25UAM+LK3vGgiSrmNPx5b+seiHu6tJYQO25c=;
 b=x6cnkTgw6kd6/Wst4wRNijvIG9lVF11kndfq7U1w2977VjXnkyWaSyZJhv2giOS9oj2/u8
 YNxpaSW5KF6JO2BA==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1731927852; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6vCH4fT25UAM+LK3vGgiSrmNPx5b+seiHu6tJYQO25c=;
 b=vAkuQX38+MlQdorYrWrdn2UXx0IFRo06D9A78Pgp8OaFevLxHGeEynz8UlFJ/ZsFpCio6D
 P5UfTFWCHPooAWvOvlqrdzCHNjPgLpeG/WXaXtInvlRdOyTGRFCAIcaQO6u9sfjL/GiA1C
 AzEUZEkXKVfFhWNBqGozcwtu03eZ0Ao=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1731927852;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6vCH4fT25UAM+LK3vGgiSrmNPx5b+seiHu6tJYQO25c=;
 b=x6cnkTgw6kd6/Wst4wRNijvIG9lVF11kndfq7U1w2977VjXnkyWaSyZJhv2giOS9oj2/u8
 YNxpaSW5KF6JO2BA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 4517B1376E;
 Mon, 18 Nov 2024 11:04:12 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id uAmWECwfO2dpOgAAD6G6ig
 (envelope-from <jack@suse.cz>); Mon, 18 Nov 2024 11:04:12 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id DEAC9A0984; Mon, 18 Nov 2024 12:04:11 +0100 (CET)
Date: Mon, 18 Nov 2024 12:04:11 +0100
From: Jan Kara <jack@suse.cz>
To: "Bai, Shuangpeng" <SJB7183@PSU.EDU>
Message-ID: <20241118110411.adggbvad6ncocbhr@quack3>
References: <3A6D2300-7787-4C96-8509-B8D5907B9135@psu.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3A6D2300-7787-4C96-8509-B8D5907B9135@psu.edu>
X-Spam-Level: 
X-Spamd-Result: default: False [-3.80 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_RHS_NOT_FQDN(0.50)[];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 TO_DN_EQ_ADDR_SOME(0.00)[]; MISSING_XM_UA(0.00)[];
 MIME_TRACE(0.00)[0:+]; TO_DN_SOME(0.00)[]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; FROM_HAS_DN(0.00)[];
 RCPT_COUNT_FIVE(0.00)[6]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 FROM_EQ_ENVFROM(0.00)[]; RCVD_COUNT_THREE(0.00)[3];
 RCVD_TLS_LAST(0.00)[];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 FUZZY_BLOCKED(0.00)[rspamd.com];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email]
X-Spam-Score: -3.80
X-Spam-Flag: NO
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello! On Mon 18-11-24 04:32:38, Bai, Shuangpeng wrote: >
 Our tool found a new kernel bug KASAN: wild-memory-access in > dqput.part.0.
 Please see the details below. > > Kernel commit: v6.12 (upstream) > Kern
 [...] Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [195.135.223.131 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [195.135.223.131 listed in bl.score.senderscore.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.223.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tCzYN-0004vl-TH
Subject: Re: [Jfs-discussion] KASAN: wild-memory-access in dqput.part.0
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 "syzkaller@googlegroups.com" <syzkaller@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jack@suse.com" <jack@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello!

On Mon 18-11-24 04:32:38, Bai, Shuangpeng wrote:
> Our tool found a new kernel bug KASAN: wild-memory-access in
> dqput.part.0. Please see the details below.
> 
> Kernel commit: v6.12 (upstream)
> Kernel config: attachment
> C/Syz reproducer: attachment
> 
> [  341.442215][T17431] ==================================================================
> [341.444194][T17431] BUG: KASAN: wild-memory-access in dqput.part.0 (./arch/x86/include/asm/atomic.h:23 ./include/linux/atomic/atomic-arch-fallback.h:457 ./include/linux/atomic/atomic-instrumented.h:33 fs/quota/dquot.c:867)
> [  341.448056][T17431] Read of size 4 at addr 006d03ff00000150 by task a.out/17431

This is a call to atomic_read(&dquot->dq_count) inside dqput(). And the
address 006d03ff00000150 shows that dqput() has just been called with bogus
pointer. Which means that jfs2_evict_inode() calls dquot_drop() likely with
uninitialized i_dquot array. Shaggy, can you have a look?

								Honza

> [  341.449702][T17431]
> [  341.450245][T17431] CPU: 1 UID: 0 PID: 17431 Comm: a.out Not tainted 6.12.0 #8
> [  341.451865][T17431] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/2014
> [  341.453827][T17431] Call Trace:
> [  341.454559][T17431]  <TASK>
> [341.455199][T17431] dump_stack_lvl (lib/dump_stack.c:123)
> [341.457411][T17431] ? dqput.part.0 (./arch/x86/include/asm/atomic.h:23 ./include/linux/atomic/atomic-arch-fallback.h:457 ./include/linux/atomic/atomic-instrumented.h:33 fs/quota/dquot.c:867)
> [341.458459][T17431] kasan_report (mm/kasan/report.c:603)
> [341.459399][T17431] ? rcu_is_watching (./include/linux/context_tracking.h:128 kernel/rcu/tree.c:737)
> [341.460465][T17431] ? dqput.part.0 (./arch/x86/include/asm/atomic.h:23 ./include/linux/atomic/atomic-arch-fallback.h:457 ./include/linux/atomic/atomic-instrumented.h:33 fs/quota/dquot.c:867)
> [341.461472][T17431] kasan_check_range (mm/kasan/generic.c:183 mm/kasan/generic.c:189)
> [341.462560][T17431] dqput.part.0 (./arch/x86/include/asm/atomic.h:23 ./include/linux/atomic/atomic-arch-fallback.h:457 ./include/linux/atomic/atomic-instrumented.h:33 fs/quota/dquot.c:867)
> [341.463548][T17431] __dquot_drop (fs/quota/dquot.c:422 fs/quota/dquot.c:1607)
> [341.464548][T17431] ? __pfx___dquot_drop (fs/quota/dquot.c:1595)
> [341.465592][T17431] ? mark_held_locks (kernel/locking/lockdep.c:4321)
> [341.466683][T17431] ? _raw_spin_unlock_irq (./arch/x86/include/asm/irqflags.h:42 ./arch/x86/include/asm/irqflags.h:97 ./include/linux/spinlock_api_smp.h:159 kernel/locking/spinlock.c:202)
> [341.467852][T17431] dquot_drop (fs/quota/dquot.c:1633)
> [341.468844][T17431] jfs_evict_inode (./include/linux/list.h:373 fs/jfs/inode.c:169)
> [341.469841][T17431] ? __pfx_jfs_evict_inode (fs/jfs/inode.c:140)
> [341.471018][T17431] evict (fs/inode.c:730)
> [341.471878][T17431] ? __pfx_evict (fs/inode.c:701)
> [341.472844][T17431] ? evict_inodes (fs/inode.c:828)
> [341.473850][T17431] ? __pfx_lock_release (kernel/locking/lockdep.c:5833)
> [341.474965][T17431] dispose_list (fs/inode.c:775)
> [341.475931][T17431] evict_inodes (fs/inode.c:789)
> [341.476929][T17431] ? __pfx_evict_inodes (fs/inode.c:789)
> [341.478083][T17431] ? sync_blockdev (block/bdev.c:220)
> [341.480239][T17431] generic_shutdown_super (fs/super.c:633)
> [341.481352][T17431] kill_block_super (fs/super.c:1711)
> [341.482294][T17431] deactivate_locked_super (fs/super.c:475)
> [341.483433][T17431] deactivate_super (fs/super.c:508)
> [341.484415][T17431] cleanup_mnt (fs/namespace.c:250 fs/namespace.c:1374)
> [341.485400][T17431] task_work_run (kernel/task_work.c:241 (discriminator 1))
> [341.486378][T17431] ? __pfx_task_work_run (kernel/task_work.c:207)
> [341.487470][T17431] ? __put_net (net/core/net_namespace.c:675)
> [341.488455][T17431] do_exit (kernel/exit.c:940)
> [341.489372][T17431] ? __pfx_lock_release (kernel/locking/lockdep.c:5833)
> [341.490389][T17431] ? do_raw_spin_lock (./arch/x86/include/asm/atomic.h:107 ./include/linux/atomic/atomic-arch-fallback.h:2170 ./include/linux/atomic/atomic-instrumented.h:1302 ./include/asm-generic/qspinlock.h:111 kernel/locking/spinlock_debug.c:116)
> [341.491477][T17431] ? __pfx_do_exit (kernel/exit.c:878)
> [341.492477][T17431] ? _raw_spin_unlock_irq (./arch/x86/include/asm/irqflags.h:42 ./arch/x86/include/asm/irqflags.h:97 ./include/linux/spinlock_api_smp.h:159 kernel/locking/spinlock.c:202)
> [341.493553][T17431] do_group_exit (kernel/exit.c:1069)
> [341.494577][T17431] __x64_sys_exit_group (kernel/exit.c:1097)
> [341.495730][T17431] x64_sys_call (./arch/x86/include/generated/asm/syscalls_64.h:61)
> [341.496761][T17431] do_syscall_64 (arch/x86/entry/common.c:52 arch/x86/entry/common.c:83)
> [341.497753][T17431] entry_SYSCALL_64_after_hwframe (arch/x86/entry/entry_64.S:130)
> [  341.499093][T17431] RIP: 0033:0x7fb31b2de146
> [ 341.500054][T17431] Code: Unable to access opcode bytes at 0x7fb31b2de11c.
> 
> Code starting with the faulting instruction
> ===========================================
> [  341.501546][T17431] RSP: 002b:00007ffc5afbf7b8 EFLAGS: 00000246 ORIG_RAX: 00000000000000e7
> [  341.503383][T17431] RAX: ffffffffffffffda RBX: 00007fb31b3e38a0 RCX: 00007fb31b2de146
> [  341.505155][T17431] RDX: 0000000000000001 RSI: 000000000000003c RDI: 0000000000000001
> [  341.506907][T17431] RBP: 0000000000000001 R08: 00000000000000e7 R09: ffffffffffffff80
> [  341.508600][T17431] R10: 0000000000000002 R11: 0000000000000246 R12: 00007fb31b3e38a0
> [  341.510320][T17431] R13: 0000000000000001 R14: 00007fb31b3ec2e8 R15: 0000000000000000
> [  341.512053][T17431]  </TASK>
> [  341.512753][T17431] ==================================================================
> [  341.514883][T17431] Kernel panic - not syncing: KASAN: panic_on_warn set ...
> [  341.516508][T17431] CPU: 1 UID: 0 PID: 17431 Comm: a.out Not tainted 6.12.0 #8
> [  341.518075][T17431] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/2014
> [  341.520110][T17431] Call Trace:
> [  341.520841][T17431]  <TASK>
> [341.521478][T17431] dump_stack_lvl (lib/dump_stack.c:124 (discriminator 7))
> [341.522380][T17431] panic (kernel/panic.c:354)
> [341.523136][T17431] ? mark_held_locks (kernel/locking/lockdep.c:4321)
> [341.524057][T17431] ? __pfx_panic (kernel/panic.c:288)
> [341.525001][T17431] ? irqentry_exit (kernel/entry/common.c:358)
> [341.526063][T17431] ? lockdep_hardirqs_on (kernel/locking/lockdep.c:4468)
> [341.527213][T17431] ? check_panic_on_warn (kernel/panic.c:242)
> [341.528379][T17431] check_panic_on_warn (kernel/panic.c:243)
> [341.529413][T17431] end_report (mm/kasan/report.c:226)
> [341.530412][T17431] ? dqput.part.0 (./arch/x86/include/asm/atomic.h:23 ./include/linux/atomic/atomic-arch-fallback.h:457 ./include/linux/atomic/atomic-instrumented.h:33 fs/quota/dquot.c:867)
> [341.531436][T17431] kasan_report (./arch/x86/include/asm/smap.h:56 mm/kasan/report.c:606)
> [341.532391][T17431] ? rcu_is_watching (./include/linux/context_tracking.h:128 kernel/rcu/tree.c:737)
> [341.533429][T17431] ? dqput.part.0 (./arch/x86/include/asm/atomic.h:23 ./include/linux/atomic/atomic-arch-fallback.h:457 ./include/linux/atomic/atomic-instrumented.h:33 fs/quota/dquot.c:867)
> [341.534496][T17431] kasan_check_range (mm/kasan/generic.c:183 mm/kasan/generic.c:189)
> [341.535592][T17431] dqput.part.0 (./arch/x86/include/asm/atomic.h:23 ./include/linux/atomic/atomic-arch-fallback.h:457 ./include/linux/atomic/atomic-instrumented.h:33 fs/quota/dquot.c:867)
> [341.536598][T17431] __dquot_drop (fs/quota/dquot.c:422 fs/quota/dquot.c:1607)
> [341.537612][T17431] ? __pfx___dquot_drop (fs/quota/dquot.c:1595)
> [341.538756][T17431] ? mark_held_locks (kernel/locking/lockdep.c:4321)
> [341.539798][T17431] ? _raw_spin_unlock_irq (./arch/x86/include/asm/irqflags.h:42 ./arch/x86/include/asm/irqflags.h:97 ./include/linux/spinlock_api_smp.h:159 kernel/locking/spinlock.c:202)
> [341.540960][T17431] dquot_drop (fs/quota/dquot.c:1633)
> [341.541927][T17431] jfs_evict_inode (./include/linux/list.h:373 fs/jfs/inode.c:169)
> [341.542976][T17431] ? __pfx_jfs_evict_inode (fs/jfs/inode.c:140)
> [341.544121][T17431] evict (fs/inode.c:730)
> [341.544961][T17431] ? __pfx_evict (fs/inode.c:701)
> [341.545974][T17431] ? evict_inodes (fs/inode.c:828)
> [341.547059][T17431] ? __pfx_lock_release (kernel/locking/lockdep.c:5833)
> [341.548146][T17431] dispose_list (fs/inode.c:775)
> [341.549081][T17431] evict_inodes (fs/inode.c:789)
> [341.550043][T17431] ? __pfx_evict_inodes (fs/inode.c:789)
> [341.551081][T17431] ? sync_blockdev (block/bdev.c:220)
> [341.552101][T17431] generic_shutdown_super (fs/super.c:633)
> [341.553173][T17431] kill_block_super (fs/super.c:1711)
> [341.554216][T17431] deactivate_locked_super (fs/super.c:475)
> [341.555353][T17431] deactivate_super (fs/super.c:508)
> [341.556360][T17431] cleanup_mnt (fs/namespace.c:250 fs/namespace.c:1374)
> [341.557394][T17431] task_work_run (kernel/task_work.c:241 (discriminator 1))
> [341.558438][T17431] ? __pfx_task_work_run (kernel/task_work.c:207)
> [341.559595][T17431] ? __put_net (net/core/net_namespace.c:675)
> [341.560526][T17431] do_exit (kernel/exit.c:940)
> [341.561426][T17431] ? __pfx_lock_release (kernel/locking/lockdep.c:5833)
> [341.562555][T17431] ? do_raw_spin_lock (./arch/x86/include/asm/atomic.h:107 ./include/linux/atomic/atomic-arch-fallback.h:2170 ./include/linux/atomic/atomic-instrumented.h:1302 ./include/asm-generic/qspinlock.h:111 kernel/locking/spinlock_debug.c:116)
> [341.563642][T17431] ? __pfx_do_exit (kernel/exit.c:878)
> [341.564688][T17431] ? _raw_spin_unlock_irq (./arch/x86/include/asm/irqflags.h:42 ./arch/x86/include/asm/irqflags.h:97 ./include/linux/spinlock_api_smp.h:159 kernel/locking/spinlock.c:202)
> [341.565796][T17431] do_group_exit (kernel/exit.c:1069)
> [341.566798][T17431] __x64_sys_exit_group (kernel/exit.c:1097)
> [341.567988][T17431] x64_sys_call (./arch/x86/include/generated/asm/syscalls_64.h:61)
> [341.569005][T17431] do_syscall_64 (arch/x86/entry/common.c:52 arch/x86/entry/common.c:83)
> [341.569991][T17431] entry_SYSCALL_64_after_hwframe (arch/x86/entry/entry_64.S:130)
> [  341.571281][T17431] RIP: 0033:0x7fb31b2de146
> [ 341.572302][T17431] Code: Unable to access opcode bytes at 0x7fb31b2de11c.
> 
> Code starting with the faulting instruction
> ===========================================
> [  341.573763][T17431] RSP: 002b:00007ffc5afbf7b8 EFLAGS: 00000246 ORIG_RAX: 00000000000000e7
> [  341.575510][T17431] RAX: ffffffffffffffda RBX: 00007fb31b3e38a0 RCX: 00007fb31b2de146
> [  341.577279][T17431] RDX: 0000000000000001 RSI: 000000000000003c RDI: 0000000000000001
> [  341.578979][T17431] RBP: 0000000000000001 R08: 00000000000000e7 R09: ffffffffffffff80
> [  341.580726][T17431] R10: 0000000000000002 R11: 0000000000000246 R12: 00007fb31b3e38a0
> [  341.582427][T17431] R13: 0000000000000001 R14: 00007fb31b3ec2e8 R15: 0000000000000000
> [  341.584109][T17431]  </TASK>
> [  341.584889][T17431] Kernel Offset: disabled
> [  341.585801][T17431] Rebooting in 86400 seconds..
> 
> 
> Best,
> Shuangpeng
> 
> 



-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
