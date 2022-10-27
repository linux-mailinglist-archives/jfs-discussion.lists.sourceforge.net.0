Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D609C60F90B
	for <lists+jfs-discussion@lfdr.de>; Thu, 27 Oct 2022 15:30:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oo2xZ-0006Ti-Ro;
	Thu, 27 Oct 2022 13:30:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <okanatov@gmail.com>) id 1onyLc-0001yK-6L
 for jfs-discussion@lists.sourceforge.net;
 Thu, 27 Oct 2022 08:34:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZXGNZocA4azmqyyIuqcnLV/P6wRtrGX7q92sR/o2sVc=; b=QcujQ0LW2MCtKA6CUBDYcx0jtr
 2pFhv8C4A6DLsK+qt0D3SbEG+ULZ8n+obcP2Lmx1BUVrZVxpxfBWn7vtxhUMetZ/j+ZA/7oJmIt/H
 ohnwBYT8AJrv3LYcGqpJtZaF/TjBZQLjY6dgFN/aY1Pt4n6wZ8lL7pqbIH6EKhMQ9nZQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZXGNZocA4azmqyyIuqcnLV/P6wRtrGX7q92sR/o2sVc=; b=X
 6By0KuNCwWgs4LAvZw0TQu0bEiPvyOvZxA4wfW5C+5jbsD/cLbVQKIbGr5mwiYwOGpaWrcYatIRXo
 2gMQV1bnTPs1e0qK2e6LEhQva84p1Nl/MMyeNdfiHDH577FuNN+3pdECqoBYckHYhOiOjjmFXn7MN
 WKJJJJ8JIBT0mKV4=;
