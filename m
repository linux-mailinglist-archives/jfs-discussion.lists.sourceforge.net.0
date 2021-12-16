Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B13478E60
	for <lists+jfs-discussion@lfdr.de>; Fri, 17 Dec 2021 15:47:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1myEW0-0003AX-Re; Fri, 17 Dec 2021 14:47:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <3lTG7YQkbAPgx34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1mxpuu-0007D4-Hj
 for jfs-discussion@lists.sourceforge.net; Thu, 16 Dec 2021 12:31:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nb8+2lBSILFE6UU/ftaAQ2l3qcGXhi1ECfZtZX/zKu4=; b=OYnhmHpyxPfjcgqrBkPjHy0FPT
 pgL5hNJ7Tf6JWf5nQVY+ZVBgivEydxz1h+x0XQ6sDHBLF9/XzvgVEIIJoTW3tbJ3ON+sQCPqxeE0R
 Fo4OlgfYsl2+jgRqEmkY1skLWI8RAFJODlg33D7QFhqNs6ZHKlEJQ//wc1pZT0DZV2CY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nb8+2lBSILFE6UU/ftaAQ2l3qcGXhi1ECfZtZX/zKu4=; b=U
 sWkd8Hxq8gWHTIeRtdIqKun4qp2FbcSkT+EUF5fwAss+6qnULARUEFNAMJKuZF9G5ZPoKkUyEdDSL
 VkRHjo2qIkv6zsdMOs19Rxi5Tk07Rzbts2gV5Eh8PfIyluGlApVfAVlMqZ4g+A/QXCRta8dZ5jK0N
 JhA81MSTOV4OTvKU=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mxpus-00HZ6h-Ho
 for jfs-discussion@lists.sourceforge.net; Thu, 16 Dec 2021 12:31:24 +0000
Received: by mail-io1-f72.google.com with SMTP id
 k125-20020a6bba83000000b005e7a312f86dso23181809iof.9
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 16 Dec 2021 04:31:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=nb8+2lBSILFE6UU/ftaAQ2l3qcGXhi1ECfZtZX/zKu4=;
 b=PHBFOgebn8jjduZTtYJZoxcbxvxWqAfqzqdnvym5uue9E3k/g7zC1msxbIZNasmLD1
 Xj8p9ZR8JbAn4AtDJ5Oe8TYcPqNmM3q9B5JHuRT5kZfuyi9ZgnkhDCnGA8hvDXy5iH5b
 A9aJ7PofE0Ol6lmEBkPoRWi6p95kbDnlsqJVXDNx1R8qgVDnl+owlUCstIN2gtGVMrtT
 /Cu8r1Q2/nsgKg0erzDIOc4jnQjYaNacEennGsMeWE/O2E+TxeWXX1frENfITGK8i8YZ
 1GgMp9dK6EFvWrJNCZ7Ic4tZCc1Or6ZdDjvoMsIouO2SR/EkvZoLR6OQtIgaL6M52YP9
 gPzw==
X-Gm-Message-State: AOAM532OV7VYiHvrV7LFRUUGCOspPMrwr18tp/yPeNZHIAcA9FB87glt
 VlAcYQKMegtYMUTMF5yyzFrTMgY811SvuReHpKMebgv6luSw
X-Google-Smtp-Source: ABdhPJylspzn8wUIltPJlmP3hxLPJuB9f2MJeQOfXd+Zqh1tkv5D6R9j3MDhzMYZ6FlSxF/UskxRCTTlFIYTEbQN2r1ALhWGMNWD
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:17c8:: with SMTP id
 z8mr9303792ilu.271.1639657877023; 
 Thu, 16 Dec 2021 04:31:17 -0800 (PST)
Date: Thu, 16 Dec 2021 04:31:17 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000050314505d3429981@google.com>
From: syzbot <syzbot+52ddb6c83a04ca55f975@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: a763d5a5abd6
 Merge tag 'scsi-fixes' of git://git.kernel.or.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=14556c83b00000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
