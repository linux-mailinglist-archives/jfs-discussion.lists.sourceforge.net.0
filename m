Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4903665F4D4
	for <lists+jfs-discussion@lfdr.de>; Thu,  5 Jan 2023 20:52:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pDWHZ-0003ni-Ln;
	Thu, 05 Jan 2023 19:52:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3OCG3YwkbAHsrxyjZkkdqZoohc.fnnfkdtrdqbnmsdms.bnl@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pDVfk-0003cR-MP for jfs-discussion@lists.sourceforge.net;
 Thu, 05 Jan 2023 19:13:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=piCnIGXhXOnYV1hmjsRPMyKFWfqmILLLm5+CjusFvYg=; b=RhUgCd5E/OhQlFYhJdBtS/wFko
 fdwSPLJmudwzj9eBT0NPaB8w+TjGbxKJHLgdxbNmlTeyv9afJwphW5yu6If7sMWwPYmELjjFOzkAc
 5vMSByE7VGz0GXg/1JdnlrKUlIQkDRZx86cTX9ZZU+T1+jzwuDuaPsBiHUVjmhglM10c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=piCnIGXhXOnYV1hmjsRPMyKFWfqmILLLm5+CjusFvYg=; b=L
 stMB3Ovap0XT/SY4zIfU2lY8yuH9ISdkPMwD3sFMc49ch+00uatQOcE+TKumHN075ojwP0EpwG7LM
 Ls0TaqOS8bJzgsuZFPDw0thaALFOCb+cY5aYRHjPKxcEKv4zfpsZavbF8c5wUMAgkSCm6soBIo7Bd
 H7lrMGfZGlOxtX4E=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pDVfh-006Yav-OG for jfs-discussion@lists.sourceforge.net;
 Thu, 05 Jan 2023 19:13:03 +0000
Received: by mail-io1-f69.google.com with SMTP id
 m5-20020a6b7f45000000b006fc1dded1b9so4144738ioq.18
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 05 Jan 2023 11:13:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=piCnIGXhXOnYV1hmjsRPMyKFWfqmILLLm5+CjusFvYg=;
 b=4vLh9sooDjkklsrDNgYyigk1QVjAZxvrvjQDeIG4HfofZG/C/iNMGGPimBdtBPLd8p
 RIRc11iFXu3KNtmKF/ogR+3eJqtI1R0fxzoQeZvRDNSGUh+azJH305duatowiYXgn166
 HW/jiIuYWKYq8EXfupUOf2wX3Xcg+4TlQstlu3RTdsWKGlDnfgnIm6Da2tX7TQe5hT+h
 lzMcYI51fF+w5kC37+PZTQUzdotQqwbAHiVUbYwRojFqW7Anx9kupfCR9xJgQlFVYYMQ
 ejtTs9Ixt/mpDXjjT6s6o+6z2qKuLKQ3KTPW/Nkv7bVhFAMRaWzFrJj2O0Na/HtXLXIT
 8bIg==
X-Gm-Message-State: AFqh2kp3klaJpPAhBZ8ucLRnWsG9GljEj7AkfkjHswDfh55JUpjhunZ/
 Vt5F8cv+xk55x5xBb26ELDr5MiXr/2NQdB5zw8W2i6YdqUkj
X-Google-Smtp-Source: AMrXdXtYjImq2UDlySiZ+1mq7rYAR8WXEtlmn2w932wLCzvukrwRtb+QpcE3YxGOG1UJBFvedvoSlEae34BEBwbWl8hjCyZSlKk8
MIME-Version: 1.0
X-Received: by 2002:a02:b608:0:b0:39e:536f:e5db with SMTP id
 h8-20020a02b608000000b0039e536fe5dbmr192883jam.50.1672945976178; Thu, 05 Jan
 2023 11:12:56 -0800 (PST)
Date: Thu, 05 Jan 2023 11:12:56 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000a3818b05f18916e0@google.com>
From: syzbot <syzbot+3f6ef04b7cf85153b528@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 reiserfs-devel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 247f34f7b803
 Linux 6.1-rc2 git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output:
 https://syzkaller.appspot.com/x/log.txt?x=15de909a480000
 ke [...] Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1pDVfh-006Yav-OG
X-Mailman-Approved-At: Thu, 05 Jan 2023 19:52:07 +0000
Subject: [Jfs-discussion] [syzbot] [reiserfs?] [jfs?] BUG: unable to handle
 kernel paging request in reiserfs_readdir_inode
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

HEAD commit:    247f34f7b803 Linux 6.1-rc2
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=15de909a480000
kernel config:  https://syzkaller.appspot.com/x/.config?x=fa9bed8d6a8992a0
dashboard link: https://syzkaller.appspot.com/bug?extid=3f6ef04b7cf85153b528
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=100896ec480000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/05f9a7fca332/disk-247f34f7.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/ec50c3ad7d48/vmlinux-247f34f7.xz
kernel image: https://storage.googleapis.com/syzbot-assets/1446f94b11ed/Image-247f34f7.gz.xz
mounted in repro #1: https://storage.googleapis.com/syzbot-assets/b331beed692c/mount_0.gz
mounted in repro #2: https://storage.googleapis.com/syzbot-assets/980b2ce32188/mount_1.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+3f6ef04b7cf85153b528@syzkaller.appspotmail.com

