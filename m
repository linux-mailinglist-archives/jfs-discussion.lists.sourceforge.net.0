Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cO8oHQ3ypGlTwQUAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Mon, 02 Mar 2026 03:12:29 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F211D26D8
	for <lists+jfs-discussion@lfdr.de>; Mon, 02 Mar 2026 03:12:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Sb8f0XGCJ6KP2eNqclECR3Ysde4nSetz8rOUqQwI+MU=; b=jO+SJkjVzzpSsWgKnT65/b6Y+g
	I+iLkaRUt7aEEL7kwm2bUGm7xnEHJCpogexacM4NZLrDnNhTiCFrjJ963gwBtDHvB71XGIYk3312m
	RJ+eIwsf9MTi4Jf5lo9vouUAr+xhttWw7XiT8OEzVjKb3PCPQuMQMRpH1Yl6XvD9o0Vs=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vwsl6-0004SQ-B3;
	Mon, 02 Mar 2026 02:11:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3AaukaQkbAD4x34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vwo8d-0000oj-6W for jfs-discussion@lists.sourceforge.net;
 Sun, 01 Mar 2026 21:15:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fEQ0iAya6HPisiCNC02e+MNaco1uu24wTEBT6z+ciHs=; b=VGN9e7KhBt75CMzFXkMlkjgvBQ
 vpV35zbVWh+vOKGrfpxLwIt5mpLKAG05ySje3xBAaRgpxoFwwdc3pcE6I1Uwa0vJavJNwrdmtxWNb
 FXm7v0h1GVmkEnAcDe/kdXbpj/R3/iDg9XvNgEJ2zyPfye6wVTLZKw3qTwAO6IdZwS/o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fEQ0iAya6HPisiCNC02e+MNaco1uu24wTEBT6z+ciHs=; b=h
 OLj431CmHhjKOhbvUUN3ndbm9JcmMDtpYVzjVe2unIrfsLHu+YuDWtqYOZBnClKfwNfYyWu/DzDZ7
 fJhtX4ud+wNuJa/3mrebGI9qUbp/ulCtF4WfuXofQvrkLYjtMRfGa6ODKhWGLlBxjgMSSVP2RIuza
 34m2sim2OCWstO5U=;
