Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5733A2BAECC
	for <lists+jfs-discussion@lfdr.de>; Fri, 20 Nov 2020 16:24:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kg8Gh-0006Ru-68; Fri, 20 Nov 2020 15:24:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3id23XwkbACgWcdOEPPIVETTMH.KSSKPIYWIVGSRXIRX.GSQ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1kg88O-0004aI-QN
 for jfs-discussion@lists.sourceforge.net; Fri, 20 Nov 2020 15:15:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tkGBu9ed9HkqCobXkIkI9MEn9IDKeb0kRoM4P7yTfoc=; b=DWNrmpT4exqxKhZPeKEYFH34aN
 c/ueXLoI7k6vvbO691VM760eBG1pzGPsZ+/9vDkFPa77W7rG0+BH7csoXIUJJK7eCPGgO3qdu1FJi
 +Zn6m067bmb3tuYN2Z9IkMuKfZ0d0THWzFtC0vX2oNguT2IUUEsOC+xewWoqsV14VTgA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tkGBu9ed9HkqCobXkIkI9MEn9IDKeb0kRoM4P7yTfoc=; b=K
 YNN+zqX+lGOH25QgfX2tFZVdXxYtkbF4J4EhU9W+IhEGK2iVo/cQVpVnyrVoMohJxIX/k4PxyhxEy
 1SUHfojVXA2msa56XzuY6J/2eQN3/nAcWP5VCZGZHe2UFgUgFRtTPJw+8F3gWchhhv19Fhi3pxwiP
 nBU89l2pnf1U9xGA=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kg88E-003C5l-Uz
 for jfs-discussion@lists.sourceforge.net; Fri, 20 Nov 2020 15:15:36 +0000
Received: by mail-io1-f69.google.com with SMTP id o17so7618095ioo.12
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 20 Nov 2020 07:15:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=tkGBu9ed9HkqCobXkIkI9MEn9IDKeb0kRoM4P7yTfoc=;
 b=SZk00KQa/DDeV4iN1uHjf8fgmViPgAUEvFszvNVu9jOXuKT4kzTCU2DGEMuV4XM0Qn
 dldvHsRCnsMgCHgxVXo88kxy5JNpIExPDxjMjOZdKHxezEibnt7j8ISjcYmDm07zXU4J
 Qg0TpORrzYGeOzwxkvXc7Pk11OV3fiMsbCe2+EVC2AGkJsIkxtg5I/uNgiNJhV3IegwB
 2STpKspPxf4hyutYxxz87O0AeAuDmreE2ttEZGuQ47uUMwEJAq5r9GTdiXb/oKucHZxZ
 /N9nWIj6jVUcrn2ASooXjGI/uHTd8aXZSbwIB0f6vTswRCUOebZmX18TaNEgHnUVTvfX
 vdAg==
X-Gm-Message-State: AOAM530Fi5XtVInq/IU91Pm8G57eqla6eMAvm1CFRo1LoGKYFjV+GhjL
 6kGI75eV4dgbGP91foXEz8CnSpbu5M7PoPQ4sx4sa8na4eLl
X-Google-Smtp-Source: ABdhPJyTkdywlV2rv06IKPHZU2WygAhj5xWz3w9jMY+BBtiEvsyTXlh5nJfabDh9i7hRVaVHbxxuS4SBnPQKBWSApOz+j4VgrCEG
MIME-Version: 1.0
X-Received: by 2002:a5e:df03:: with SMTP id f3mr15662613ioq.182.1605885321379; 
 Fri, 20 Nov 2020 07:15:21 -0800 (PST)
Date: Fri, 20 Nov 2020 07:15:21 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000021890a05b48b5068@google.com>
From: syzbot <syzbot+889fbbf5a2eb77be373f@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlegroups.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.69 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kg88E-003C5l-Uz
X-Mailman-Approved-At: Fri, 20 Nov 2020 15:24:10 +0000
Subject: [Jfs-discussion] kernel BUG at fs/jfs/jfs_logmgr.c:LINE!
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