REISERFS (device loop0): Using rupasov hash to sort names
REISERFS warning (device loop0): jdm-20006 create_privroot: xattrs/ACLs enabled and couldn't find/create .reiserfs_priv. Failing mount.
loop0: detected capacity change from 0 to 32768
Unable to handle kernel paging request at virtual address ffff00001a06e183
Mem abort info:
  ESR = 0x0000000096000021
  EC = 0x25: DABT (current EL), IL = 32 bits
  SET = 0, FnV = 0
  EA = 0, S1PTW = 0
  FSC = 0x21: alignment fault
Data abort info:
  ISV = 0, ISS = 0x00000021
  CM = 0, WnR = 0
swapper pgtable: 4k pages, 48-bit VAs, pgdp=00000001c54db000
[ffff00001a06e183] pgd=180000023fff8003, p4d=180000023fff8003, pud=180000023fff7003, pmd=180000023ff26003, pte=006800005a06e707
Internal error: Oops: 0000000096000021 [#1] PREEMPT SMP
Modules linked in:
CPU: 0 PID: 3121 Comm: syz-executor.0 Not tainted 6.1.0-rc2-syzkaller-154433-g247f34f7b803 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : __lse__cmpxchg_case_mb_64 arch/arm64/include/asm/atomic_lse.h:287 [inline]
pc : __cmpxchg_case_mb_64 arch/arm64/include/asm/cmpxchg.h:130 [inline]
pc : __cmpxchg_mb arch/arm64/include/asm/cmpxchg.h:175 [inline]
pc : osq_lock+0x110/0x1f8 kernel/locking/osq_lock.c:162
lr : osq_lock+0x38/0x1f8 kernel/locking/osq_lock.c:94
sp : ffff80001305b980
x29: ffff80001305b980 x28: ffff80000eec9000 x27: ffff80000cbb6d47
x26: 0000000000000000 x25: ffff800008774160 x24: ffff0000cbd3ce90
x23: ffff80000879e1b8 x22: ffff80000d2e2c40 x21: ffff00001a06e183
x20: ffff0001fefd0c40 x19: ffff0000cbd3ce70 x18: 0000000000000000
x17: 0000000000000000 x16: 0000000000000000 x15: 0000000000000000
x14: 0000000000000000 x13: 0000000000000000 x12: 0000000000000000
x11: 0000000000000000 x10: ffff0001fefd0c50 x9 : 0000000000000002
x8 : ffff0001fefd0c40 x7 : 0000000000000000 x6 : ffff80000879e1b8
x5 : 0000000000000000 x4 : 0000000000000001 x3 : 0000000000000000
x2 : 0000000000000000 x1 : ffff0001fefd0c40 x0 : ffff00001a06e183
Call trace:
 __lse__cmpxchg_case_mb_64 arch/arm64/include/asm/atomic_lse.h:287 [inline]
 __cmpxchg_case_mb_64 arch/arm64/include/asm/cmpxchg.h:130 [inline]
 __cmpxchg_mb arch/arm64/include/asm/cmpxchg.h:175 [inline]
 osq_lock+0x110/0x1f8 kernel/locking/osq_lock.c:162
 mutex_optimistic_spin+0x1dc/0x254 kernel/locking/mutex.c:460
 __mutex_lock_common+0x1b4/0xca8 kernel/locking/mutex.c:607
 __mutex_lock kernel/locking/mutex.c:747 [inline]
 mutex_lock_nested+0x38/0x44 kernel/locking/mutex.c:799
 reiserfs_write_lock+0x3c/0x64 fs/reiserfs/lock.c:27
 reiserfs_readdir_inode+0x9c/0x684 fs/reiserfs/dir.c:79
 reiserfs_readdir+0x28/0x38 fs/reiserfs/dir.c:274
 iterate_dir+0x114/0x28c
 __do_sys_getdents64 fs/readdir.c:369 [inline]
 __se_sys_getdents64 fs/readdir.c:354 [inline]
 __arm64_sys_getdents64+0x80/0x204 fs/readdir.c:354
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall arch/arm64/kernel/syscall.c:52 [inline]
 el0_svc_common+0x138/0x220 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x48/0x164 arch/arm64/kernel/syscall.c:206
 el0_svc+0x58/0x150 arch/arm64/kernel/entry-common.c:636
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:654
 el0t_64_sync+0x18c/0x190 arch/arm64/kernel/entry.S:581
Code: aa1503e0 aa1403e1 aa1f03e2 aa0103e8 (c8e8fea2) 
---[ end trace 0000000000000000 ]---
----------------
Code disassembly (best guess):
   0:	aa1503e0 	mov	x0, x21
   4:	aa1403e1 	mov	x1, x20
   8:	aa1f03e2 	mov	x2, xzr
   c:	aa0103e8 	mov	x8, x1
* 10:	c8e8fea2 	casal	x8, x2, [x21] <-- trapping instruction


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