Received: from mail-pl1-f171.google.com ([209.85.214.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1onyLZ-0002zG-TW for jfs-discussion@lists.sourceforge.net;
 Thu, 27 Oct 2022 08:34:44 +0000
Received: by mail-pl1-f171.google.com with SMTP id c24so706812pls.9
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 27 Oct 2022 01:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=ZXGNZocA4azmqyyIuqcnLV/P6wRtrGX7q92sR/o2sVc=;
 b=kIqXhZHu6IgFnp6SE9Zl4v5HTd5Q/k44Vt7GjDjhtksdVGK5yYM3uYzuqvpLsXv6wI
 nBdMCU6KgZlZcfTA7gHg0dv3FfeEuNpFSRcvE2k/jEjzvx5w4k5abWehox1nC8kz52ti
 DAeBK+Evg1v2AHJVVNizW82G0r0UZjfoJP4IdBv5o1iu+Zng4CIOpXDCRI749bsOXK2+
 i9pDCgB2/BRBPIJI2TkYjSx/ge0WlohHQpVtkhGz0k0VD6HI3dLtCRDoVSvzYUEE5DC4
 a88PSBngiThsXPTTc7jMX025Q4aEhUrjfY6Fu5jWyyZQxeE/Dtgkyi1cBj7Zy7LMTA1p
 gkcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ZXGNZocA4azmqyyIuqcnLV/P6wRtrGX7q92sR/o2sVc=;
 b=trjxRptBEfxMxo6oIb581a818Iz+nDBFC7BsYGyXTvvjjbet/hcavLoOkgq5Oy3b+Y
 HLfD7kS0yaVGo5aVDcoaRxnrq7oNV8REgiFy9upY2ZcvxTKlgTvGOeWyXGW0opuGuW/H
 /Ng42wyo6aJCshsXwf48/nyXTbHAJp0RZ07Ob9KPIY2UwR6sQAeOmIQAcB0fj2gqQv1j
 yBJnk8AQO/QJA8Ho5/kLcrHsTvUbWfB4IEbCx+mqOjLQtvF8b65WOIqLO/ikqGm0US2D
 G8AouoznZ2U4USaP13diLh3ZTAxZ4CNrbFkcL/nuJrSWqMLOCoLjyKiDcUL13jAJI1cx
 UwEg==
X-Gm-Message-State: ACrzQf3Mv80+iylKzSsxjdAvTpuifIb6znVKf0CSeNxlkUWJ1+dYWK+g
 gXeHhur/qwT836FTQndr2hTrmRrsQZiRrSleS1/VQSLmdr8=
X-Google-Smtp-Source: AMsMyM5NI8mJ6wZ2yxSYVmzJrxGnmeXXJLlNY1PBdkkU3xinSHL8ueF1s3J+NIZD+BSwcP4YcHT0f6L0GX0LbdRby5k=
X-Received: by 2002:a17:903:1d1:b0:17f:6494:f8c3 with SMTP id
 e17-20020a17090301d100b0017f6494f8c3mr47874849plh.157.1666859676120; Thu, 27
 Oct 2022 01:34:36 -0700 (PDT)
MIME-Version: 1.0
From: Oleg Kanatov <okanatov@gmail.com>
Date: Thu, 27 Oct 2022 11:33:09 +0300
Message-ID: <CADsJqfVcymH4SCwOJ=HtWdUMYwPh2-qFKYTWArcVDTgpsYH1WQ@mail.gmail.com>
To: shaggy@kernel.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, Dave, My name is Oleg and I'd like to get some advice
 from you about an issue that I have recently found in Linux kernel JFS code.
 I'm an absolute novice in Linux kernel development and, frankly speaking,
 d [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [okanatov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.171 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.171 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1onyLZ-0002zG-TW
X-Mailman-Approved-At: Thu, 27 Oct 2022 13:30:11 +0000
Subject: [Jfs-discussion] jfs: BUG call trace during jfs_lookup
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
Cc: jfs-discussion@lists.sourceforge.net
Content-Type: multipart/mixed; boundary="===============3933718225513631144=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--===============3933718225513631144==
Content-Type: multipart/alternative; boundary="000000000000e2bbca05ec00026b"

--000000000000e2bbca05ec00026b
Content-Type: text/plain; charset="UTF-8"

Hello, Dave,

My name is Oleg and I'd like to get some advice from you about an issue
that I have recently found in Linux kernel JFS code.
I'm an absolute novice in Linux kernel development and, frankly speaking,
don't know how to make "all the things" right.

I found two issues, actually, and around an hour ago I sent to you a patch
about the first one via git send-email. Hope that you received it. This
(the first one, that I sent you) is quite small - it's just a typo in the
jfs_umount function. That's actually the whole patch:

From cfe6d5a10dfdc554e01f6e52d6baaa7ee066e88c Mon Sep 17 00:00:00 2001
From: Oleg Kanatov <okanatov@astralinux.ru>
Date: Thu, 27 Oct 2022 09:33:50 +0300
Subject: [PATCH] jfs: Fix a typo in function jfs_umount

When closing the block allocation map, an incorrect pointer
was NULL'ed. This commit fixes that.
---
 fs/jfs/jfs_umount.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_umount.c b/fs/jfs/jfs_umount.c
index 3e8b13e6aa01..673e132c1c26 100644
--- a/fs/jfs/jfs_umount.c
+++ b/fs/jfs/jfs_umount.c
@@ -89,7 +89,7 @@ int jfs_umount(struct super_block *sb)
  dbUnmount(ipbmap, 0);

  diFreeSpecial(ipbmap);
- sbi->ipimap = NULL;
+ sbi->ipbmap = NULL;

  /*
  * Make sure all metadata makes it to disk before we mark
-- 
2.30.2

Now about the second issue, that's a bit tricky for me.
Recently I have received the following patch on JFS filesystem that fixes
some issue found in the Linux Verification Center:

From 5fbcb553b500e9c8a18669ad04f73cf19f4ec25c Mon Sep 17 00:00:00 2001
From: Alexander Bolshakov <bolshakov@ispras.ru>
Date: Thu, 28 Jul 2022 14:30:12 +0300
Subject: [PATCH] jfs: Assign pointer to inomap in jfs_inode_info

If mounting file system fails (e.g. in jfs_fill_super()
jfs_mount_rw() returns EINVAL  (*** Log Format Error ! ***)),
jfs_umount is called. The function diUnmount will free inomap.
But after this for special inodes with zero refcount and fileset == 16
jfs_evict_inode will use diFree, where this pointer is dereferenced.

Found by Linux Verification Center (linuxtesting.org) with syzkaller.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Alexander Bolshakov <bolshakov@ispras.ru>
---
 fs/jfs/jfs_imap.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 937ca07b58b1..67c67604b8c8 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -195,6 +195,7 @@ int diUnmount(struct inode *ipimap, int mounterror)
  * free in-memory control structure
  */
  kfree(imap);
+ JFS_IP(ipimap)->i_imap = NULL;

  return (0);
 }
-- 
2.30.2

After I applied this patch, I have started to receive the following BUG
call trace during my OS start up and when my OS uses JFS filesystem in /
(root):

[    2.529707] BUG: kernel NULL pointer dereference, address:
0000000000000820
[    2.529725] #PF: supervisor read access in kernel mode
[    2.529732] #PF: error_code(0x0000) - not-present page
[    2.529740] PGD 0 P4D 0
[    2.529747] Oops: 0000 [#1] SMP PTI
[    2.529754] CPU: 0 PID: 250 Comm: systemd-modules Tainted: G
OE     5.10.142-1-generic #astra6
[    2.529767] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
1.12.0-1 04/01/2014
[    2.529783] RIP: 0010:diRead+0x6a/0x260 [jfs]
[    2.529790] Code: 7f 95 01 00 4d 8b 6e 28 4d 89 ac 24 b0 fd ff ff 49 8d
8d e8 fd ff ff 4d 8b 7d 80 48 89 cf 48 89 4d c0 e8 79 f7 a1 fc 48 89 de
<49> 8b bf 20 08 00 00 48 8d 55 c8 48 c1 ee 0c e8 f2 f4 ff ff 48 8b
[    2.529813] RSP: 0000:ffffa53bc0717a50 EFLAGS: 00010282
[    2.529821] RAX: ffff9729517516c1 RBX: 000000000004c514 RCX:
ffff972952144088
[    2.529830] RDX: ffff9729517516c0 RSI: 000000000004c514 RDI:
ffff972952144088
[    2.529840] RBP: ffffa53bc0717a98 R08: 0000000000000110 R09:
ffff972951aa3220
[    2.529849] R10: 0000000000000000 R11: 0000000032a19643 R12:
ffff97294b0002a0
[    2.529861] R13: ffff9729521442a0 R14: ffff972951c4bf00 R15:
0000000000000000
[    2.529870] FS:  000078bc88e32a00(0000) GS:ffff97297bc00000(0000)
knlGS:0000000000000000
[    2.529881] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    2.529889] CR2: 0000000000000820 CR3: 0000000110458000 CR4:
00000000000006f0
[    2.529900] Call Trace:
[    2.529916]  ? iget_locked+0x1a6/0x1c0
[    2.529925]  jfs_iget+0x41/0x130 [jfs]
[    2.529933]  jfs_lookup+0xe7/0x110 [jfs]
[    2.529941]  ? d_alloc_parallel+0x254/0x4d0
[    2.529949]  __lookup_slow+0x91/0x140
[    2.529957]  walk_component+0x13d/0x1b0
[    2.529964]  link_path_walk.part.44+0x226/0x330
[    2.529973]  ? path_init+0x2f3/0x370
[    2.529980]  path_openat+0xb0/0x1200
[    2.529988]  ? __check_object_size+0x173/0x190
[    2.529996]  do_filp_open+0x93/0x100
[    2.530004]  ? __alloc_fd+0x46/0x150
[    2.530011]  do_sys_openat2+0x22b/0x2e0
[    2.530019]  do_sys_open+0x4d/0x80
[    2.530026]  __x64_sys_openat+0x20/0x30
[    2.530040]  do_syscall_64+0x37/0x90
[    2.530050]  entry_SYSCALL_64_after_hwframe+0x61/0xc6
[    2.530059] RIP: 0033:0x78bc89d3cf4e
[    2.530068] Code: 25 00 00 41 00 3d 00 00 41 00 74 48 48 8d 05 b9 57 0d
00 8b 00 85 c0 75 69 89 f2 b8 01 01 00 00 48 89 fe bf 9c ff ff ff 0f 05
<48> 3d 00 f0 ff ff 0f 87 a6 00 00 00 48 8b 4c 24 28 64 48 33 0c 25
[    2.530096] RSP: 002b:00007ffea40c2640 EFLAGS: 00000246 ORIG_RAX:
0000000000000101
[    2.530408] RAX: ffffffffffffffda RBX: 0000571b44f19b20 RCX:
000078bc89d3cf4e
[    2.530729] RDX: 0000000000080000 RSI: 0000571b44f19b20 RDI:
00000000ffffff9c
[    2.531036] RBP: 00007ffea40c26e0 R08: 0000571b44f19f60 R09:
0000571b44f123f0
[    2.531344] R10: 0000000000000000 R11: 0000000000000246 R12:
0000571b44f19f60
[    2.531649] R13: 0000571b44f19b20 R14: 0000571b44f11de0 R15:
0000000000000000
[    2.531953] Modules linked in: parport ip_tables x_tables autofs4 jfs
qxl drm_ttm_helper ttm drm_kms_helper syscopyarea sysfillrect sysimgblt
fb_sys_fops psmouse e1000 cec rc_core drm i2c_piix4 pata_acpi floppy
parsec(OE) digsig_verif(OE)
[    2.532605] CR2: 0000000000000820
[    2.532941] ---[ end trace b2e2bd2d84769095 ]---
[    2.533210] RIP: 0010:diRead+0x6a/0x260 [jfs]

I started to debug and found that the issue occurs here:

Reading symbols from jfs.ko...done.
(gdb) list *(diRead+0x6a)
0xb46a is in diRead (/home/user/src/linux/fs/jfs/jfs_imap.c:318).
warning: Source file is more recent than executable.
313             iagno = INOTOIAG(ip->i_ino);
314
315             /* read the iag */
316             imap = JFS_IP(ipimap)->i_imap;
317             IREAD_LOCK(ipimap, RDWRLOCK_IMAP);
318             rc = diIAGRead(imap, iagno, &mp);
319             IREAD_UNLOCK(ipimap);
320             if (rc) {
321                     jfs_err("diRead: diIAGRead returned %d", rc);
322                     return (rc);
(gdb)

Looks like that something is wrong with variable imap, because pointer
diRead+0x6a points to address b42a. This instruction moves content of
register r15, but before value i_imap was put there (to the register and to
variable imap). What is more, from the call trace it's seen that r15 is
NULL:

        IREAD_LOCK(ipimap, RDWRLOCK_IMAP);
    b410:       49 8d 8d e8 fd ff ff    lea    -0x218(%r13),%rcx
        imap = JFS_IP(ipimap)->i_imap;
    b417:       4d 8b 7d 80             mov    -0x80(%r13),%r15
        IREAD_LOCK(ipimap, RDWRLOCK_IMAP);
    b41b:       48 89 cf                mov    %rcx,%rdi
    b41e:       48 89 4d c0             mov    %rcx,-0x40(%rbp)
    b422:       e8 00 00 00 00          callq  b427 <diRead+0x67>
        iagno = INOTOIAG(ip->i_ino);
    b427:       48 89 de                mov    %rbx,%rsi
        rc = diIAGRead(imap, iagno, &mp);
    b42a:       49 8b bf 20 08 00 00    mov    0x820(%r15),%rdi
    b431:       48 8d 55 c8             lea    -0x38(%rbp),%rdx
        iagno = INOTOIAG(ip->i_ino);

I added some printk logs and found:

1. during the OS is starting up, lots of jfs_lookup's are printed. The
jfs_lookup function calls jfs_iget(), and jfs_iget() calls diRead (where
the NULL pointer dereference occurs):

Oct 19 17:24:00 astra kernel: OKANATOV: diRead: before possible oops: imap
ffff88b4f3aa0000
Oct 19 17:24:00 astra kernel: OKANATOV: diRead: after possible oops: imap
ffff88b4f3aa0000
Oct 19 17:24:00 astra kernel: OKANATOV: diRead: before possible oops: imap
ffff88b4f3aa0000
Oct 19 17:24:00 astra kernel: OKANATOV: diRead: after possible oops: imap
ffff88b4f3aa0000
Oct 19 17:24:00 astra kernel: OKANATOV: diRead: before possible oops: imap
0000000000000000

2. Then, at some point of startup, remount_fs occurs, that triggers
function jfs_mount_rw() to be called. Jfs_mount_rw() calls diUnmount(),
that makes imap = NULL (with the commit from Alexander Bolshakov that I
sent to you in the beginning of this mail):

[    2.563406] OKANATOV: jfs_mount_rw: before diUnmount, imap =
ffff88b4f3aa0000
[    2.563453] OKANATOV: diUnmount: inode->i_ino = 16, mounterror = 1, imap
= ffff88b4f3aa0000
[    2.563867] OKANATOV: jfs_mount_rw: after diUnmount, imap =
0000000000000000

3. Then kernel NULL pointer dereference happens due to handling further
jfs_lookup() -> jfs_iget() -> diRead():

[    2.564144] OKANATOV: jfs_iget: name = ufw.conf, file name = ufw.conf,
imap = 0000000000000000
[    2.564172] BUG: kernel NULL pointer dereference, address:
0000000000000820
[    2.571039] RIP: 0010:diRead+0x6a/0x260 [jfs]

4. After diUnmount is finished in jfs_mount_rw, the next diMount is called:

[    2.577314] OKANATOV: jfs_mount_rw: after diMount, imap =
ffff88b4c2b6c000

5. And after that all other jfs_lookup's starts to receive/handle new imap:

Oct 19 17:24:00 astra kernel: OKANATOV: diRead: before possible oops: imap
ffff88b4c2b6c000
Oct 19 17:24:00 astra kernel: OKANATOV: diRead: after possible oops: imap
ffff88b4c2b6c000
Oct 19 17:24:00 astra kernel: OKANATOV: diRead: before possible oops: imap
ffff88b4c2b6c000
Oct 19 17:24:00 astra kernel: OKANATOV: diRead: after possible oops: imap
ffff88b4c2b6c000

So, I wonder whether calls diUnmount() and diMount() in jfs_mount_rw()
should be a kind of "atomic". These calls change the imap pointer, but
there is a case at me when between these calls, someone (jfs_lookup() ->
jfs_iget() -> diRead()) reads the pointer.
Even if we remove the Alexander's patch, then the call trace disappears,
but anyway it'll be a strange thing that after the diUnmount() the imap
pointer is freed but someone (jfs_lookup() -> jfs_iget() -> diRead()) is
trying to read/handle memory on it before diMount() started.

My proposal is to make diUnmount() and diMount() be "atomic" operations so
that no other calls attemp to read the imap pointer, until the whole
remount is completed. Here is the patch:

From a6109ffd3585e60974403b311410dd69f517b2ea Mon Sep 17 00:00:00 2001
From: Oleg Kanatov <okanatov@astralinux.ru>
Date: Thu, 27 Oct 2022 11:14:07 +0300
Subject: [PATCH] jfs: makes diUnmount/diMount in jfs_mount_rw atomic

jfs_mount_rw can call diUnmount and then diMount. These calls
change the imap pointer.
In case JFS filesystem is mounted on root (/), between these two
calls there may be calls of function jfs_lookup().
The jfs_lookup() function calls jfs_iget(), which, in its turn,
calls diRead(). The latter references the imap pointer.
That may cause diRead() to refer to a pointer "freed" in
diUnmount().
This commit makes calls diUnmount()/diMount() be atomic so that
nothing will read the imap pointer until the whole remount is
completed.
---
 fs/jfs/jfs_imap.c  | 2 +-
 fs/jfs/jfs_mount.c | 6 ++++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 799d3837e7c2..390cbfce391f 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -310,8 +310,8 @@ int diRead(struct inode *ip)
  iagno = INOTOIAG(ip->i_ino);

  /* read the iag */
- imap = JFS_IP(ipimap)->i_imap;
  IREAD_LOCK(ipimap, RDWRLOCK_IMAP);
+ imap = JFS_IP(ipimap)->i_imap;
  rc = diIAGRead(imap, iagno, &mp);
  IREAD_UNLOCK(ipimap);
  if (rc) {
diff --git a/fs/jfs/jfs_mount.c b/fs/jfs/jfs_mount.c
index 48d1f70f786c..972b9ff18723 100644
--- a/fs/jfs/jfs_mount.c
+++ b/fs/jfs/jfs_mount.c
@@ -234,12 +234,18 @@ int jfs_mount_rw(struct super_block *sb, int remount)

  truncate_inode_pages(sbi->ipimap->i_mapping, 0);
  truncate_inode_pages(sbi->ipbmap->i_mapping, 0);
+
+ IWRITE_LOCK(sbi->ipimap, RDWRLOCK_IMAP);
+
  diUnmount(sbi->ipimap, 1);
  if ((rc = diMount(sbi->ipimap))) {
+ IWRITE_UNLOCK(sbi->ipimap);
  jfs_err("jfs_mount_rw: diMount failed!");
  return rc;
  }

+ IWRITE_UNLOCK(sbi->ipimap);
+
  dbUnmount(sbi->ipbmap, 1);
  if ((rc = dbMount(sbi->ipbmap))) {
  jfs_err("jfs_mount_rw: dbMount failed!");
-- 
2.30.2

Do you think it's a real issue? May I send this patch to you via git
send-email?

Regards,
Oleg.

--000000000000e2bbca05ec00026b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hello, Dave,</div><div><br></div><div>=
My name is Oleg and I&#39;d like to get some advice from you about an issue=
 that I have recently found in Linux kernel JFS code.</div><div>I&#39;m an =
absolute novice in Linux kernel development and, frankly speaking, don&#39;=
t know how to make &quot;all the things&quot; right.</div><div><br></div><d=
iv>I found two issues, actually, and around an hour ago I sent to you a pat=
ch about the first one via git send-email. Hope that you received it. This =
(the first one, that I sent you) is quite small - it&#39;s just a typo in t=
he jfs_umount function. That&#39;s actually the whole patch:</div><div><br>=
</div><div>From cfe6d5a10dfdc554e01f6e52d6baaa7ee066e88c Mon Sep 17 00:00:0=
0 2001<br>From: Oleg Kanatov &lt;<a href=3D"mailto:okanatov@astralinux.ru">=
okanatov@astralinux.ru</a>&gt;<br>Date: Thu, 27 Oct 2022 09:33:50 +0300<br>=
Subject: [PATCH] jfs: Fix a typo in function jfs_umount<br><br>When closing=
 the block allocation map, an incorrect pointer<br>was NULL&#39;ed. This co=
mmit fixes that.<br>---<br>=C2=A0fs/jfs/jfs_umount.c | 2 +-<br>=C2=A01 file=
 changed, 1 insertion(+), 1 deletion(-)<br><br>diff --git a/fs/jfs/jfs_umou=
nt.c b/fs/jfs/jfs_umount.c<br>index 3e8b13e6aa01..673e132c1c26 100644<br>--=
- a/fs/jfs/jfs_umount.c<br>+++ b/fs/jfs/jfs_umount.c<br>@@ -89,7 +89,7 @@ i=
nt jfs_umount(struct super_block *sb)<br>=C2=A0	dbUnmount(ipbmap, 0);<br>=
=C2=A0<br>=C2=A0	diFreeSpecial(ipbmap);<br>-	sbi-&gt;ipimap =3D NULL;<br>+	=
sbi-&gt;ipbmap =3D NULL;<br>=C2=A0<br>=C2=A0	/*<br>=C2=A0	 * Make sure all =
metadata makes it to disk before we mark<br>-- <br>2.30.2<br><br></div><div=
>Now about the second issue, that&#39;s a bit tricky for me.</div><div>Rece=
ntly I have received the following patch on JFS filesystem that fixes some =
issue found in the Linux Verification Center:<br></div><div><br></div><div>=
From 5fbcb553b500e9c8a18669ad04f73cf19f4ec25c Mon Sep 17 00:00:00 2001<br>F=
rom: Alexander Bolshakov &lt;<a href=3D"mailto:bolshakov@ispras.ru">bolshak=
ov@ispras.ru</a>&gt;<br>Date: Thu, 28 Jul 2022 14:30:12 +0300<br>Subject: [=
PATCH] jfs: Assign pointer to inomap in jfs_inode_info<br><br>If mounting f=
ile system fails (e.g. in jfs_fill_super()<br>jfs_mount_rw() returns EINVAL=
 =C2=A0(*** Log Format Error ! ***)),<br>jfs_umount is called. The function=
 diUnmount will free inomap.<br>But after this for special inodes with zero=
 refcount and fileset =3D=3D 16<br>jfs_evict_inode will use diFree, where t=
his pointer is dereferenced.<br><br>Found by Linux Verification Center (<a =
href=3D"http://linuxtesting.org">linuxtesting.org</a>) with syzkaller.<br><=
br>Fixes: 1da177e4c3f4 (&quot;Linux-2.6.12-rc2&quot;)<br>Signed-off-by: Ale=
xander Bolshakov &lt;<a href=3D"mailto:bolshakov@ispras.ru">bolshakov@ispra=
s.ru</a>&gt;<br>---<br>=C2=A0fs/jfs/jfs_imap.c | 1 +<br>=C2=A01 file change=
d, 1 insertion(+)<br><br>diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c=
<br>index 937ca07b58b1..67c67604b8c8 100644<br>--- a/fs/jfs/jfs_imap.c<br>+=
++ b/fs/jfs/jfs_imap.c<br>@@ -195,6 +195,7 @@ int diUnmount(struct inode *i=
pimap, int mounterror)<br>=C2=A0	 * free in-memory control structure<br>=C2=
=A0	 */<br>=C2=A0	kfree(imap);<br>+	JFS_IP(ipimap)-&gt;i_imap =3D NULL;<br>=
=C2=A0<br>=C2=A0	return (0);<br>=C2=A0}<br>-- <br>2.30.2<br><br></div><div>=
After I applied this patch, I have started to receive the following BUG cal=
l trace during my OS start up and when my OS uses JFS filesystem in / (root=
):</div><div><br></div><div>[ =C2=A0 =C2=A02.529707] BUG: kernel NULL point=
er dereference, address: 0000000000000820<br>[ =C2=A0 =C2=A02.529725] #PF: =
supervisor read access in kernel mode<br>[ =C2=A0 =C2=A02.529732] #PF: erro=
r_code(0x0000) - not-present page<br>[ =C2=A0 =C2=A02.529740] PGD 0 P4D 0 <=
br>[ =C2=A0 =C2=A02.529747] Oops: 0000 [#1] SMP PTI<br>[ =C2=A0 =C2=A02.529=
754] CPU: 0 PID: 250 Comm: systemd-modules Tainted: G =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 OE =C2=A0 =C2=A0 5.10.142-1-generic #astra6<br>[ =C2=A0 =C2=
=A02.529767] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.=
12.0-1 04/01/2014<br>[ =C2=A0 =C2=A02.529783] RIP: 0010:diRead+0x6a/0x260 [=
jfs]<br>[ =C2=A0 =C2=A02.529790] Code: 7f 95 01 00 4d 8b 6e 28 4d 89 ac 24 =
b0 fd ff ff 49 8d 8d e8 fd ff ff 4d 8b 7d 80 48 89 cf 48 89 4d c0 e8 79 f7 =
a1 fc 48 89 de &lt;49&gt; 8b bf 20 08 00 00 48 8d 55 c8 48 c1 ee 0c e8 f2 f=
4 ff ff 48 8b<br>[ =C2=A0 =C2=A02.529813] RSP: 0000:ffffa53bc0717a50 EFLAGS=
: 00010282<br>[ =C2=A0 =C2=A02.529821] RAX: ffff9729517516c1 RBX: 000000000=
004c514 RCX: ffff972952144088<br>[ =C2=A0 =C2=A02.529830] RDX: ffff97295175=
16c0 RSI: 000000000004c514 RDI: ffff972952144088<br>[ =C2=A0 =C2=A02.529840=
] RBP: ffffa53bc0717a98 R08: 0000000000000110 R09: ffff972951aa3220<br>[ =
=C2=A0 =C2=A02.529849] R10: 0000000000000000 R11: 0000000032a19643 R12: fff=
f97294b0002a0<br>[ =C2=A0 =C2=A02.529861] R13: ffff9729521442a0 R14: ffff97=
2951c4bf00 R15: 0000000000000000<br>[ =C2=A0 =C2=A02.529870] FS: =C2=A00000=
78bc88e32a00(0000) GS:ffff97297bc00000(0000) knlGS:0000000000000000<br>[ =
=C2=A0 =C2=A02.529881] CS: =C2=A00010 DS: 0000 ES: 0000 CR0: 00000000800500=
33<br>[ =C2=A0 =C2=A02.529889] CR2: 0000000000000820 CR3: 0000000110458000 =
CR4: 00000000000006f0<br>[ =C2=A0 =C2=A02.529900] Call Trace:<br>[ =C2=A0 =
=C2=A02.529916] =C2=A0? iget_locked+0x1a6/0x1c0<br>[ =C2=A0 =C2=A02.529925]=
 =C2=A0jfs_iget+0x41/0x130 [jfs]<br>[ =C2=A0 =C2=A02.529933] =C2=A0jfs_look=
up+0xe7/0x110 [jfs]<br>[ =C2=A0 =C2=A02.529941] =C2=A0? d_alloc_parallel+0x=
254/0x4d0<br>[ =C2=A0 =C2=A02.529949] =C2=A0__lookup_slow+0x91/0x140<br>[ =
=C2=A0 =C2=A02.529957] =C2=A0walk_component+0x13d/0x1b0<br>[ =C2=A0 =C2=A02=
.529964] =C2=A0link_path_walk.part.44+0x226/0x330<br>[ =C2=A0 =C2=A02.52997=
3] =C2=A0? path_init+0x2f3/0x370<br>[ =C2=A0 =C2=A02.529980] =C2=A0path_ope=
nat+0xb0/0x1200<br>[ =C2=A0 =C2=A02.529988] =C2=A0? __check_object_size+0x1=
73/0x190<br>[ =C2=A0 =C2=A02.529996] =C2=A0do_filp_open+0x93/0x100<br>[ =C2=
=A0 =C2=A02.530004] =C2=A0? __alloc_fd+0x46/0x150<br>[ =C2=A0 =C2=A02.53001=
1] =C2=A0do_sys_openat2+0x22b/0x2e0<br>[ =C2=A0 =C2=A02.530019] =C2=A0do_sy=
s_open+0x4d/0x80<br>[ =C2=A0 =C2=A02.530026] =C2=A0__x64_sys_openat+0x20/0x=
30<br>[ =C2=A0 =C2=A02.530040] =C2=A0do_syscall_64+0x37/0x90<br>[ =C2=A0 =
=C2=A02.530050] =C2=A0entry_SYSCALL_64_after_hwframe+0x61/0xc6<br>[ =C2=A0 =
=C2=A02.530059] RIP: 0033:0x78bc89d3cf4e<br>[ =C2=A0 =C2=A02.530068] Code: =
25 00 00 41 00 3d 00 00 41 00 74 48 48 8d 05 b9 57 0d 00 8b 00 85 c0 75 69 =
89 f2 b8 01 01 00 00 48 89 fe bf 9c ff ff ff 0f 05 &lt;48&gt; 3d 00 f0 ff f=
f 0f 87 a6 00 00 00 48 8b 4c 24 28 64 48 33 0c 25<br>[ =C2=A0 =C2=A02.53009=
6] RSP: 002b:00007ffea40c2640 EFLAGS: 00000246 ORIG_RAX: 0000000000000101<b=
r>[ =C2=A0 =C2=A02.530408] RAX: ffffffffffffffda RBX: 0000571b44f19b20 RCX:=
 000078bc89d3cf4e<br>[ =C2=A0 =C2=A02.530729] RDX: 0000000000080000 RSI: 00=
00571b44f19b20 RDI: 00000000ffffff9c<br>[ =C2=A0 =C2=A02.531036] RBP: 00007=
ffea40c26e0 R08: 0000571b44f19f60 R09: 0000571b44f123f0<br>[ =C2=A0 =C2=A02=
.531344] R10: 0000000000000000 R11: 0000000000000246 R12: 0000571b44f19f60<=
br>[ =C2=A0 =C2=A02.531649] R13: 0000571b44f19b20 R14: 0000571b44f11de0 R15=
: 0000000000000000<br>[ =C2=A0 =C2=A02.531953] Modules linked in: parport i=
p_tables x_tables autofs4 jfs qxl drm_ttm_helper ttm drm_kms_helper syscopy=
area sysfillrect sysimgblt fb_sys_fops psmouse e1000 cec rc_core drm i2c_pi=
ix4 pata_acpi floppy parsec(OE) digsig_verif(OE)<br>[ =C2=A0 =C2=A02.532605=
] CR2: 0000000000000820<br>[ =C2=A0 =C2=A02.532941] ---[ end trace b2e2bd2d=
84769095 ]---<br>[ =C2=A0 =C2=A02.533210] RIP: 0010:diRead+0x6a/0x260 [jfs]=
<br></div><div><br></div><div>I started to debug and found that the issue o=
ccurs here:<br></div><div><br></div><div>Reading symbols from jfs.ko...done=
.<br>(gdb) list *(diRead+0x6a)<br>0xb46a is in diRead (/home/user/src/linux=
/fs/jfs/jfs_imap.c:318).<br>warning: Source file is more recent than execut=
able.<br>313 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 iagno =3D INOTOIAG(i=
p-&gt;i_ino);<br>314<br>315 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* re=
ad the iag */<br>316 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 imap =3D JFS=
_IP(ipimap)-&gt;i_imap;<br>317 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 IR=
EAD_LOCK(ipimap, RDWRLOCK_IMAP);<br>318 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 rc =3D diIAGRead(imap, iagno, &amp;mp);<br>319 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 IREAD_UNLOCK(ipimap);<br>320 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 if (rc) {<br>321 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 jfs_err(&quot;diRead: diIAGRead returned %d=
&quot;, rc);<br>322 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 return (rc);<br>(gdb)</div><div><br></div><div>Looks like th=
at something is wrong with variable imap, because pointer diRead+0x6a point=
s to address b42a. This instruction moves content of register r15, but befo=
re value i_imap was put there (to the register and to variable imap). What =
is more, from the call trace it&#39;s seen that r15 is NULL:<br></div><div>=
<br></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 IREAD_LOCK(ipimap, RDWRLOCK_IMAP=
);<br>=C2=A0 =C2=A0 b410: =C2=A0 =C2=A0 =C2=A0 49 8d 8d e8 fd ff ff =C2=A0 =
=C2=A0lea =C2=A0 =C2=A0-0x218(%r13),%rcx<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ima=
p =3D JFS_IP(ipimap)-&gt;i_imap;<br>=C2=A0 =C2=A0 b417: =C2=A0 =C2=A0 =C2=
=A0 4d 8b 7d 80 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mov =C2=A0 =C2=A0=
-0x80(%r13),%r15<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 IREAD_LOCK(ipimap, RDWRLOCK=
_IMAP);<br>=C2=A0 =C2=A0 b41b: =C2=A0 =C2=A0 =C2=A0 48 89 cf =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mov =C2=A0 =C2=A0%rcx,%rdi<br>=C2=
=A0 =C2=A0 b41e: =C2=A0 =C2=A0 =C2=A0 48 89 4d c0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 mov =C2=A0 =C2=A0%rcx,-0x40(%rbp)<br>=C2=A0 =C2=A0 b422: =
=C2=A0 =C2=A0 =C2=A0 e8 00 00 00 00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0callq=
 =C2=A0b427 &lt;diRead+0x67&gt;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 iagno =3D IN=
OTOIAG(ip-&gt;i_ino);<br>=C2=A0 =C2=A0 b427: =C2=A0 =C2=A0 =C2=A0 48 89 de =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mov =C2=A0 =C2=A0%rb=
x,%rsi<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 rc =3D diIAGRead(imap, iagno, &amp;mp=
);<br>=C2=A0 =C2=A0 b42a: =C2=A0 =C2=A0 =C2=A0 49 8b bf 20 08 00 00 =C2=A0 =
=C2=A0mov =C2=A0 =C2=A00x820(%r15),%rdi<br>=C2=A0 =C2=A0 b431: =C2=A0 =C2=
=A0 =C2=A0 48 8d 55 c8 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lea =C2=A0=
 =C2=A0-0x38(%rbp),%rdx<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 iagno =3D INOTOIAG(i=
p-&gt;i_ino);</div><br><div>I added some printk logs and found:</div><div><=
br></div><div>1. during the OS is starting up, lots of jfs_lookup&#39;s are=
 printed. The jfs_lookup function calls jfs_iget(), and jfs_iget() calls di=
Read (where the NULL pointer dereference occurs):</div><div><br></div><div>=
Oct 19 17:24:00 astra kernel: OKANATOV: diRead: before possible oops: imap =
ffff88b4f3aa0000<br>Oct 19 17:24:00 astra kernel: OKANATOV: diRead: after p=
ossible oops: imap ffff88b4f3aa0000<br>Oct 19 17:24:00 astra kernel: OKANAT=
OV: diRead: before possible oops: imap ffff88b4f3aa0000<br>Oct 19 17:24:00 =
astra kernel: OKANATOV: diRead: after possible oops: imap ffff88b4f3aa0000<=
br>Oct 19 17:24:00 astra kernel: OKANATOV: diRead: before possible oops: im=
ap 0000000000000000<br></div><div><br></div><div>2. Then, at some point of =
startup, remount_fs occurs, that triggers function jfs_mount_rw() to be cal=
led. Jfs_mount_rw() calls diUnmount(), that makes imap =3D NULL (with the c=
ommit from Alexander Bolshakov that I sent to you in the beginning of this =
mail):<br></div><div><br></div><div>[ =C2=A0 =C2=A02.563406] OKANATOV: jfs_=
mount_rw: before diUnmount, imap =3D ffff88b4f3aa0000<br>[ =C2=A0 =C2=A02.5=
63453] OKANATOV: diUnmount: inode-&gt;i_ino =3D 16, mounterror =3D 1, imap =
=3D ffff88b4f3aa0000<br>[ =C2=A0 =C2=A02.563867] OKANATOV: jfs_mount_rw: af=
ter diUnmount, imap =3D 0000000000000000</div><div><br></div><div>3. Then k=
ernel NULL pointer dereference happens due to handling further jfs_lookup()=
 -&gt; jfs_iget() -&gt; diRead():<br></div><div><br></div><div>[ =C2=A0 =C2=
=A02.564144] OKANATOV: jfs_iget: name =3D ufw.conf, file name =3D ufw.conf,=
 imap =3D 0000000000000000<br>[ =C2=A0 =C2=A02.564172] BUG: kernel NULL poi=
nter dereference, address: 0000000000000820<br>[ =C2=A0 =C2=A02.571039] RIP=
: 0010:diRead+0x6a/0x260 [jfs]</div><div><br></div><div>4. After diUnmount =
is finished in jfs_mount_rw, the next diMount is called:</div><div><br></di=
v><div>[ =C2=A0 =C2=A02.577314] OKANATOV: jfs_mount_rw: after diMount, imap=
 =3D ffff88b4c2b6c000<br></div><div><br></div><div>5. And after that all ot=
her jfs_lookup&#39;s starts to receive/handle new imap:</div><div><br></div=
><div>Oct 19 17:24:00 astra kernel: OKANATOV: diRead: before possible oops:=
 imap ffff88b4c2b6c000<br>Oct 19 17:24:00 astra kernel: OKANATOV: diRead: a=
fter possible oops: imap ffff88b4c2b6c000</div><div>Oct 19 17:24:00 astra k=
ernel: OKANATOV: diRead: before possible oops: imap ffff88b4c2b6c000</div><=
div>Oct 19 17:24:00 astra kernel: OKANATOV: diRead: after possible oops: im=
ap ffff88b4c2b6c000<br></div><div><br></div><div>So, I wonder whether calls=
 diUnmount() and diMount() in jfs_mount_rw() should be a kind of &quot;atom=
ic&quot;. These calls change the imap pointer, but there is a case at me wh=
en between these calls, someone (jfs_lookup() -&gt; jfs_iget() -&gt; diRead=
()) reads the pointer.</div><div>Even if we remove the Alexander&#39;s patc=
h, then the call trace disappears, but anyway it&#39;ll be a strange thing =
that after the diUnmount() the imap pointer is freed but someone (jfs_looku=
p() -&gt; jfs_iget() -&gt; diRead()) is trying to read/handle memory on it =
before diMount() started.</div><div><br></div><div>My proposal is to make d=
iUnmount() and diMount() be &quot;atomic&quot; operations so that no other =
calls attemp to read the imap pointer, until the whole remount is completed=
. Here is the patch:<br></div><div><br></div><div>From a6109ffd3585e6097440=
3b311410dd69f517b2ea Mon Sep 17 00:00:00 2001<br>From: Oleg Kanatov &lt;<a =
href=3D"mailto:okanatov@astralinux.ru">okanatov@astralinux.ru</a>&gt;<br>Da=
te: Thu, 27 Oct 2022 11:14:07 +0300<br>Subject: [PATCH] jfs: makes diUnmoun=
t/diMount in jfs_mount_rw atomic<br><br>jfs_mount_rw can call diUnmount and=
 then diMount. These calls<br>change the imap pointer.<br>In case JFS files=
ystem is mounted on root (/), between these two<br>calls there may be calls=
 of function jfs_lookup().<br>The jfs_lookup() function calls jfs_iget(), w=
hich, in its turn,<br>calls diRead(). The latter references the imap pointe=
r.<br>That may cause diRead() to refer to a pointer &quot;freed&quot; in<br=
>diUnmount().<br>This commit makes calls diUnmount()/diMount() be atomic so=
 that<br>nothing will read the imap pointer until the whole remount is<br>c=
ompleted.<br>---<br>=C2=A0fs/jfs/jfs_imap.c =C2=A0| 2 +-<br>=C2=A0fs/jfs/jf=
s_mount.c | 6 ++++++<br>=C2=A02 files changed, 7 insertions(+), 1 deletion(=
-)<br><br>diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c<br>index 799d3=
837e7c2..390cbfce391f 100644<br>--- a/fs/jfs/jfs_imap.c<br>+++ b/fs/jfs/jfs=
_imap.c<br>@@ -310,8 +310,8 @@ int diRead(struct inode *ip)<br>=C2=A0	iagno=
 =3D INOTOIAG(ip-&gt;i_ino);<br>=C2=A0<br>=C2=A0	/* read the iag */<br>-	im=
ap =3D JFS_IP(ipimap)-&gt;i_imap;<br>=C2=A0	IREAD_LOCK(ipimap, RDWRLOCK_IMA=
P);<br>+	imap =3D JFS_IP(ipimap)-&gt;i_imap;<br>=C2=A0	rc =3D diIAGRead(ima=
p, iagno, &amp;mp);<br>=C2=A0	IREAD_UNLOCK(ipimap);<br>=C2=A0	if (rc) {<br>=
diff --git a/fs/jfs/jfs_mount.c b/fs/jfs/jfs_mount.c<br>index 48d1f70f786c.=
.972b9ff18723 100644<br>--- a/fs/jfs/jfs_mount.c<br>+++ b/fs/jfs/jfs_mount.=
c<br>@@ -234,12 +234,18 @@ int jfs_mount_rw(struct super_block *sb, int rem=
ount)<br>=C2=A0<br>=C2=A0		truncate_inode_pages(sbi-&gt;ipimap-&gt;i_mappin=
g, 0);<br>=C2=A0		truncate_inode_pages(sbi-&gt;ipbmap-&gt;i_mapping, 0);<br=
>+<br>+		IWRITE_LOCK(sbi-&gt;ipimap, RDWRLOCK_IMAP);<br>+<br>=C2=A0		diUnmo=
unt(sbi-&gt;ipimap, 1);<br>=C2=A0		if ((rc =3D diMount(sbi-&gt;ipimap))) {<=
br>+			IWRITE_UNLOCK(sbi-&gt;ipimap);<br>=C2=A0			jfs_err(&quot;jfs_mount_r=
w: diMount failed!&quot;);<br>=C2=A0			return rc;<br>=C2=A0		}<br>=C2=A0<br=
>+		IWRITE_UNLOCK(sbi-&gt;ipimap);<br>+<br>=C2=A0		dbUnmount(sbi-&gt;ipbmap=
, 1);<br>=C2=A0		if ((rc =3D dbMount(sbi-&gt;ipbmap))) {<br>=C2=A0			jfs_er=
r(&quot;jfs_mount_rw: dbMount failed!&quot;);<br>-- <br>2.30.2<br></div><di=
v><br></div><div>Do you think it&#39;s a real issue? May I send this patch =
to you via git send-email?</div><div><br></div><div></div><div>Regards,</di=
v><div>Oleg.</div><div><br></div></div>

--000000000000e2bbca05ec00026b--


--===============3933718225513631144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3933718225513631144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============3933718225513631144==--

