Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1D7758126
	for <lists+jfs-discussion@lfdr.de>; Tue, 18 Jul 2023 17:40:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qLmnf-0002Ao-Bk;
	Tue, 18 Jul 2023 15:39:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew.kanner@gmail.com>) id 1qLmne-0002Ah-6i
 for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Jul 2023 15:39:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Subject:Cc:To:From:Date:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=41fN1SUpZBPylSQmYP/4Kzm/8d1Yk9UuE//JCuZhWoY=; b=h7xxhu4WZDeT6i+S31xCq/uSy3
 TXaSIW/fxOu6YSPfenI2p1Fer/5vEJbl5/QyP/1DvgVCJDC47lacCMHhAPDVby39u5vX8pYBff5Ha
 mEfkFYnIByQ3C/VaI80afzjSJqA51pbf/k+aO+lTGJ+oIHypMg1efEmbg0X0KuBibvu4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Subject:Cc:To:From:Date:
 Message-ID:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=41fN1SUpZBPylSQmYP/4Kzm/8d1Yk9UuE//JCuZhWoY=; b=UPHIOnI5e2ShuMDA44Ojf7Stko
 BTdxwmhhdWt1cVcua2KmWEtd/FpQhSH6yXMpwlsvjwJ40rxbihZsoqyGtnlk0lX03itTWWGaFBb/h
 ellmFE00oUhEYbM6KUTBv3+OD1n5NaKEymc3BkwvsTXaDzOV7bifd3SW2ZvsAHrl3wy0=;