X-Headers-End: 1mxpus-00HZ6h-Ho
X-Mailman-Approved-At: Fri, 17 Dec 2021 14:47:19 +0000
Subject: [Jfs-discussion] [syzbot] kernel BUG in lbmIODone
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

HEAD commit:    a763d5a5abd6 Merge tag 'scsi-fixes' of git://git.kernel.or..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=14556c83b00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=5247c9e141823545
dashboard link: https://syzkaller.appspot.com/bug?extid=52ddb6c83a04ca55f975
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+52ddb6c83a04ca55f975@syzkaller.appspotmail.com

BUG at fs/jfs/jfs_logmgr.c:2313 assert(bp->l_flag & lbmRELEASE)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_logmgr.c:2313!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
CPU: 0 PID: 13 Comm: ksoftirqd/0 Not tainted 5.16.0-rc4-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:lbmIODone.cold+0xc9/0x116 fs/jfs/jfs_logmgr.c:2313
Code: 68 c3 b3 f8 eb d3 e8 31 89 6d f8 48 c7 c1 e0 8a e6 89 ba 09 09 00 00 48 c7 c6 20 89 e6 89 48 c7 c7 60 89 e6 89 e8 ec 12 f8 ff <0f> 0b e8 0b 89 6d f8 48 c7 c1 20 8b e6 89 ba 0a 09 00 00 48 c7 c6
RSP: 0018:ffffc90000f3fc88 EFLAGS: 00010082
RAX: 000000000000003f RBX: ffff8880208bf100 RCX: 0000000000000000
RDX: ffff888011c86040 RSI: ffffffff815e52a8 RDI: fffff520001e7f83
RBP: 0000000000000020 R08: 000000000000003f R09: 0000000000000000
R10: ffffffff815df04e R11: 0000000000000000 R12: 0000000000000246
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f3fa25ed000 CR3: 00000000412c7000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 bio_endio+0x5ec/0x770 block/bio.c:1489
 req_bio_endio block/blk-mq.c:674 [inline]
 blk_update_request+0x46a/0x1400 block/blk-mq.c:742
 blk_mq_end_request+0x4b/0x80 block/blk-mq.c:821
 lo_complete_rq+0x1c2/0x280 drivers/block/loop.c:369
 blk_complete_reqs+0xad/0xe0 block/blk-mq.c:892
 __do_softirq+0x29b/0x9c2 kernel/softirq.c:558
 run_ksoftirqd kernel/softirq.c:921 [inline]
 run_ksoftirqd+0x2d/0x60 kernel/softirq.c:913
 smpboot_thread_fn+0x645/0x9c0 kernel/smpboot.c:164
 kthread+0x405/0x4f0 kernel/kthread.c:327
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:295
 </TASK>
Modules linked in:
---[ end trace 7200a80d946f066f ]---
RIP: 0010:lbmIODone.cold+0xc9/0x116 fs/jfs/jfs_logmgr.c:2313
Code: 68 c3 b3 f8 eb d3 e8 31 89 6d f8 48 c7 c1 e0 8a e6 89 ba 09 09 00 00 48 c7 c6 20 89 e6 89 48 c7 c7 60 89 e6 89 e8 ec 12 f8 ff <0f> 0b e8 0b 89 6d f8 48 c7 c1 20 8b e6 89 ba 0a 09 00 00 48 c7 c6
RSP: 0018:ffffc90000f3fc88 EFLAGS: 00010082
RAX: 000000000000003f RBX: ffff8880208bf100 RCX: 0000000000000000
RDX: ffff888011c86040 RSI: ffffffff815e52a8 RDI: fffff520001e7f83
RBP: 0000000000000020 R08: 000000000000003f R09: 0000000000000000
R10: ffffffff815df04e R11: 0000000000000000 R12: 0000000000000246
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f3fa25ed000 CR3: 00000000412c7000 CR4: 00000000003506f0
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