Hello,

syzbot found the following issue on:

HEAD commit:    111e91a6 Merge tag 's390-5.10-4' of git://git.kernel.org/p..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=104697be500000
kernel config:  https://syzkaller.appspot.com/x/.config?x=1f5252d7c8fd7762
dashboard link: https://syzkaller.appspot.com/bug?extid=889fbbf5a2eb77be373f
compiler:       gcc (GCC) 10.1.0-syz 20200507

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+889fbbf5a2eb77be373f@syzkaller.appspotmail.com

BUG at fs/jfs/jfs_logmgr.c:2312 assert(bp->l_flag & lbmRELEASE)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_logmgr.c:2312!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
CPU: 1 PID: 17 Comm: ksoftirqd/1 Not tainted 5.10.0-rc4-syzkaller #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS rel-1.12.0-59-gc9ba5276e321-prebuilt.qemu.org 04/01/2014
RIP: 0010:lbmIODone.cold+0x24/0x5b fs/jfs/jfs_logmgr.c:2312
Code: f8 e8 cb ff ff ff e8 ac 52 bd f8 48 c7 c1 40 ca 82 89 ba 08 09 00 00 48 c7 c6 c0 c9 82 89 48 c7 c7 00 ca 82 89 e8 7e ea fa ff <0f> 0b e8 86 52 bd f8 48 c7 c1 80 ca 82 89 ba 09 09 00 00 48 c7 c6
RSP: 0018:ffffc900004bfbb8 EFLAGS: 00010082
RAX: 000000000000003f RBX: ffff888012bf1b00 RCX: 0000000000000000
RDX: ffff888010b2c580 RSI: ffffffff8158f3e5 RDI: fffff52000097f69
RBP: 0000000000000020 R08: 000000000000003f R09: ffff88802cb30627
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000246
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff88802cb00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000002d9aad8 CR3: 00000000691cf000 CR4: 0000000000350ee0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 bio_endio+0x3d3/0x7a0 block/bio.c:1450
 req_bio_endio block/blk-core.c:263 [inline]
 blk_update_request+0x68e/0x1490 block/blk-core.c:1467
 blk_mq_end_request+0x4c/0x510 block/blk-mq.c:562
 lo_complete_rq+0x20d/0x2d0 drivers/block/loop.c:501
 blk_done_softirq+0x294/0x3e0 block/blk-mq.c:586
 __do_softirq+0x2a0/0x9f6 kernel/softirq.c:298
 run_ksoftirqd kernel/softirq.c:653 [inline]
 run_ksoftirqd+0x2d/0x50 kernel/softirq.c:645
 smpboot_thread_fn+0x655/0x9e0 kernel/smpboot.c:165
 kthread+0x3af/0x4a0 kernel/kthread.c:292
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:296
Modules linked in:
---[ end trace 6a25c5a071b6977e ]---
RIP: 0010:lbmIODone.cold+0x24/0x5b fs/jfs/jfs_logmgr.c:2312
Code: f8 e8 cb ff ff ff e8 ac 52 bd f8 48 c7 c1 40 ca 82 89 ba 08 09 00 00 48 c7 c6 c0 c9 82 89 48 c7 c7 00 ca 82 89 e8 7e ea fa ff <0f> 0b e8 86 52 bd f8 48 c7 c1 80 ca 82 89 ba 09 09 00 00 48 c7 c6
RSP: 0018:ffffc900004bfbb8 EFLAGS: 00010082
RAX: 000000000000003f RBX: ffff888012bf1b00 RCX: 0000000000000000
RDX: ffff888010b2c580 RSI: ffffffff8158f3e5 RDI: fffff52000097f69
RBP: 0000000000000020 R08: 000000000000003f R09: ffff88802cb30627
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000246
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff88802cb00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000002d9aad8 CR3: 00000000691cf000 CR4: 0000000000350ee0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
