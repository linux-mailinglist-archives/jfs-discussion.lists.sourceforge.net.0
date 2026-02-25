Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENJ5MDVvoGkHjwQAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 17:05:09 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C28F1A98BF
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 17:05:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RHx6A1MR6AeKo77JnEBvqfpQi35LnMrKxYam3jcwVNk=; b=fd0EAlA8mtm+8uslBaV+/OuJzm
	PzsDhQSfe1ny/9yubFI67wJRyVPlNW3B/O4BSJbxuc4IM85rrldqvZqKt3eKSGcC0DwOkwP2ROhR7
	Yb40QTC3vkoEwnGombGBL/pCMAc2XLd2O4OWDyWoQIGyvPEaVaZuHAQWQ77VZM1R7is0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vvdqr-0002Tx-3x;
	Thu, 26 Feb 2026 16:04:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <352eeaQkbAIQ067sittmzixxql.owwotm20mzkwv1mv1.kwu@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vv5HJ-0006jV-Mv for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Feb 2026 03:09:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9EL7M3bd4yijGcAxsMbmxxz5lO6yXPYmbt5FWso09qU=; b=YSVxnTWHFHvUz4Awk64d0qpY2o
 gAGJR9UfdI+WN3O0KmVwU6PsBjJK8U8Y4riPYNuiXkBP5oeaLpS/hLDvZzS4wyEb8s+jxEBNjcVJY
 jS99LabK9c4hEqBOPHJUXDvg+gMBGgxUwsFSUN7PXMFGgZ1d/KP8DP+UrgplJATuLEFo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9EL7M3bd4yijGcAxsMbmxxz5lO6yXPYmbt5FWso09qU=; b=I
 75jcMNLmadt3BV0idZqSFNj75el7/+tEyeYbKhflUlkLg6nUnF8aJXoItYzXwdyiVM3SbN03ppUvL
 092gPkBQwYWC3/CNxuwU187i4wOJdN2EQXbWbJ2cV0tUfixF3fPS//nqkCaA4dBGigpovUvb1QBA7
 nGYp5p1vgoSLa0Ag=;