Received: from mail-lf1-f46.google.com ([209.85.167.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qLmnf-0001ix-JQ for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Jul 2023 15:39:42 +0000
Received: by mail-lf1-f46.google.com with SMTP id
 2adb3069b0e04-4fb9ae4cef6so9605791e87.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 18 Jul 2023 08:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1689694775; x=1692286775;
 h=in-reply-to:content-disposition:mime-version:references:subject:cc
 :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=41fN1SUpZBPylSQmYP/4Kzm/8d1Yk9UuE//JCuZhWoY=;
 b=Y1yAdjD1sO5pGSWKkKoRJVMq2xcvpwSTVAqeaTtBZsKZtFJZZL6FVvqKCIBFKE3rv7
 v4yaFMj4RGVTCHBqCR16Ayb27hJ4lTdlTCpc4sZ5IlnxyyuyWXZeh//xnDYmyU6jJ9Se
 P84BRJ6QoCv5Vw8SdFTBMx2UyIhbcQqYXoWAHjW0SllnzSBxDGdjXYoX5qC+jpvwYmG5
 rl9MkONUoCH9TjHdSGuehxCRiZZ7zRZcJipb6F8JUEvP5+yN8RRvHCD7gB4UCrONMqeZ
 WpurWwCsNMWCtLDHggPXOnE3ROiNOE82Y3SGxFZkbUpPum5aM5ZnFthQOMiBM1S0GjB5
 RG8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689694775; x=1692286775;
 h=in-reply-to:content-disposition:mime-version:references:subject:cc
 :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=41fN1SUpZBPylSQmYP/4Kzm/8d1Yk9UuE//JCuZhWoY=;
 b=h2nb/YyAc798wSBkeErr7zfsaQlUZYhBj9arTFwOziWhIiwA0e4bHOZ4OEfzbVQAds
 7sDGTWBwi/bU1KRuoSe0MWPuT4nIsrHsty7O5fprV5tPk4JInz4+Pgfkapj/XU972Miw
 cTDvQiP1gcewAVOHkf+MaXtqT+m/Hp0X9b2SnArDQATsEtP1axxs1QvSsmkiomOso+Kr
 hGmcreUM0IvH98H9I4sAQTnYT+cp39w0YP1F+jEKNbQH7x6sNFgc/W6eS3gGWAlGU+8x
 fYs3MgfGagxNT8nyAhjqjYsK76DsLqwTlsp5eWjDUq/PfWEaxpVkjspFhOTQMUSMb4eO
 s6fg==
X-Gm-Message-State: ABy/qLaDgS1lHLSDEuc5Q22ObWOIwS1V22aKxc3aSfMv2frMScIYCmoK
 bTOnPiRCfNYyxHvSTEhGa6Q=
X-Google-Smtp-Source: APBJJlGnCP1dluIWVjmPOUxagelID4Z+mHdb7T0zLXNwWZ8AsCplVJGLgO8gWs28qdgPH+ElYgJbgA==
X-Received: by 2002:a05:6512:3f8:b0:4f8:752f:371f with SMTP id
 n24-20020a05651203f800b004f8752f371fmr8896228lfq.51.1689694774458; 
 Tue, 18 Jul 2023 08:39:34 -0700 (PDT)
Received: from akanner-r14. ([77.222.24.34]) by smtp.gmail.com with ESMTPSA id
 g3-20020a19ac03000000b004fdb38e3accsm488660lfc.119.2023.07.18.08.39.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Jul 2023 08:39:33 -0700 (PDT)
Message-ID: <64b6b235.190a0220.28c3a.1ee8@mx.google.com>
X-Google-Original-Message-ID: <ZLayMklBvr6B/F/K@akanner-r14.>
Date: Tue, 18 Jul 2023 17:39:30 +0200
To: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20221201124628.603505-1-liushixin2@huawei.com>
 <20230701140542.2252-1-andrew.kanner@gmail.com>
 <20230701140542.2252-2-andrew.kanner@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230701140542.2252-2-andrew.kanner@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Jul 01, 2023 at 05:05:42PM +0300,
 Andrew Kanner wrote: > Syzkaller reported the following issue: >
 ==================================================================
 > BUG: KASAN: double-free [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrew.kanner[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.46 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qLmnf-0001ix-JQ
Subject: Re: [Jfs-discussion] [PATCH 1/1] fs/jfs: prevent double-free in
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
From: Andrew Kanner via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Andrew Kanner <andrew.kanner@gmail.com>
Cc: linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sat, Jul 01, 2023 at 05:05:42PM +0300, Andrew Kanner wrote:
> Syzkaller reported the following issue:
> ==================================================================
> BUG: KASAN: double-free in slab_free mm/slub.c:3787 [inline]
> BUG: KASAN: double-free in __kmem_cache_free+0x71/0x110 mm/slub.c:3800
> Free of addr ffff888086408000 by task syz-executor.4/12750
> [...]
> Call Trace:
>  <TASK>
> [...]
>  kasan_report_invalid_free+0xac/0xd0 mm/kasan/report.c:482
>  ____kasan_slab_free+0xfb/0x120
>  kasan_slab_free include/linux/kasan.h:177 [inline]
>  slab_free_hook mm/slub.c:1781 [inline]
>  slab_free_freelist_hook+0x12e/0x1a0 mm/slub.c:1807
>  slab_free mm/slub.c:3787 [inline]
>  __kmem_cache_free+0x71/0x110 mm/slub.c:3800
>  dbUnmount+0xf4/0x110 fs/jfs/jfs_dmap.c:264
>  jfs_umount+0x248/0x3b0 fs/jfs/jfs_umount.c:87
>  jfs_put_super+0x86/0x190 fs/jfs/super.c:194
>  generic_shutdown_super+0x130/0x310 fs/super.c:492
>  kill_block_super+0x79/0xd0 fs/super.c:1386
>  deactivate_locked_super+0xa7/0xf0 fs/super.c:332
>  cleanup_mnt+0x494/0x520 fs/namespace.c:1291
>  task_work_run+0x243/0x300 kernel/task_work.c:179
>  resume_user_mode_work include/linux/resume_user_mode.h:49 [inline]
>  exit_to_user_mode_loop+0x124/0x150 kernel/entry/common.c:171
>  exit_to_user_mode_prepare+0xb2/0x140 kernel/entry/common.c:203
>  __syscall_exit_to_user_mode_work kernel/entry/common.c:285 [inline]
>  syscall_exit_to_user_mode+0x26/0x60 kernel/entry/common.c:296
>  do_syscall_64+0x49/0xb0 arch/x86/entry/common.c:86
>  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> [...]
>  </TASK>
> 
> Allocated by task 13352:
>  kasan_save_stack mm/kasan/common.c:45 [inline]
>  kasan_set_track+0x3d/0x60 mm/kasan/common.c:52
>  ____kasan_kmalloc mm/kasan/common.c:371 [inline]
>  __kasan_kmalloc+0x97/0xb0 mm/kasan/common.c:380
>  kmalloc include/linux/slab.h:580 [inline]
>  dbMount+0x54/0x980 fs/jfs/jfs_dmap.c:164
>  jfs_mount+0x1dd/0x830 fs/jfs/jfs_mount.c:121
>  jfs_fill_super+0x590/0xc50 fs/jfs/super.c:556
>  mount_bdev+0x26c/0x3a0 fs/super.c:1359
>  legacy_get_tree+0xea/0x180 fs/fs_context.c:610
>  vfs_get_tree+0x88/0x270 fs/super.c:1489
>  do_new_mount+0x289/0xad0 fs/namespace.c:3145
>  do_mount fs/namespace.c:3488 [inline]
>  __do_sys_mount fs/namespace.c:3697 [inline]
>  __se_sys_mount+0x2d3/0x3c0 fs/namespace.c:3674
>  do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>  do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
>  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> 
> Freed by task 13352:
>  kasan_save_stack mm/kasan/common.c:45 [inline]
>  kasan_set_track+0x3d/0x60 mm/kasan/common.c:52
>  kasan_save_free_info+0x27/0x40 mm/kasan/generic.c:518
>  ____kasan_slab_free+0xd6/0x120 mm/kasan/common.c:236
>  kasan_slab_free include/linux/kasan.h:177 [inline]
>  slab_free_hook mm/slub.c:1781 [inline]
>  slab_free_freelist_hook+0x12e/0x1a0 mm/slub.c:1807
>  slab_free mm/slub.c:3787 [inline]
>  __kmem_cache_free+0x71/0x110 mm/slub.c:3800
>  dbUnmount+0xf4/0x110 fs/jfs/jfs_dmap.c:264
>  jfs_mount_rw+0x545/0x740 fs/jfs/jfs_mount.c:247
>  jfs_remount+0x3db/0x710 fs/jfs/super.c:454
>  reconfigure_super+0x3bc/0x7b0 fs/super.c:935
>  vfs_fsconfig_locked fs/fsopen.c:254 [inline]
>  __do_sys_fsconfig fs/fsopen.c:439 [inline]
>  __se_sys_fsconfig+0xad5/0x1060 fs/fsopen.c:314
>  do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>  do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
>  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> [...]
> 
> JFS_SBI(ipbmap->i_sb)->bmap wasn't set to NULL after kfree() in
> dbUnmount().
> 
> Syzkaller uses faultinject to reproduce this KASAN double-free
> warning. The issue is triggered if either diMount() or dbMount() fail
> in jfs_remount(), since diUnmount() or dbUnmount() already happened in
> such a case - they will do double-free on next execution: jfs_umount
> or jfs_remount.
> 
> Tested on both upstream and jfs-next by syzkaller.
> 
> Reported-and-tested-by: syzbot+6a93efb725385bc4b2e9@syzkaller.appspotmail.com
> Closes: https://lore.kernel.org/all/000000000000471f2d05f1ce8bad@google.com/T/
> Link: https://syzkaller.appspot.com/bug?extid=6a93efb725385bc4b2e9
> Signed-off-by: Andrew Kanner <andrew.kanner@gmail.com>
> ---
>  fs/jfs/jfs_dmap.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index a14a0f18a4c4..88afd108c2dd 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -269,6 +269,7 @@ int dbUnmount(struct inode *ipbmap, int mounterror)
>  
>  	/* free the memory for the in-memory bmap. */
>  	kfree(bmp);
> +	JFS_SBI(ipbmap->i_sb)->bmap = NULL;
>  
>  	return (0);
>  }
> -- 
> 2.39.3
> 

Hi, Dave.
Are there any objections?
Or maybe suggestions on how to test both my patch and the patch from
Liu Shixin (some corner cases)?


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
