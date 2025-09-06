Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C855BB46E31
	for <lists+jfs-discussion@lfdr.de>; Sat,  6 Sep 2025 15:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:From:References:To:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QJQoHxvzWZwhjFr3zuHDetlemd8Qa/iZqY+mzWOO3Xw=; b=SwpCAX34L0f9sw76CSG2xJoF0a
	BFCIIYpN89alx/+dGrWEvPUvtJXff5IU2YEaq9nAaDySooua6RGXIWef4K7Ctp/qFAvmXNT2TE4aA
	OE+juXknPXOIHr6bQEtWIOy3MvB9ibw/2ADtTHbU2KR/Kt9bpTScT60iKRaDac0applY=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uut13-0000Fc-OV;
	Sat, 06 Sep 2025 13:31:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <penguin-kernel@I-love.SAKURA.ne.jp>)
 id 1uut12-0000FW-Al for jfs-discussion@lists.sourceforge.net;
 Sat, 06 Sep 2025 13:31:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W3RV8h8t/3UWT+BdhuejOemKXIuu7PzIp9vQ/OYcUwI=; b=fkQBupj2ChdEEqIOucXsDJd8Ra
 TCi71B5katyrUDB06cNye3McmLjlXkgiCkjOSh5+K/cILQRfNo/yonTsMNC2kd1JJznyQe3WrUMaG
 EWrFPPjINlTUxgqVZ/ACuPmYk6kQSA3Sqbk6jcxZPNpMx22FH/Oz7ZzNPyUDhO+b+HS8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W3RV8h8t/3UWT+BdhuejOemKXIuu7PzIp9vQ/OYcUwI=; b=bhKR9Q0ntt/gnctJQUobfYG68M
 4iNvQzn33Rs/ghPWL2FwiX4Juh9aZoXwSbNCAGPEuy3ykCp+cK0fVpf8JFjCUnhMeBwmLJnXQi1Yo
 ZeCUY9BYM5xn8RTR7GPUYrqA9i0qUVHYvgqyR55h4ZyEi++N1KoEXoMp347cO9AU2alw=;
