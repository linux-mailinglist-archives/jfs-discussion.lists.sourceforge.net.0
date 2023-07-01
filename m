Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC0A744E13
	for <lists+jfs-discussion@lfdr.de>; Sun,  2 Jul 2023 16:27:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qFy2X-0005kz-TM;
	Sun, 02 Jul 2023 14:27:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew.kanner@gmail.com>) id 1qFbFB-0000Dx-JZ
 for jfs-discussion@lists.sourceforge.net;
 Sat, 01 Jul 2023 14:06:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=le+qu3+ocRQrilFSglXV9Y0hEj58kwpAV9CNzEQYcJE=; b=nDHsWa3dyPMhcT5qAcofVrM9e+
 yC4AVpr6GMvgYluOqRsmjg4Bq9SR2djuNhn8ciYV4YwmHQRXLXO/1Y8cUbxW6At4yYk0u0UuzrcNC
 1hLhOh9T0hLwsrfUfOx287Z+BGWy84Y2aFxqCVkoyNO9w6uGqNMMR9z/5a9uOPzTlB2M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=le+qu3+ocRQrilFSglXV9Y0hEj58kwpAV9CNzEQYcJE=; b=jtE7l4Gp+78OrlT7Bho0A7lGYc
 xP8eQrnh1kMwwgURtcljuHcEiRnBhL+Vya7HD6SEdB5JaFCP38KQCFczMYdGs9yDVbAQffqlu/xZH
 26CUHaT8CljRDBrCdToXiGICR0H3wkRerS59wgpNA9Q4la7RH4+KBXNn5SBOB7aezlhU=;
