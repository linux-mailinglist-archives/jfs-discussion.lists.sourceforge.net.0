Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4222868F230
	for <lists+jfs-discussion@lfdr.de>; Wed,  8 Feb 2023 16:39:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pPmXa-0005d8-Rd;
	Wed, 08 Feb 2023 15:39:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3BujYYwkbAF8PVWH7IIBO7MMFA.DLLDIBRPBO9LKQBKQ.9LJ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pMnWu-000855-GP for jfs-discussion@lists.sourceforge.net;
 Tue, 31 Jan 2023 10:06:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y+4BMTrID5GcVOa6o1z549r2tcoDXP5QejHz+tWZx88=; b=YFm41+6XzUkSGhnToEmcIWOL3p
 xnTl/ZxmffoDUQaBldpDd39wLbk7DbGZE3azJkrCy5t4PvTjxbfnshPizG/HbQ+RUCLwC7TwilIjK
 Msqt1M0TC/WibKh0EDr8Q5kBeDlRVDRgsuMhItkV26ueN1WhlFaMm1EiVfHMgzNzsVNI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=y+4BMTrID5GcVOa6o1z549r2tcoDXP5QejHz+tWZx88=; b=m
 PBtJ6+NzpAlQNh8YXjk/CZ3+VlUswEkXIokF5xXj8lKmJMZidT5o5Gs8FjG1rbj1sYddcRYCPifRA
 igyHjzbn85XpTdDSA/iZeaVKDubYIToulpJEw8Ep2gl+YYl0pxLaduqN3JcfUYOhAnmKxx/DKHz4Q
 3VxAsPlS0i13QJqg=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pMnWd-0002K6-69 for jfs-discussion@lists.sourceforge.net;
 Tue, 31 Jan 2023 10:06:08 +0000
Received: by mail-io1-f70.google.com with SMTP id
 e16-20020a6b5010000000b00719041c51ebso4050351iob.12
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 31 Jan 2023 02:06:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=y+4BMTrID5GcVOa6o1z549r2tcoDXP5QejHz+tWZx88=;
 b=TL0+0Sg0w4I1f34S9A4X/WN4vsT8KlCzntsewovtVH0OZUHCFZ863dnFP8HUdHr2o+
 eNhGSDl+EAhOD2EWS5VmMH4AczrpzudsDxqu0g5yfyq1zJiQ5K5Gr6aaaF/bLnxAEIkx
 Uz50kvfHvRnWvFEUQVKZ6/TlTRx/BC+Pf8JEJvVmOiDVZ5ivBfaEcBFkOaOdHfL46HCb
 1PGv6KTS+Hw17kYZ+BfpXcHr2dXSfXjZ6QH/4nYxMPWfF1Dpu53rTRil2mOLCiwqObM9
 yNVgF6xzXcibeYobMNeJ8GrjVeDMOJ17AJ0tsBe7RMDhdke0ZWPl81fc3bBy29tH8NHA
 Z1DQ==
X-Gm-Message-State: AFqh2kp/X0E5Tfbbg5aFZgfd7LmvMSAvJR4Y9ruSNyT5kmiGSb2UuY+Y
 ykbvnH36rNWIzQbI2uLp9cWHCcNMYYN3EfUD8XtBRFi1vFcy
X-Google-Smtp-Source: AMrXdXvFluzhK2vyMm+UWJOG0y8yvyJwKxz9BROjgeMtjj6jwcDXR3vF7oz2p1MUBVKBL5zgzdKSb8nC4PFr0BMfcZLSCZZ5wY2k
MIME-Version: 1.0
X-Received: by 2002:a02:caac:0:b0:3a3:1d2f:1a23 with SMTP id
 e12-20020a02caac000000b003a31d2f1a23mr7385081jap.85.1675159558366; Tue, 31
 Jan 2023 02:05:58 -0800 (PST)
Date: Tue, 31 Jan 2023 02:05:58 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000006b2ca005f38c7aeb@google.com>
From: syzbot <syzbot+707bba7f823c7b02fa43@syzkaller.appspotmail.com>
To: almaz.alexandrovich@paragon-software.com, brauner@kernel.org, 
 dchinner@redhat.com, hirofumi@mail.parknet.co.jp, jack@suse.com, 
 jfs-discussion@lists.sourceforge.net, linkinjeon@kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 ntfs3@lists.linux.dev, shaggy@kernel.org, sj1557.seo@samsung.com, 
 syzkaller-bugs@googlegroups.com, willy@infradead.org
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: e2f86c02fdc9
 Add linux-next specific files for 20230127 git tree: linux-next console
 output:
 https://syzkaller.appspot.com/x/log.txt?x=156b2101480000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