Received: from www262.sakura.ne.jp ([202.181.97.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uut11-0003gB-F5 for jfs-discussion@lists.sourceforge.net;
 Sat, 06 Sep 2025 13:31:40 +0000
Received: from www262.sakura.ne.jp (localhost [127.0.0.1])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 586DUZVP092719;
 Sat, 6 Sep 2025 22:30:35 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from [192.168.1.10] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 586DUZ8m092716
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 6 Sep 2025 22:30:35 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <fa7b2e99-f91d-4126-9d0a-1b0330023394@I-love.SAKURA.ne.jp>
Date: Sat, 6 Sep 2025 22:30:31 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: syzbot <syzbot+cba6270878c89ed64a2d@syzkaller.appspotmail.com>,
 akpm@linux-foundation.org, brauner@kernel.org, frank.li@vivo.com,
 glaubitz@physik.fu-berlin.de, jack@suse.cz,
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, mcgrof@kernel.org,
 shaggy@kernel.org, slava@dubeyko.com, syzkaller-bugs@googlegroups.com,
 viro@zeniv.linux.org.uk, willy@infradead.org
References: <00000000000091e466061cee5be7@google.com>
 <68b55245.050a0220.3db4df.01bc.GAE@google.com>
 <20250902144655.5em4trxkeks7nwgx@offworld>
Content-Language: en-US
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <20250902144655.5em4trxkeks7nwgx@offworld>
X-Anti-Virus-Server: fsav203.rs.sakura.ne.jp
X-Virus-Status: clean
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2025/09/02 23:46, Davidlohr Bueso wrote: > On Mon, 01 Sep
 2025, syzbot wrote: > >> syzbot has bisected this issue to: >> >> commit
 5b67d43976828dea2394eae2556b369bb7a61f64 >> Author: Davidlohr Bues [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Headers-End: 1uut11-0003gB-F5
Subject: Re: [Jfs-discussion] [syzbot] [hfs?] INFO: task hung in
 deactivate_super (3)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 2025/09/02 23:46, Davidlohr Bueso wrote:
> On Mon, 01 Sep 2025, syzbot wrote:
> 
>> syzbot has bisected this issue to:
>>
>> commit 5b67d43976828dea2394eae2556b369bb7a61f64
>> Author: Davidlohr Bueso <dave@stgolabs.net>
>> Date:   Fri Apr 18 01:59:17 2025 +0000
>>
>>    fs/buffer: use sleeping version of __find_get_block()
> 
> I don't think this bisection is right, considering this issue was first
> triggered last year (per the dashboard).

I think this bisection is not bogus; at least that commit made this problem
easily triggerable enough to find a reproducer...

What is common to this report is that deactivate_super() is blocked waiting
for hfs_sync_fs() to complete and release sb->s_umount lock.

Current sample crash report (shown below) tells us that PID = 5962 (who is trying
to hold for write) is blocked inside deactivate_super() waiting for PID = 6254
(who is already holding for read) to release sb->s_umount lock. But since PID = 6254
is blocked at io_schedule(), PID = 6254 can't release sb->s_umount lock.

The question is why PID = 6254 is blocked for two minutes waiting for io_schedule()
to complete. I suspect that commit 5b67d4397682 is relevant, for that commit has
changed the behavior of bdev_getblk() which PID = 6254 is blocked. Some method for
reporting what is happening (e.g. report details when folio_lock() is blocked for
more than 10 seconds) is wanted. Of course, it is possible that a corrupted hfs
filesystem image is leading to an infinite loop...



INFO: task syz-executor:5962 blocked for more than 143 seconds.
      Not tainted syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor    state:D stack:21832 pid:5962  tgid:5962  ppid:1      task_flags:0x400140 flags:0x00004004
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5357 [inline]
 __schedule+0x16f3/0x4c20 kernel/sched/core.c:6961
 __schedule_loop kernel/sched/core.c:7043 [inline]
 rt_mutex_schedule+0x77/0xf0 kernel/sched/core.c:7339
 rwbase_write_lock+0x3dd/0x750 kernel/locking/rwbase_rt.c:272
 __super_lock fs/super.c:57 [inline]
 __super_lock_excl fs/super.c:72 [inline]
 deactivate_super+0xa9/0xe0 fs/super.c:506
 cleanup_mnt+0x425/0x4c0 fs/namespace.c:1375
 task_work_run+0x1d4/0x260 kernel/task_work.c:227
 exit_to_user_mode_loop+0[  309.321754][   T38]  resume_user_mode_work include/linux/resume_user_mode.h:50 [inline]
 exit_to_user_mode_loop+0[  309.321754][   T38]  exit_to_user_mode_loop+0xec/0x110 kernel/entry/common.c:43
 exit_to_user_mode_prepare include/linux/irq-entry-common.h:225 [inline]
 syscall_exit_to_user_mode_work include/linux/entry-common.h:175 [inline]
 syscall_exit_to_user_mode include/linux/entry-common.h:210 [inline]
 do_syscall_64+0x2bd/0x3b0 arch/x86/entry/syscall_64.c:100
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7ff4a4aaff17
RSP: 002b:00007ffe8b16a008 EFLAGS: 00000246 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 00007ff4a4b31c05 RCX: 00007ff4a4aaff17
RDX: 0000000000000000 RSI: 0000000000000009 RDI: 00007ffe8b16a0c0
RBP: 00007ffe8b16a0c0 R08: 0000000000000000 R09: 0000000000000000
R10: 00000000ffffffff R11: 0000000000000246 R12: 00007ffe8b16b150
R13: 00007ff4a4b31c05 R14: 00000000000257d4 R15: 00007ffe8b16b190
 </TASK>
1 lock held by syz-executor/5962:
 #0: ffff88803976c0d0 (&type->s_umount_key#72){++++}-{4:4}, at: __super_lock fs/super.c:57 [inline]
 #0: ffff88803976c0d0 (&type->s_umount_key#72){++++}-{4:4}, at: __super_lock_excl fs/super.c:72 [inline]
 #0: ffff88803976c0d0 (&type->s_umount_key#72){++++}-{4:4}, at: deactivate_super+0xa9/0xe0 fs/super.c:506

INFO: task syz.4.168:6254 blocked for more than 143 seconds.
      Not tainted syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz.4.168       state:D stack:25800 pid:6254  tgid:6254  ppid:5967   task_flags:0x400140 flags:0x00004004
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5357 [inline]
 __schedule+0x16f3/0x4c20 kernel/sched/core.c:6961
 __schedule_loop kernel/sched/core.c:7043 [inline]
 schedule+0x165/0x360 kernel/sched/core.c:7058
 io_schedule+0x81/0xe0 kernel/sched/core.c:7903
 folio_wait_bit_common+0x6b5/0xb90 mm/filemap.c:1317
 folio_lock include/linux/pagemap.h:1133 [inline]
 __find_get_block_slow fs/buffer.c:205 [inline]
 find_get_block_common+0x2e6/0xfc0 fs/buffer.c:1408
 bdev_getblk+0x4b/0x660 fs/buffer.c:-1
 __bread_gfp+0x89/0x3c0 fs/buffer.c:1515
 sb_bread include/linux/buffer_head.h:346 [inline]
 hfs_mdb_commit+0xa42/0x1160 fs/hfs/mdb.c:318
 hfs_sync_fs+0x15/0x20 fs/hfs/super.c:37
 __iterate_supers+0x13a/0x290 fs/super.c:924
 ksys_sync+0xa3/0x150 fs/sync.c:103
 __ia32_sys_sync+0xe/0x20 fs/sync.c:113
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xfa/0x3b0 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f35c0abebe9
RSP: 002b:00007fff821c57b8 EFLAGS: 00000246 ORIG_RAX: 00000000000000a2
RAX: ffffffffffffffda RBX: 00007f35c0cf5fa0 RCX: 00007f35c0abebe9
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007f35c0cf5fa0 R14: 00007f35c0cf5fa0 R15: 0000000000000000
 </TASK>
1 lock held by syz.4.168/6254:
 #0: ffff88803976c0d0 (&type->s_umount_key#72){++++}-{4:4}, at: __super_lock fs/super.c:59 [inline]
 #0: ffff88803976c0d0 (&type->s_umount_key#72){++++}-{4:4}, at: super_lock+0x2a9/0x3b0 fs/super.c:121



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