Received: from mail-ot1-f69.google.com ([209.85.210.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vwo8c-0005lO-LJ for jfs-discussion@lists.sourceforge.net;
 Sun, 01 Mar 2026 21:15:43 +0000
Received: by mail-ot1-f69.google.com with SMTP id
 46e09a7af769-7d4c7afa9e0so55153082a34.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 01 Mar 2026 13:15:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772399732; x=1773004532;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fEQ0iAya6HPisiCNC02e+MNaco1uu24wTEBT6z+ciHs=;
 b=JnM67AW9rBGuEsSpiPxVzJ5q76FKWM0n/tvmxyAHVPrr909Zg/qO1C+EbjO61HZy2f
 2oqmt+EjG1uuZ9ldwjagLVy19Fawjg7EslK0xNjodfKAx/3CUKbtnPgzfOz7Va3HCdD8
 1E0BfbbA3gFUp6cJFlKujAATXfsRxg4lsRxzyDknjWKz4nNTRSk7bFdbiD5ReRsN8imU
 9MpZd/VvAlMhw5ckcGiXeQVpd44SSO415ib1Ds+mii71YKzFHyT4W1ShwHiy80wzchHz
 pGkFWYuQy8Ospct/O5/7NWkowPt7sFdEwLNMwdyZW28VfXtS7GYgDPdgDOH8urvR0yCW
 WxFA==
X-Gm-Message-State: AOJu0Yw02mWO+LF77SCoUmEIv4prkEjVFBdcxGjSCYzhigBs0SEkPwdY
 Shj4O2c5JBpMQblgGsJ2j8PledYwhZZbuZuzPu7YXsqNaHYu99qXU9KOSAWyDPG9r+f48nbE4Ff
 KCI95EK6NrDCqfobH3JYL/7ZAWyMkfqz4VbMfuSmS4FxYYvW1tQjb1va7Rpk=
MIME-Version: 1.0
X-Received: by 2002:a05:6820:3088:b0:677:87ab:a78a with SMTP id
 006d021491bc7-679faf4fb6emr5243537eaf.61.1772399361175; Sun, 01 Mar 2026
 13:09:21 -0800 (PST)
Date: Sun, 01 Mar 2026 13:09:21 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <69a4ab01.050a0220.3a55be.0069.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: d9d32e5bd5a4
 Merge tag 'ata-7.0-rc2' of git://git.kernel.o.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=172e80ba580000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.85.210.69 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.69 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vwo8c-0005lO-LJ
X-Mailman-Approved-At: Mon, 02 Mar 2026 02:11:42 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in jfs_flush_journal (3)
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
Reply-To: syzbot <syzbot+4c8d1f29732a21567e4e@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-7.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=70fe0401f305d8d4];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	DBL_BLOCKED_OPENRESOLVER(0.00)[storage.googleapis.com:url,goo.gl:url,googlegroups.com:email,appspotmail.com:email,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim];
	TO_DN_NONE(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-];
	NEURAL_HAM(-0.00)[-1.000];
	REDIRECTOR_URL(0.00)[goo.gl];
	HAS_REPLYTO(0.00)[syzbot+4c8d1f29732a21567e4e@syzkaller.appspotmail.com];
	TAGGED_RCPT(0.00)[jfs-discussion];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	SUBJECT_HAS_QUESTION(0.00)[]
X-Rspamd-Queue-Id: A5F211D26D8
X-Rspamd-Action: no action

Hello,

syzbot found the following issue on:

HEAD commit:    d9d32e5bd5a4 Merge tag 'ata-7.0-rc2' of git://git.kernel.o..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=172e80ba580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=70fe0401f305d8d4
dashboard link: https://syzkaller.appspot.com/bug?extid=4c8d1f29732a21567e4e
compiler:       Debian clang version 21.1.8 (++20251221033036+2078da43e25a-1~exp1~20251221153213.50), Debian LLD 21.1.8

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/7b88c2d85ff3/disk-d9d32e5b.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/82848c6df034/vmlinux-d9d32e5b.xz
kernel image: https://storage.googleapis.com/syzbot-assets/7a552f182468/bzImage-d9d32e5b.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+4c8d1f29732a21567e4e@syzkaller.appspotmail.com

BUG at fs/jfs/jfs_logmgr.c:1587 assert(list_empty(&log->cqueue))
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_logmgr.c:1587!
Oops: invalid opcode: 0000 [#1] SMP KASAN PTI
CPU: 0 UID: 0 PID: 6732 Comm: syz.0.127 Not tainted syzkaller #0 PREEMPT_{RT,(full)} 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 02/12/2026
RIP: 0010:jfs_flush_journal+0xecd/0xef0 fs/jfs/jfs_logmgr.c:1587
Code: e9 ee f5 ff ff e8 13 cd 70 fe 48 c7 c7 40 af 8a 8b 48 c7 c6 40 aa 8a 8b ba 33 06 00 00 48 c7 c1 80 af 8a 8b e8 f4 db d3 fd 90 <0f> 0b e8 ec cc 70 fe bf 02 00 00 00 e8 52 1f 40 fe e9 10 f8 ff ff
RSP: 0018:ffffc9000f497b20 EFLAGS: 00010246
RAX: 0000000000000040 RBX: dffffc0000000000 RCX: 1239314d71958c00
RDX: ffffc9000617b000 RSI: 0000000000004dda RDI: 0000000000004ddb
RBP: ffffc9000f497c58 R08: 0000000000000000 R09: 0000000000000000
R10: dffffc0000000000 R11: fffff52001e92f15 R12: 00000000000000c7
R13: ffff888036268a18 R14: ffff888036268800 R15: ffff888036268ad8
FS:  00007f31648ae6c0(0000) GS:ffff888126343000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fbaac7c0000 CR3: 0000000036070000 CR4: 00000000003526f0
Call Trace:
 <TASK>
 jfs_umount_rw+0x75/0x130 fs/jfs/jfs_umount.c:134
 jfs_reconfigure+0x6f6/0xa00 fs/jfs/super.c:421
 reconfigure_super+0x227/0x8a0 fs/super.c:1080
 do_remount fs/namespace.c:3391 [inline]
 path_mount+0xdc5/0x10e0 fs/namespace.c:4151
 do_mount fs/namespace.c:4172 [inline]
 __do_sys_mount fs/namespace.c:4361 [inline]
 __se_sys_mount+0x31d/0x420 fs/namespace.c:4338
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0x14d/0xf80 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f316665c629
Code: ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 e8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f31648ae028 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007f31668d5fa0 RCX: 00007f316665c629
RDX: 0000000000000000 RSI: 0000200000000100 RDI: 0000000000000000
RBP: 00007f31666f2b39 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000021 R11: 0000000000000246 R12: 0000000000000000
R13: 00007f31668d6038 R14: 00007f31668d5fa0 R15: 00007ffd55132e68
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:jfs_flush_journal+0xecd/0xef0 fs/jfs/jfs_logmgr.c:1587
Code: e9 ee f5 ff ff e8 13 cd 70 fe 48 c7 c7 40 af 8a 8b 48 c7 c6 40 aa 8a 8b ba 33 06 00 00 48 c7 c1 80 af 8a 8b e8 f4 db d3 fd 90 <0f> 0b e8 ec cc 70 fe bf 02 00 00 00 e8 52 1f 40 fe e9 10 f8 ff ff
RSP: 0018:ffffc9000f497b20 EFLAGS: 00010246
RAX: 0000000000000040 RBX: dffffc0000000000 RCX: 1239314d71958c00
RDX: ffffc9000617b000 RSI: 0000000000004dda RDI: 0000000000004ddb
RBP: ffffc9000f497c58 R08: 0000000000000000 R09: 0000000000000000
R10: dffffc0000000000 R11: fffff52001e92f15 R12: 00000000000000c7
R13: ffff888036268a18 R14: ffff888036268800 R15: ffff888036268ad8
FS:  00007f31648ae6c0(0000) GS:ffff888126343000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fbaac7c0000 CR3: 0000000036070000 CR4: 00000000003526f0


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

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