X-Headers-End: 1pMnWd-0002K6-69
X-Mailman-Approved-At: Wed, 08 Feb 2023 15:39:20 +0000
Subject: [Jfs-discussion] [syzbot] [hfsplus?] [udf?] [fat?] [jfs?] [vfs?]
 [hfs?] [exfat?] [ntfs3?] WARNING in __mpage_writepage
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

HEAD commit:    e2f86c02fdc9 Add linux-next specific files for 20230127
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=156b2101480000
kernel config:  https://syzkaller.appspot.com/x/.config?x=920c61956db733da
dashboard link: https://syzkaller.appspot.com/bug?extid=707bba7f823c7b02fa43
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=118429cd480000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12ccb1c1480000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/ff04f1611fad/disk-e2f86c02.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/67928a8622d3/vmlinux-e2f86c02.xz
kernel image: https://storage.googleapis.com/syzbot-assets/b444a3d78556/bzImage-e2f86c02.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/99c5e7532847/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+707bba7f823c7b02fa43@syzkaller.appspotmail.com

------------[ cut here ]------------
WARNING: CPU: 1 PID: 5085 at fs/mpage.c:570 __mpage_writepage+0x138b/0x16f0 fs/mpage.c:570
Modules linked in:
CPU: 1 PID: 5085 Comm: syz-executor403 Not tainted 6.2.0-rc5-next-20230127-syzkaller-08766-ge2f86c02fdc9 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/12/2023
RIP: 0010:__mpage_writepage+0x138b/0x16f0 fs/mpage.c:570
Code: 00 00 48 89 ef e8 15 24 df ff 48 8b 44 24 38 f0 80 88 c0 01 00 00 02 48 c7 44 24 10 00 00 00 00 e9 3c f0 ff ff e8 c5 25 90 ff <0f> 0b 48 8b 44 24 08 48 83 c0 10 48 89 44 24 20 e9 78 ef ff ff e8
RSP: 0018:ffffc90003bff4e8 EFLAGS: 00010293
RAX: 0000000000000000 RBX: fffffffffffe2000 RCX: 0000000000000000
RDX: ffff888021b11d40 RSI: ffffffff81f48f5b RDI: 0000000000000006
RBP: 000000000001e000 R08: 0000000000000006 R09: 0000000000000000
R10: 000000000001e000 R11: 0000000000000000 R12: 0000000000000004
R13: ffff88801b930000 R14: 0000000000000000 R15: 0000000000000000
FS:  00007f5bbe1fd700(0000) GS:ffff8880b9900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007ffee627fdc0 CR3: 000000001c713000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 write_cache_pages+0x4cc/0xe70 mm/page-writeback.c:2473
 mpage_writepages+0xc6/0x170 fs/mpage.c:652
 do_writepages+0x1a8/0x640 mm/page-writeback.c:2551
 filemap_fdatawrite_wbc mm/filemap.c:388 [inline]
 filemap_fdatawrite_wbc+0x147/0x1b0 mm/filemap.c:378
 __filemap_fdatawrite_range+0xb8/0xf0 mm/filemap.c:421
 file_write_and_wait_range+0xce/0x140 mm/filemap.c:779
 hfsplus_file_fsync+0xc3/0x5d0 fs/hfsplus/inode.c:313
 vfs_fsync_range+0x13e/0x230 fs/sync.c:188
 generic_write_sync include/linux/fs.h:2452 [inline]
 generic_file_write_iter+0x25a/0x350 mm/filemap.c:3934
 call_write_iter include/linux/fs.h:1851 [inline]
 new_sync_write fs/read_write.c:491 [inline]
 vfs_write+0x9ed/0xe10 fs/read_write.c:584
 ksys_write+0x12b/0x250 fs/read_write.c:637
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f5bbe258be9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 31 18 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f5bbe1fd2f8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
RAX: ffffffffffffffda RBX: 00007f5bbe2d56c0 RCX: 00007f5bbe258be9
RDX: 000000000208e280 RSI: 0000000020001980 RDI: 0000000000000004
RBP: 00007f5bbe2a2640 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f5bbe2a22e0
R13: 0030656c69662f2e R14: 0073756c70736668 R15: 00007f5bbe2d56c8
 </TASK>


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