Received: from mail-oo1-f72.google.com ([209.85.161.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vv5HJ-00043A-6l for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Feb 2026 03:09:34 +0000
Received: by mail-oo1-f72.google.com with SMTP id
 006d021491bc7-679c448d15cso62160528eaf.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 24 Feb 2026 19:09:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1771988967; x=1772593767;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9EL7M3bd4yijGcAxsMbmxxz5lO6yXPYmbt5FWso09qU=;
 b=o0q7yTmzc+pbGdZD7LzO+uZQeynEGXMPSPrkkqxFbcfiCXWR1gKapI2cqwEJJ4fJVW
 LYUt1aBdoKMwMxT+LRMm52nn/0JLyWZCcqbYgKieP8eY0PBoaa8GLlfmlz5hAMoBaHbm
 Dvnx6Z+/vl5bEyGNTtt3OJJXySoVs616h2+DyiACnVBqYQLtKjIKcd3/ICBauHIjIPuK
 p9zBAqtaKbp5sNSKHJM/YS7e9DmguJnQgWhblU9elpikYqcFJY6DFBWlVJj16ZHThcB8
 8iDVE1FFm4pzFyC/HLYoQhv1q7n9glJrdvbc4VWYJYS4NuhYeX6yLI8AERlpM4khQkFX
 ZH0Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCWvwlbpKfE6evDC2zncfwTsFxX2pT2VjBlVP0SHrQ0BdAgX30NSRNGBHbEBt2ofgk16QUSy/I69zTzHVLz5DA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yy+PwZ1CjS9p640AD15oFN1bAmSUI1HGN9MvRBFMTBs+7u12ThU
 ELc/kn5IlnicVatumUoqYXCTH4vEZz+PlSzMfwn0oGQ3JDyPzroZrEgKmBqoG8eVbRPJiqueSzk
 JIdMBlk1H9yULj4kyE+Pz0IphPdWtlGLKaO0fBfyhudmWF3imcmuUmxmaLTk=
MIME-Version: 1.0
X-Received: by 2002:a4a:d899:0:b0:679:c549:202c with SMTP id
 006d021491bc7-679c549210cmr5391925eaf.14.1771988967598; Tue, 24 Feb 2026
 19:09:27 -0800 (PST)
Date: Tue, 24 Feb 2026 19:09:27 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <699e67e7.a00a0220.301b66.0000.GAE@google.com>
To: brauner@kernel.org, jack@suse.cz, jfs-discussion@lists.sourceforge.net, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: a95f71ad3e2e
 Merge tag 'for-linus' of git://git.kernel.org.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=14385722580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (3.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.72 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vv5HJ-00043A-6l
X-Mailman-Approved-At: Thu, 26 Feb 2026 16:04:31 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in
 generic_file_write_iter (4)
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
From: syzbot via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: syzbot <syzbot+9dd2144719bb071036a4@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-6.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	DATE_IN_PAST(1.00)[36];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=abe4fa590468dbfb];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:brauner@kernel.org,m:jack@suse.cz,m:jfs-discussion@lists.sourceforge.net,m:linux-fsdevel@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:shaggy@kernel.org,m:syzkaller-bugs@googlegroups.com,m:viro@zeniv.linux.org.uk,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	RSPAMD_URIBL_FAIL(0.00)[googlegroups.com:query timed out];
	ARC_NA(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,appspotmail.com:email,syzkaller.appspot.com:url,googlegroups.com:email,storage.googleapis.com:url,goo.gl:url,syzkaller.appspotmail.com:replyto];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[syzbot+9dd2144719bb071036a4@syzkaller.appspotmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[jfs-discussion];
	REDIRECTOR_URL(0.00)[goo.gl];
	SUBJECT_HAS_QUESTION(0.00)[]
X-Rspamd-Queue-Id: 2C28F1A98BF
X-Rspamd-Action: no action

Hello,

syzbot found the following issue on:

HEAD commit:    a95f71ad3e2e Merge tag 'for-linus' of git://git.kernel.org..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=14385722580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=abe4fa590468dbfb
dashboard link: https://syzkaller.appspot.com/bug?extid=9dd2144719bb071036a4
compiler:       Debian clang version 21.1.8 (++20251221033036+2078da43e25a-1~exp1~20251221153213.50), Debian LLD 21.1.8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1175c55a580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/8676ab01a8b8/disk-a95f71ad.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/e3314e350353/vmlinux-a95f71ad.xz
kernel image: https://storage.googleapis.com/syzbot-assets/6e2905ccbd1e/bzImage-a95f71ad.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/4a8adaa9093f/mount_0.gz
  fsck result: failed (log: https://syzkaller.appspot.com/x/fsck.log?x=16fbbc02580000)

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+9dd2144719bb071036a4@syzkaller.appspotmail.com

INFO: task syz.0.17:6090 blocked for more than 143 seconds.
      Not tainted syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz.0.17        state:D stack:28864 pid:6090  tgid:6084  ppid:5926   task_flags:0x400040 flags:0x00080002
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5295 [inline]
 __schedule+0x14fb/0x52c0 kernel/sched/core.c:6907
 __schedule_loop kernel/sched/core.c:6989 [inline]
 rt_mutex_schedule+0x76/0xf0 kernel/sched/core.c:7285
 rt_mutex_slowlock_block kernel/locking/rtmutex.c:1647 [inline]
 __rt_mutex_slowlock kernel/locking/rtmutex.c:1721 [inline]
 __rt_mutex_slowlock_locked+0x1f8f/0x25c0 kernel/locking/rtmutex.c:1760
 rt_mutex_slowlock+0xbd/0x170 kernel/locking/rtmutex.c:1800
 __rt_mutex_lock kernel/locking/rtmutex.c:1815 [inline]
 rwbase_write_lock+0x14d/0x730 kernel/locking/rwbase_rt.c:244
 inode_lock include/linux/fs.h:1028 [inline]
 generic_file_write_iter+0x11f/0x690 mm/filemap.c:4454
 new_sync_write fs/read_write.c:595 [inline]
 vfs_write+0x629/0xba0 fs/read_write.c:688
 ksys_write+0x156/0x270 fs/read_write.c:740
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0x14d/0xf80 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fb97161c629
RSP: 002b:00007fb970c55028 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
RAX: ffffffffffffffda RBX: 00007fb971896090 RCX: 00007fb97161c629
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000004
RBP: 00007fb9716b2b39 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007fb971896128 R14: 00007fb971896090 R15: 00007fff19dbf018
 </TASK>
INFO: task syz.2.19:6098 blocked for more than 143 seconds.
      Not tainted syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz.2.19        state:D stack:28920 pid:6098  tgid:6094  ppid:5931   task_flags:0x400040 flags:0x00080002
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5295 [inline]
 __schedule+0x14fb/0x52c0 kernel/sched/core.c:6907
 __schedule_loop kernel/sched/core.c:6989 [inline]
 rt_mutex_schedule+0x76/0xf0 kernel/sched/core.c:7285
 rt_mutex_slowlock_block kernel/locking/rtmutex.c:1647 [inline]
 __rt_mutex_slowlock kernel/locking/rtmutex.c:1721 [inline]
 __rt_mutex_slowlock_locked+0x1f8f/0x25c0 kernel/locking/rtmutex.c:1760
 rt_mutex_slowlock+0xbd/0x170 kernel/locking/rtmutex.c:1800
 __rt_mutex_lock kernel/locking/rtmutex.c:1815 [inline]
 rwbase_write_lock+0x14d/0x730 kernel/locking/rwbase_rt.c:244
 inode_lock include/linux/fs.h:1028 [inline]
 generic_file_write_iter+0x11f/0x690 mm/filemap.c:4454
 new_sync_write fs/read_write.c:595 [inline]
 vfs_write+0x629/0xba0 fs/read_write.c:688
 ksys_write+0x156/0x270 fs/read_write.c:740
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0x14d/0xf80 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f3c0760c629
RSP: 002b:00007f3c06c45028 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
RAX: ffffffffffffffda RBX: 00007f3c07886090 RCX: 00007f3c0760c629
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000004
RBP: 00007f3c076a2b39 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007f3c07886128 R14: 00007f3c07886090 R15: 00007fff24e91218
 </TASK>
INFO: task syz.3.20:6100 blocked for more than 143 seconds.
      Not tainted syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz.3.20        state:D stack:28648 pid:6100  tgid:6096  ppid:5939   task_flags:0x400040 flags:0x00080002
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5295 [inline]
 __schedule+0x14fb/0x52c0 kernel/sched/core.c:6907
 __schedule_loop kernel/sched/core.c:6989 [inline]
 rt_mutex_schedule+0x76/0xf0 kernel/sched/core.c:7285
 rt_mutex_slowlock_block kernel/locking/rtmutex.c:1647 [inline]
 __rt_mutex_slowlock kernel/locking/rtmutex.c:1721 [inline]
 __rt_mutex_slowlock_locked+0x1f8f/0x25c0 kernel/locking/rtmutex.c:1760
 rt_mutex_slowlock+0xbd/0x170 kernel/locking/rtmutex.c:1800
 __rt_mutex_lock kernel/locking/rtmutex.c:1815 [inline]
 rwbase_write_lock+0x14d/0x730 kernel/locking/rwbase_rt.c:244
 inode_lock include/linux/fs.h:1028 [inline]
 generic_file_write_iter+0x11f/0x690 mm/filemap.c:4454
 new_sync_write fs/read_write.c:595 [inline]
 vfs_write+0x629/0xba0 fs/read_write.c:688
 ksys_write+0x156/0x270 fs/read_write.c:740
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0x14d/0xf80 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fc0a48cc629
RSP: 002b:00007fc0a3f0d028 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
RAX: ffffffffffffffda RBX: 00007fc0a4b46090 RCX: 00007fc0a48cc629
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000004
RBP: 00007fc0a4962b39 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007fc0a4b46128 R14: 00007fc0a4b46090 R15: 00007ffd7a419a68
 </TASK>
INFO: task syz.1.18:6104 blocked for more than 143 seconds.
      Not tainted syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz.1.18        state:D stack:28840 pid:6104  tgid:6099  ppid:5932   task_flags:0x400040 flags:0x00080002
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5295 [inline]
 __schedule+0x14fb/0x52c0 kernel/sched/core.c:6907
 __schedule_loop kernel/sched/core.c:6989 [inline]
 rt_mutex_schedule+0x76/0xf0 kernel/sched/core.c:7285
 rt_mutex_slowlock_block kernel/locking/rtmutex.c:1647 [inline]
 __rt_mutex_slowlock kernel/locking/rtmutex.c:1721 [inline]
 __rt_mutex_slowlock_locked+0x1f8f/0x25c0 kernel/locking/rtmutex.c:1760
 rt_mutex_slowlock+0xbd/0x170 kernel/locking/rtmutex.c:1800
 __rt_mutex_lock kernel/locking/rtmutex.c:1815 [inline]
 rwbase_write_lock+0x14d/0x730 kernel/locking/rwbase_rt.c:244
 inode_lock include/linux/fs.h:1028 [inline]
 generic_file_write_iter+0x11f/0x690 mm/filemap.c:4454
 new_sync_write fs/read_write.c:595 [inline]
 vfs_write+0x629/0xba0 fs/read_write.c:688
 ksys_write+0x156/0x270 fs/read_write.c:740
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0x14d/0xf80 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f5b4e2ac629
RSP: 002b:00007f5b4d8ed028 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
RAX: ffffffffffffffda RBX: 00007f5b4e526090 RCX: 00007f5b4e2ac629
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000004
RBP: 00007f5b4e342b39 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007f5b4e526128 R14: 00007f5b4e526090 R15: 00007ffe2deb5398
 </TASK>
INFO: task syz.4.21:6108 blocked for more than 143 seconds.
      Not tainted syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz.4.21        state:D stack:28704 pid:6108  tgid:6106  ppid:5938   task_flags:0x400040 flags:0x00080002
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5295 [inline]
 __schedule+0x14fb/0x52c0 kernel/sched/core.c:6907
 __schedule_loop kernel/sched/core.c:6989 [inline]
 rt_mutex_schedule+0x76/0xf0 kernel/sched/core.c:7285
 rt_mutex_slowlock_block kernel/locking/rtmutex.c:1647 [inline]
 __rt_mutex_slowlock kernel/locking/rtmutex.c:1721 [inline]
 __rt_mutex_slowlock_locked+0x1f8f/0x25c0 kernel/locking/rtmutex.c:1760
 rt_mutex_slowlock+0xbd/0x170 kernel/locking/rtmutex.c:1800
 __rt_mutex_lock kernel/locking/rtmutex.c:1815 [inline]
 rwbase_write_lock+0x14d/0x730 kernel/locking/rwbase_rt.c:244
 inode_lock include/linux/fs.h:1028 [inline]
 generic_file_write_iter+0x11f/0x690 mm/filemap.c:4454
 new_sync_write fs/read_write.c:595 [inline]
 vfs_write+0x629/0xba0 fs/read_write.c:688
 ksys_write+0x156/0x270 fs/read_write.c:740
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0x14d/0xf80 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f81ffc6c629
RSP: 002b:00007f81ff2ad028 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
RAX: ffffffffffffffda RBX: 00007f81ffee6090 RCX: 00007f81ffc6c629
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000004
RBP: 00007f81ffd02b39 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007f81ffee6128 R14: 00007f81ffee6090 R15: 00007fffb07d9958
 </TASK>

Showing all locks held in the system:
3 locks held by ksoftirqd/0/15:
1 lock held by khungtaskd/38:
 #0: ffffffff8ddcd780 (rcu_read_lock){....}-{1:3}, at: rcu_lock_acquire include/linux/rcupdate.h:312 [inline]
 #0: ffffffff8ddcd780 (rcu_read_lock){....}-{1:3}, at: rcu_read_lock include/linux/rcupdate.h:850 [inline]
 #0: ffffffff8ddcd780 (rcu_read_lock){....}-{1:3}, at: debug_show_all_locks+0x2e/0x180 kernel/locking/lockdep.c:6775
2 locks held by getty/5549:
 #0: ffff888037eae0a0 (&tty->ldisc_sem){++++}-{0:0}, at: tty_ldisc_ref_wait+0x25/0x70 drivers/tty/tty_ldisc.c:243
 #1: ffffc90003e8b2e0 (&ldata->atomic_read_lock){+.+.}-{4:4}, at: n_tty_read+0x462/0x13c0 drivers/tty/n_tty.c:2211
2 locks held by syz.0.17/6085:
3 locks held by syz.0.17/6090:
 #0: ffff88803e18ff28 (&f->f_pos_lock){+.+.}-{4:4}, at: fdget_pos+0x252/0x320 fs/file.c:1261
 #1: ffff88804d77c480 (sb_writers#12){.+.+}-{0:0}, at: file_start_write include/linux/fs.h:2710 [inline]
 #1: ffff88804d77c480 (sb_writers#12){.+.+}-{0:0}, at: vfs_write+0x22d/0xba0 fs/read_write.c:684
 #2: ffff88805fe73a68 (&sb->s_type->i_mutex_key#24){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:1028 [inline]
 #2: ffff88805fe73a68 (&sb->s_type->i_mutex_key#24){+.+.}-{4:4}, at: generic_file_write_iter+0x11f/0x690 mm/filemap.c:4454
2 locks held by syz.2.19/6095:
3 locks held by syz.2.19/6098:
 #0: ffff88803ae8fb28 (&f->f_pos_lock){+.+.}-{4:4}, at: fdget_pos+0x252/0x320 fs/file.c:1261
 #1: ffff88803fce0480 (sb_writers#12){.+.+}-{0:0}, at: file_start_write include/linux/fs.h:2710 [inline]
 #1: ffff88803fce0480 (sb_writers#12){.+.+}-{0:0}, at: vfs_write+0x22d/0xba0 fs/read_write.c:684
 #2: ffff88805ff5a598 (&sb->s_type->i_mutex_key#24){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:1028 [inline]
 #2: ffff88805ff5a598 (&sb->s_type->i_mutex_key#24){+.+.}-{4:4}, at: generic_file_write_iter+0x11f/0x690 mm/filemap.c:4454
2 locks held by syz.3.20/6097:
3 locks held by syz.3.20/6100:
 #0: ffff88803b2cbf28 (&f->f_pos_lock){+.+.}-{4:4}, at: fdget_pos+0x252/0x320 fs/file.c:1261
 #1: ffff8880289bc480 (sb_writers#12){.+.+}-{0:0}, at: file_start_write include/linux/fs.h:2710 [inline]
 #1: ffff8880289bc480 (sb_writers#12){.+.+}-{0:0}, at: vfs_write+0x22d/0xba0 fs/read_write.c:684
 #2: ffff88805ff589d8 (&sb->s_type->i_mutex_key#24){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:1028 [inline]
 #2: ffff88805ff589d8 (&sb->s_type->i_mutex_key#24){+.+.}-{4:4}, at: generic_file_write_iter+0x11f/0x690 mm/filemap.c:4454
2 locks held by syz.1.18/6102:
3 locks held by syz.1.18/6104:
 #0: ffff8880319dd728 (&f->f_pos_lock){+.+.}-{4:4}, at: fdget_pos+0x252/0x320 fs/file.c:1261
 #1: ffff88802abf4480 (sb_writers#12){.+.+}-{0:0}, at: file_start_write include/linux/fs.h:2710 [inline]
 #1: ffff88802abf4480 (sb_writers#12){.+.+}-{0:0}, at: vfs_write+0x22d/0xba0 fs/read_write.c:684
 #2: ffff88805fe76af8 (&sb->s_type->i_mutex_key#24){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:1028 [inline]
 #2: ffff88805fe76af8 (&sb->s_type->i_mutex_key#24){+.+.}-{4:4}, at: generic_file_write_iter+0x11f/0x690 mm/filemap.c:4454
2 locks held by syz.4.21/6107:
3 locks held by syz.4.21/6108:
 #0: ffff88803c18f728 (&f->f_pos_lock){+.+.}-{4:4}, at: fdget_pos+0x252/0x320 fs/file.c:1261
 #1: ffff88803c510480 (sb_writers#12){.+.+}-{0:0}, at: file_start_write include/linux/fs.h:2710 [inline]
 #1: ffff88803c510480 (sb_writers#12){.+.+}-{0:0}, at: vfs_write+0x22d/0xba0 fs/read_write.c:684
 #2: ffff88805ff5f8d8 (&sb->s_type->i_mutex_key#24){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:1028 [inline]
 #2: ffff88805ff5f8d8 (&sb->s_type->i_mutex_key#24){+.+.}-{4:4}, at: generic_file_write_iter+0x11f/0x690 mm/filemap.c:4454
2 locks held by syz.5.22/6230:
3 locks held by syz.5.22/6237:
 #0: ffff888034873928 (&f->f_pos_lock){+.+.}-{4:4}, at: fdget_pos+0x252/0x320 fs/file.c:1261
 #1: ffff88805d8d2480 (sb_writers#12){.+.+}-{0:0}, at: file_start_write include/linux/fs.h:2710 [inline]
 #1: ffff88805d8d2480 (sb_writers#12){.+.+}-{0:0}, at: vfs_write+0x22d/0xba0 fs/read_write.c:684
 #2: ffff88805fe71ea8 (&sb->s_type->i_mutex_key#24){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:1028 [inline]
 #2: ffff88805fe71ea8 (&sb->s_type->i_mutex_key#24){+.+.}-{4:4}, at: generic_file_write_iter+0x11f/0x690 mm/filemap.c:4454
2 locks held by syz.7.24/6246:
3 locks held by syz.7.24/6250:
 #0: ffff888034641b28 (&f->f_pos_lock){+.+.}-{4:4}, at: fdget_pos+0x252/0x320 fs/file.c:1261
 #1: ffff888033b68480 (sb_writers#12){.+.+}-{0:0}, at: file_start_write include/linux/fs.h:2710 [inline]
 #1: ffff888033b68480 (sb_writers#12){.+.+}-{0:0}, at: vfs_write+0x22d/0xba0 fs/read_write.c:684
 #2: ffff88805fe702e8 (&sb->s_type->i_mutex_key#24){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:1028 [inline]
 #2: ffff88805fe702e8 (&sb->s_type->i_mutex_key#24){+.+.}-{4:4}, at: generic_file_write_iter+0x11f/0x690 mm/filemap.c:4454
3 locks held by syz.8.25/6249:
3 locks held by syz.8.25/6252:
 #0: ffff8880312b8728 (&f->f_pos_lock){+.+.}-{4:4}, at: fdget_pos+0x252/0x320 fs/file.c:1261
 #1: ffff888034d42480 (sb_writers#12){.+.+}-{0:0}, at: file_start_write include/linux/fs.h:2710 [inline]
 #1: ffff888034d42480 (sb_writers#12){.+.+}-{0:0}, at: vfs_write+0x22d/0xba0 fs/read_write.c:684
 #2: ffff88805ff5c848 (&sb->s_type->i_mutex_key#24){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:1028 [inline]
 #2: ffff88805ff5c848 (&sb->s_type->i_mutex_key#24){+.+.}-{4:4}, at: generic_file_write_iter+0x11f/0x690 mm/filemap.c:4454
2 locks held by syz.6.23/6253:
3 locks held by syz.6.23/6256:
 #0: ffff8880375c0728 (&f->f_pos_lock){+.+.}-{4:4}, at: fdget_pos+0x252/0x320 fs/file.c:1261
 #1: ffff888032a3a480 (sb_writers#12){.+.+}-{0:0}, at: file_start_write include/linux/fs.h:2710 [inline]
 #1: ffff888032a3a480 (sb_writers#12){.+.+}-{0:0}, at: vfs_write+0x22d/0xba0 fs/read_write.c:684
 #2: ffff8880601dba68 (&sb->s_type->i_mutex_key#24){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:1028 [inline]
 #2: ffff8880601dba68 (&sb->s_type->i_mutex_key#24){+.+.}-{4:4}, at: generic_file_write_iter+0x11f/0x690 mm/filemap.c:4454
2 locks held by syz.9.26/6258:
3 locks held by syz.9.26/6259:
 #0: ffff888036d13f28 (&f->f_pos_lock){+.+.}-{4:4}, at: fdget_pos+0x252/0x320 fs/file.c:1261
 #1: ffff88805570c480 (sb_writers#12){.+.+}-{0:0}, at: file_start_write include/linux/fs.h:2710 [inline]
 #1: ffff88805570c480 (sb_writers#12){.+.+}-{0:0}, at: vfs_write+0x22d/0xba0 fs/read_write.c:684
 #2: ffff8880601db378 (&sb->s_type->i_mutex_key#24){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:1028 [inline]
 #2: ffff8880601db378 (&sb->s_type->i_mutex_key#24){+.+.}-{4:4}, at: generic_file_write_iter+0x11f/0x690 mm/filemap.c:4454
2 locks held by syz.0.268/7113:
3 locks held by syz.0.268/7119:
 #0: ffff888038ce5528 (&f->f_pos_lock){+.+.}-{4:4}, at: fdget_pos+0x252/0x320 fs/file.c:1261
 #1: ffff888033dc4480 (sb_writers#5){.+.+}-{0:0}, at: file_start_write include/linux/fs.h:2710 [inline]
 #1: ffff888033dc4480 (sb_writers#5){.+.+}-{0:0}, at: vfs_write+0x22d/0xba0 fs/read_write.c:684
 #2: ffff888064bee598 (&sb->s_type->i_mutex_key#14){+.+.}-{4:4}, at: inode_lock include/linux/fs.h:1028 [inline]
 #2: ffff888064bee598 (&sb->s_type->i_mutex_key#14){+.+.}-{4:4}, at: shmem_file_write_iter+0x82/0x120 mm/shmem.c:3492
3 locks held by syz.4.270/7118:
4 locks held by syz.2.271/7122:
1 lock held by syz.1.272/7124:

=============================================

NMI backtrace for cpu 0
CPU: 0 UID: 0 PID: 38 Comm: khungtaskd Not tainted syzkaller #0 PREEMPT_{RT,(full)} 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 02/12/2026
Call Trace:
 <TASK>
 dump_stack_lvl+0xe8/0x150 lib/dump_stack.c:120
 nmi_cpu_backtrace+0x274/0x2d0 lib/nmi_backtrace.c:113
 nmi_trigger_cpumask_backtrace+0x17a/0x300 lib/nmi_backtrace.c:62
 trigger_all_cpu_backtrace include/linux/nmi.h:161 [inline]
 __sys_info lib/sys_info.c:157 [inline]
 sys_info+0x135/0x170 lib/sys_info.c:165
 check_hung_uninterruptible_tasks kernel/hung_task.c:346 [inline]
 watchdog+0xfd9/0x1030 kernel/hung_task.c:515
 kthread+0x388/0x470 kernel/kthread.c:467
 ret_from_fork+0x51e/0xb90 arch/x86/kernel/process.c:158
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:245
 </TASK>
Sending NMI from CPU 0 to CPUs 1:
NMI backtrace for cpu 1
CPU: 1 UID: 0 PID: 7124 Comm: syz.1.272 Not tainted syzkaller #0 PREEMPT_{RT,(full)} 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 02/12/2026
RIP: 0010:lockdep_recursion_finish kernel/locking/lockdep.c:470 [inline]
RIP: 0010:lock_acquire+0x10d/0x2e0 kernel/locking/lockdep.c:5870
Code: b4 24 88 00 00 00 41 56 e8 80 02 00 00 48 83 c4 28 48 c7 c7 c7 76 7b 8d e8 50 f4 81 09 b8 ff ff ff ff 65 0f c1 05 23 0d ae 10 <83> f8 01 0f 85 b0 00 00 00 9c 58 a9 00 02 00 00 0f 85 c3 00 00 00
RSP: 0000:ffffc90006c9f9d8 EFLAGS: 00000057
RAX: 0000000000000001 RBX: 0000000000000046 RCX: 0000000080000002
RDX: 00000000038e8b00 RSI: ffffffff8d7b76c7 RDI: ffffffff8ba64380
RBP: 0000000000000000 R08: ffffffff8193b67b R09: ffff88805aea4730
R10: dffffc0000000000 R11: fffffbfff1ed4477 R12: 0000000000000000
R13: ffff88805aea4730 R14: 0000000000000000 R15: 0000000000000001
FS:  00007f1a29ce66c0(0000) GS:ffff888126442000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f1a21bf3000 CR3: 0000000034962000 CR4: 00000000003526f0
Call Trace:
 <TASK>
 __raw_spin_lock_irqsave include/linux/spinlock_api_smp.h:132 [inline]
 _raw_spin_lock_irqsave+0x40/0x60 kernel/locking/spinlock.c:162
 _task_rq_lock+0x5b/0x470 kernel/sched/core.c:745
 __set_cpus_allowed_ptr kernel/sched/core.c:3104 [inline]
 ___migrate_enable+0xbb/0x1f0 kernel/sched/core.c:2378
 __migrate_enable include/linux/sched.h:2425 [inline]
 migrate_enable include/linux/sched.h:2474 [inline]
 rt_spin_unlock+0x17d/0x200 kernel/locking/spinlock_rt.c:81
 spin_unlock include/linux/spinlock_rt.h:109 [inline]
 do_anonymous_page mm/memory.c:5322 [inline]
 do_pte_missing+0xf8a/0x2d30 mm/memory.c:4475
 handle_pte_fault mm/memory.c:6316 [inline]
 __handle_mm_fault mm/memory.c:6454 [inline]
 handle_mm_fault+0xd0a/0x13c0 mm/memory.c:6623
 do_user_addr_fault+0xa73/0x1340 arch/x86/mm/fault.c:1334
 handle_page_fault arch/x86/mm/fault.c:1474 [inline]
 exc_page_fault+0x6a/0xc0 arch/x86/mm/fault.c:1527
 asm_exc_page_fault+0x26/0x30 arch/x86/include/asm/idtentry.h:618
RIP: 0033:0x7f1a2a543b0e
Code: c1 49 39 4f 08 72 54 8d 4d ff 85 ed 74 3b 66 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00 48 39 f0 72 1b 4d 8b 07 49 89 c1 49 29 f1 <47> 0f b6 0c 08 45 84 c9 74 08 45 88 0c 00 49 8b 47 10 48 83 c0 01
RSP: 002b:00007f1a29ce5470 EFLAGS: 00010206
RAX: 000000000032d001 RBX: 00007f1a29ce5530 RCX: 000000000000003c
RDX: 0000000000000000 RSI: 0000000000000001 RDI: 00007f1a29ce55d0
RBP: 0000000000000102 R08: 00007f1a218c6000 R09: 000000000032d000
R10: 0000000000000000 R11: 00007f1a29ce5540 R12: 0000000000000001
R13: 00007f1a2a742200 R14: 0000000000000000 R15: 00007f1a29ce55d0
 </TASK>


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

If you want to overwrite report's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the report is a duplicate of another one, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