Received: from mail-lf1-f41.google.com ([209.85.167.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qFbF8-0030rT-Ex for jfs-discussion@lists.sourceforge.net;
 Sat, 01 Jul 2023 14:06:33 +0000
Received: by mail-lf1-f41.google.com with SMTP id
 2adb3069b0e04-4fba74870abso2218289e87.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 01 Jul 2023 07:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688220384; x=1690812384;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=le+qu3+ocRQrilFSglXV9Y0hEj58kwpAV9CNzEQYcJE=;
 b=X6SxY2oRg5iw1CPzfVsgJrMnwLeNrW3xRTc5KMbI3dD79X7PtCnYmim8nVtlZT8i9S
 p5P9Gz+vNyBExj91OQYOFjti+7LcfmQaK36BdZLKYn6ivXA0u8DjadtW2EHqjP5ZXyQ0
 TMJYP2RT/EL5R1s2h3nm6tyX//RRhAxwuUHTeyQNJL9mZV8v3KZR5nH7GvsaaeAIlZnr
 Px3RgFWe5E1RXhvTGyU73vM1kKQgCJOxCwA16lJ00LnrpD0TjCPPhONGYPPkgbwWBa88
 zHFWWUmPMiT3FliIuq+Ukm+YIQ3gmyZA9zFDBOFJeXuNes915I6ADpPs+Zj9b09hVjEV
 8YcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688220384; x=1690812384;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=le+qu3+ocRQrilFSglXV9Y0hEj58kwpAV9CNzEQYcJE=;
 b=GHBlprCApmPRmHxQr26S2oAAzKoEyvCVOr8FdmmIdBCwD9CYuM08OQeDXHIZ1NbqvH
 FoujWhCNy2D8PE7ePCw+hb0yx6xugoc3CxRovlk2kqgFeVDML5xvHelSHBlWgJON0FkD
 OczwHEfNHIweA2e/hoDXiH/4RT5LD0iiu5YIKM9ubXefgES9mUAtA5Nx0qV88tddphDO
 HiQ2ksz0zvPwO0LYYtjO9kn6xO2qYx97RI7dic/Vc1qpZau2mDc11hSSo6GqGKZ5r0F5
 Mv1PdlpZjPmpvqjm4SJmGhP/XnymjPUpQkwGcFo2mamd0Vi5cyZBiGXeYWqtw2xua+Yd
 g7Fw==
X-Gm-Message-State: ABy/qLbEGqjoQLBxxLs6/YP545uvZo3+6AJUu8nRsUAQCVzzq8sxrk9s
 dUG4UYUKxJ+uHg6qQuPJ6zw=
X-Google-Smtp-Source: APBJJlHc5Oc4tNTPNRuH+WlBZeaz1COessMNQar3ESbKs9kyvpi9q4C1EV70hUlbaW9L2Hqnw9yYZQ==
X-Received: by 2002:a05:6512:34cb:b0:4f8:d385:41bd with SMTP id
 w11-20020a05651234cb00b004f8d38541bdmr3842670lfr.8.1688220383724; 
 Sat, 01 Jul 2023 07:06:23 -0700 (PDT)
Received: from localhost.localdomain ([77.222.24.81])
 by smtp.gmail.com with ESMTPSA id
 q2-20020ac25a02000000b004f122a378d4sm3426174lfn.163.2023.07.01.07.06.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 01 Jul 2023 07:06:23 -0700 (PDT)
From: Andrew Kanner <andrew.kanner@gmail.com>
To: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Sat,  1 Jul 2023 17:05:42 +0300
Message-Id: <20230701140542.2252-2-andrew.kanner@gmail.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230701140542.2252-1-andrew.kanner@gmail.com>
References: <20221201124628.603505-1-liushixin2@huawei.com>
 <20230701140542.2252-1-andrew.kanner@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Syzkaller reported the following issue:
 ==================================================================
 BUG: KASAN: double-free in slab_free mm/slub.c:3787 [inline] BUG: KASAN:
 double-free in __kme [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.41 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrew.kanner[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.41 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qFbF8-0030rT-Ex
X-Mailman-Approved-At: Sun, 02 Jul 2023 14:27:01 +0000
Subject: [Jfs-discussion] [PATCH 1/1] fs/jfs: prevent double-free in
 dbUnmount() after failed jfs_remount()
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
Cc: Andrew Kanner <andrew.kanner@gmail.com>,
 linux-kernel-mentees@lists.linuxfoundation.org,
 syzbot+6a93efb725385bc4b2e9@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Syzkaller reported the following issue:
==================================================================
BUG: KASAN: double-free in slab_free mm/slub.c:3787 [inline]
BUG: KASAN: double-free in __kmem_cache_free+0x71/0x110 mm/slub.c:3800
Free of addr ffff888086408000 by task syz-executor.4/12750
[...]
Call Trace:
 <TASK>
[...]
 kasan_report_invalid_free+0xac/0xd0 mm/kasan/report.c:482
 ____kasan_slab_free+0xfb/0x120
 kasan_slab_free include/linux/kasan.h:177 [inline]
 slab_free_hook mm/slub.c:1781 [inline]
 slab_free_freelist_hook+0x12e/0x1a0 mm/slub.c:1807
 slab_free mm/slub.c:3787 [inline]
 __kmem_cache_free+0x71/0x110 mm/slub.c:3800
 dbUnmount+0xf4/0x110 fs/jfs/jfs_dmap.c:264
 jfs_umount+0x248/0x3b0 fs/jfs/jfs_umount.c:87
 jfs_put_super+0x86/0x190 fs/jfs/super.c:194
 generic_shutdown_super+0x130/0x310 fs/super.c:492
 kill_block_super+0x79/0xd0 fs/super.c:1386
 deactivate_locked_super+0xa7/0xf0 fs/super.c:332
 cleanup_mnt+0x494/0x520 fs/namespace.c:1291
 task_work_run+0x243/0x300 kernel/task_work.c:179
 resume_user_mode_work include/linux/resume_user_mode.h:49 [inline]
 exit_to_user_mode_loop+0x124/0x150 kernel/entry/common.c:171
 exit_to_user_mode_prepare+0xb2/0x140 kernel/entry/common.c:203
 __syscall_exit_to_user_mode_work kernel/entry/common.c:285 [inline]
 syscall_exit_to_user_mode+0x26/0x60 kernel/entry/common.c:296
 do_syscall_64+0x49/0xb0 arch/x86/entry/common.c:86
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
[...]
 </TASK>

Allocated by task 13352:
 kasan_save_stack mm/kasan/common.c:45 [inline]
 kasan_set_track+0x3d/0x60 mm/kasan/common.c:52
 ____kasan_kmalloc mm/kasan/common.c:371 [inline]
 __kasan_kmalloc+0x97/0xb0 mm/kasan/common.c:380
 kmalloc include/linux/slab.h:580 [inline]
 dbMount+0x54/0x980 fs/jfs/jfs_dmap.c:164
 jfs_mount+0x1dd/0x830 fs/jfs/jfs_mount.c:121
 jfs_fill_super+0x590/0xc50 fs/jfs/super.c:556
 mount_bdev+0x26c/0x3a0 fs/super.c:1359
 legacy_get_tree+0xea/0x180 fs/fs_context.c:610
 vfs_get_tree+0x88/0x270 fs/super.c:1489
 do_new_mount+0x289/0xad0 fs/namespace.c:3145
 do_mount fs/namespace.c:3488 [inline]
 __do_sys_mount fs/namespace.c:3697 [inline]
 __se_sys_mount+0x2d3/0x3c0 fs/namespace.c:3674
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

Freed by task 13352:
 kasan_save_stack mm/kasan/common.c:45 [inline]
 kasan_set_track+0x3d/0x60 mm/kasan/common.c:52
 kasan_save_free_info+0x27/0x40 mm/kasan/generic.c:518
 ____kasan_slab_free+0xd6/0x120 mm/kasan/common.c:236
 kasan_slab_free include/linux/kasan.h:177 [inline]
 slab_free_hook mm/slub.c:1781 [inline]
 slab_free_freelist_hook+0x12e/0x1a0 mm/slub.c:1807
 slab_free mm/slub.c:3787 [inline]
 __kmem_cache_free+0x71/0x110 mm/slub.c:3800
 dbUnmount+0xf4/0x110 fs/jfs/jfs_dmap.c:264
 jfs_mount_rw+0x545/0x740 fs/jfs/jfs_mount.c:247
 jfs_remount+0x3db/0x710 fs/jfs/super.c:454
 reconfigure_super+0x3bc/0x7b0 fs/super.c:935
 vfs_fsconfig_locked fs/fsopen.c:254 [inline]
 __do_sys_fsconfig fs/fsopen.c:439 [inline]
 __se_sys_fsconfig+0xad5/0x1060 fs/fsopen.c:314
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
[...]

JFS_SBI(ipbmap->i_sb)->bmap wasn't set to NULL after kfree() in
dbUnmount().

Syzkaller uses faultinject to reproduce this KASAN double-free
warning. The issue is triggered if either diMount() or dbMount() fail
in jfs_remount(), since diUnmount() or dbUnmount() already happened in
such a case - they will do double-free on next execution: jfs_umount
or jfs_remount.

Tested on both upstream and jfs-next by syzkaller.

Reported-and-tested-by: syzbot+6a93efb725385bc4b2e9@syzkaller.appspotmail.com
Closes: https://lore.kernel.org/all/000000000000471f2d05f1ce8bad@google.com/T/
Link: https://syzkaller.appspot.com/bug?extid=6a93efb725385bc4b2e9
Signed-off-by: Andrew Kanner <andrew.kanner@gmail.com>
---
 fs/jfs/jfs_dmap.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index a14a0f18a4c4..88afd108c2dd 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -269,6 +269,7 @@ int dbUnmount(struct inode *ipbmap, int mounterror)
 
 	/* free the memory for the in-memory bmap. */
 	kfree(bmp);
+	JFS_SBI(ipbmap->i_sb)->bmap = NULL;
 
 	return (0);
 }
-- 
2.39.3



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
