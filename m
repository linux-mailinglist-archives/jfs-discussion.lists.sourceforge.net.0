Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1195460776B
	for <lists+jfs-discussion@lfdr.de>; Fri, 21 Oct 2022 14:58:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1olrbE-000425-02;
	Fri, 21 Oct 2022 12:58:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <30YNSYwkbAEQy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1olqIc-0003Oc-8E for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Oct 2022 11:34:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1ia/35krEiM4+20rku5K9XHZO0EC9eKdsLPC16lui58=; b=kVj6TpOGtYRVi5vP2TawkwJNwA
 Dcri/rTmpqMKo8z3HLEbTM7mFGNKchge1RlsSbT50AmaM0ilWyGgCn0A83Q7PiRFef9nN3lkx7BTQ
 8wTknf4PTs0WBWj3IZLyB4XrDz8pA4k+Kdce0nUWgp69+3eikruO5ozv2S4trn7WYtQU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1ia/35krEiM4+20rku5K9XHZO0EC9eKdsLPC16lui58=; b=J
 z6Hqi+NBI9Wcs+T5+1W6ZZ51C0QthrU+h8R/W/9bTOMaiq5Wo4K/j7vuXLnG9oDoPO4xz/JvHG+d6
 4wKhXOFez7mXLesJqrU2+MV8WQl2aF6XA/K2JEnC1WEQqnBCK/FxYlk4cdrK1v8rQCZLagwEzGJtZ
 iGpR7yG1s279DKfk=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1olqIY-00CHx5-UW for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Oct 2022 11:34:50 +0000
Received: by mail-io1-f69.google.com with SMTP id
 j20-20020a6b3114000000b006a3211a0ff0so2499346ioa.7
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 21 Oct 2022 04:34:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1ia/35krEiM4+20rku5K9XHZO0EC9eKdsLPC16lui58=;
 b=iifMUFXXgRD8379Ry+kHpvUUDRpbrf6DRQQhKchXzByYqkZsbzyJFZeHjHoqg4Qni9
 /+Jdo+CXJCjYZrxp639vrZT9mXmWxOgrxEd2N1t3k15cgAPEJzDpeCn6bRUYVrnEx+lo
 gijZ+++4jwzRn4epI96cLX2OdZPDsFjD4wZ8J01PfM5uhKSRK/oCHNHhiiyz4cE07G7R
 6SGCih1KcFDWF54jkjI4PwNWnl3FyE4N7OFZfi8y9XppFOar9P3YMppqlKuD6NLO/AbZ
 Q0YeUODJgak+7kZnVn8IX4la/z5x7hjiQQ+CRw4irNRqpqK8/450Sdp2WdSpm0zkcfiM
 FouQ==
X-Gm-Message-State: ACrzQf0ZIXj2ngUsZYfcAtMaI3HnOMGFX2XtQtz4Xxsm7VJv4tt0a4Cj
 SdDS3ATakb62BH9VMFX/SjQhRr59gnHZrm/5A1j5IGWgP4bu
X-Google-Smtp-Source: AMsMyM6HoeU0DIIBTQ7IHchf+dHlOFjfwI4tIaaIrRM8CrfuQfFbx2BXJUtcateLEcYagwzZcOTx78wqt0AS5EMQKfq/KFpbf3Jo
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:15c9:b0:2e1:a5b6:7e25 with SMTP id
 q9-20020a056e0215c900b002e1a5b67e25mr13016488ilu.185.1666352081335; Fri, 21
 Oct 2022 04:34:41 -0700 (PDT)
Date: Fri, 21 Oct 2022 04:34:41 -0700
In-Reply-To: <000000000000ca93e205eb893680@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000e0fe3e05eb89d308@google.com>
From: syzbot <syzbot+cf96cd135c5e00252e3b@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 mudongliangabcd@gmail.com, paskripkin@gmail.com, r33s3n6@gmail.com, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 4d48f589d294 Add linux-next specific files for 20221021 git tree:
 linux-next console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=130d1e4a880000
 kernel config: https://syzkaller.apps [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
X-Headers-End: 1olqIY-00CHx5-UW
X-Mailman-Approved-At: Fri, 21 Oct 2022 12:58:05 +0000
Subject: Re: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in
 dbFreeBits
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

syzbot has found a reproducer for the following issue on:

HEAD commit:    4d48f589d294 Add linux-next specific files for 20221021
git tree:       linux-next
console+strace: https://syzkaller.appspot.com/x/log.txt?x=130d1e4a880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=2c4b7d600a5739a6
dashboard link: https://syzkaller.appspot.com/bug?extid=cf96cd135c5e00252e3b
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10dcd48c880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11a881e2880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/0c86bd0b39a0/disk-4d48f589.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/074059d37f1f/vmlinux-4d48f589.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/6ac10f1c36b9/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+cf96cd135c5e00252e3b@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:1681:12
shift exponent -256 is negative
CPU: 1 PID: 3602 Comm: syz-executor318 Not tainted 6.1.0-rc1-next-20221021-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/11/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 ubsan_epilogue+0xb/0x50 lib/ubsan.c:151
 __ubsan_handle_shift_out_of_bounds.cold+0xb1/0x187 lib/ubsan.c:322
 dbFreeBits.cold-0x5/0x72
 dbAllocAny+0xa4/0x1a0 fs/jfs/jfs_dmap.c:1512
 dbAlloc+0x46d/0xa70 fs/jfs/jfs_dmap.c:869
 extBalloc fs/jfs/jfs_extent.c:321 [inline]
 extAlloc+0x4e7/0xeb0 fs/jfs/jfs_extent.c:122
 jfs_get_block+0x661/0xa90 fs/jfs/inode.c:248
 __block_write_begin_int+0x3b9/0x14b0 fs/buffer.c:1991
 __block_write_begin fs/buffer.c:2041 [inline]
 block_write_begin+0xb5/0x440 fs/buffer.c:2102
 jfs_write_begin+0x2d/0xd0 fs/jfs/inode.c:304
 generic_perform_write+0x252/0x570 mm/filemap.c:3771
 __generic_file_write_iter+0x2aa/0x4d0 mm/filemap.c:3899
 generic_file_write_iter+0xdf/0x350 mm/filemap.c:3931
 call_write_iter include/linux/fs.h:2191 [inline]
 do_iter_readv_writev+0x20b/0x3b0 fs/read_write.c:735
 do_iter_write+0x182/0x700 fs/read_write.c:861
 vfs_writev+0x1aa/0x630 fs/read_write.c:934
 do_pwritev+0x1b6/0x270 fs/read_write.c:1031
 __do_sys_pwritev2 fs/read_write.c:1090 [inline]
 __se_sys_pwritev2 fs/read_write.c:1081 [inline]
 __x64_sys_pwritev2+0xeb/0x150 fs/read_write.c:1081
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f93dbe84f69
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffc412c8fb8 EFLAGS: 00000246 ORIG_RAX: 0000000000000148
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f93dbe84f69
RDX: 0000000000000002 RSI: 0000000020003380 RDI: 0000000000000003
RBP: 00007f93dbe44730 R08: 0000000002000000 R09: 0000000000000003
R10: 0000000000000000 R11: 0000000000000246 R12: 00000000f8008000
R13: 0000000000000000 R14: 00083878000000fc R15: 0000000000000000
 </TASK>
================================================================================



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
