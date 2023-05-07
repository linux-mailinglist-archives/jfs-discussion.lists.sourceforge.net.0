Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C4A6FB32C
	for <lists+jfs-discussion@lfdr.de>; Mon,  8 May 2023 16:45:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pw279-0002SD-Tm;
	Mon, 08 May 2023 14:45:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <anupnewsmail@gmail.com>) id 1pvWxQ-0006fJ-DB
 for jfs-discussion@lists.sourceforge.net;
 Sun, 07 May 2023 05:29:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r9VsomI8HYFx3oLJzVYzc8WqDFNSBbJBqqUVE5TiUyc=; b=ivl4kqGAi30UWz+MKVzNuCWdqa
 JXcpXRv8UA10FPb07IFkIuXiAJLGkcgVA36k9TCxdaMtaPJy86QfhfL3WzTH0W5vQqJmeOtSVdCAo
 KF8azDDTNb1xtfr7R2GofwYb/DfLKBHJe+/uP8mfZMuMJcL5H5y+gd7eef7b4zyTwGyI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r9VsomI8HYFx3oLJzVYzc8WqDFNSBbJBqqUVE5TiUyc=; b=WWqLKKInfrr9RP9ddwD3/FKgv2
 tJsrODPOaKWXiHFTAzJka2GJ1u8EpJfBO4brpiUJomlozcf1LkNriQHSeGxPzgbeloC6Cmh4aZ74J
 noKyjjK+SXY6xn0kq6xjqCG2YzSZviKSvyA+wq5In+TzNsPe95DFXq1vWQ5tp6E3JwxM=;
Received: from mail-yb1-f180.google.com ([209.85.219.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pvWxM-0007zZ-8A for jfs-discussion@lists.sourceforge.net;
 Sun, 07 May 2023 05:29:16 +0000
Received: by mail-yb1-f180.google.com with SMTP id
 3f1490d57ef6-b9a6ab9ede3so4444665276.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 06 May 2023 22:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683437346; x=1686029346;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=r9VsomI8HYFx3oLJzVYzc8WqDFNSBbJBqqUVE5TiUyc=;
 b=SEYRvbYQiuoyeXRSe+hrsCaWEaHYu22RwPMmWjeRVCfJE1T3cRSLGPC8/5MoRA7Obj
 Ly0qq9l5X9GgYB2+Q02KwgJ9N+eMUB7wUqF94bNYzB5VakaxTigarpjTG2wFGipmQXrc
 krFshhillfZMYYkYra9XQv6X9gUXuOxYhkK5fWYrtSjBCO/TTS58hjS1ErjwsZxxDQT3
 lkO3uJYSKuWkZiusRWBRdRc42S/hWJciTlTJrF/Z2xblnKEA1zJxd8JK2lXSUAbAZxpI
 dYcLwlUYaCKI6it0GtuRBhYSD0Zhyg0/5TDQdq1ru6h+JqQ3JdsTb8PVMiQ8IXee1/yg
 /S+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683437346; x=1686029346;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=r9VsomI8HYFx3oLJzVYzc8WqDFNSBbJBqqUVE5TiUyc=;
 b=MNMjFas3kQVDeJgE0QXEC/rBvgMK8Mdx4yFndgZLjQaM9GFUSmKwlGq2TiO66ljLAj
 rXWJVtYjTQA2IltjTPrqqj4rxxb0BAFmeHuTW2nDI7hCBdNcYORnIL4u2e5hQ7uo551j
 Ux3omoDqdPl829Dg8yPTL4pLLRvazC2+kwmJ1HWZmfmvSZdDIjaTM5RzfkTHSmCi8qZW
 VgHW9Q/OVIbuExBxtVuOfvidDUy4BXIUGb+Pvv68l5+USXk32hStCQ7Sg2jWX4POYi9U
 BxDv29W2MJPImf63Ox1zIHUQyGnyBB3D0x7EF+lPrl0FAvrifRwA9MWTsbC18lvfBqWA
 bUmQ==
X-Gm-Message-State: AC+VfDz7vaHhYyaab3Abp1R9iC/uOoHPZuCZ18b1lLpxtDAOE3TG8tof
 UjmFFstuPAwKZ1jTMSXpzP1w8NL12TkjIHIuuV4=
X-Google-Smtp-Source: ACHHUZ6Uh7nvU3ymUNpiksbcolDmJ1sTrE3djrFEWabZtJrevhHQR3v5khk3x2+Tu8Y9w7+Wkp5kCrjWzCsrdBg93eQ=
X-Received: by 2002:a25:2985:0:b0:b95:9e75:ff0d with SMTP id
 p127-20020a252985000000b00b959e75ff0dmr6826914ybp.36.1683437346391; Sat, 06
 May 2023 22:29:06 -0700 (PDT)
MIME-Version: 1.0
References: <ZDla2Nuyq2QLdo96@yoga>
In-Reply-To: <ZDla2Nuyq2QLdo96@yoga>
From: Anup Sharma <anupnewsmail@gmail.com>
Date: Sun, 7 May 2023 10:58:53 +0530
Message-ID: <CAJPAYX=D6aTGOPsOzep2Eq6FaocqDUwGBTzC-c_6n5w8H_AvBA@mail.gmail.com>
To: shaggy@kernel.org, r33s3n6@gmail.com, mudongliangabcd@gmail.com, 
 liushixin2@huawei.com, wuhoipok@gmail.com, 
 jfs-discussion@lists.sourceforge.net, 
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org, 
 skhan@linuxfoundation.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 14 Apr 2023 at 19:23, anupsharma wrote: > Syzkaller
 reported the following issue: > option from the mount to silence this warning.
 > ======================================================= > find_entry called
 with index = 0 > read_mapping_p [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.180 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anupnewsmail[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.180 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1pvWxM-0007zZ-8A
X-Mailman-Approved-At: Mon, 08 May 2023 14:45:24 +0000
Subject: Re: [Jfs-discussion] [PATCH] fs: jfs: fixed UBSAN:
 shift-out-of-bounds in dbFree
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
Content-Type: multipart/mixed; boundary="===============0413602589361568766=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--===============0413602589361568766==
Content-Type: multipart/alternative; boundary="000000000000088a8805fb13cd68"

--000000000000088a8805fb13cd68
Content-Type: text/plain; charset="UTF-8"

On Fri, 14 Apr 2023 at 19:23, anupsharma <anupnewsmail@gmail.com> wrote:

> Syzkaller reported the following issue:
>          option from the mount to silence this warning.
> =======================================================
> find_entry called with index = 0
> read_mapping_page failed!
> ERROR: (device loop0): txCommit:
> ERROR: (device loop0): remounting filesystem as read-only
>
> ================================================================================
> UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:381:12
> shift exponent 134217736 is too large for 64-bit type 'long long'
> CPU: 1 PID: 5068 Comm: syz-executor350 Not tainted
> 6.3.0-rc2-syzkaller-00069-g0ddc84d2dd43 #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
> Google 03/02/2023
> Call Trace:
>  <TASK>
>  __dump_stack lib/dump_stack.c:88 [inline]
>  dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
>  ubsan_epilogue lib/ubsan.c:217 [inline]
>  __ubsan_handle_shift_out_of_bounds+0x3c3/0x420 lib/ubsan.c:387
>  dbFree+0x46e/0x650 fs/jfs/jfs_dmap.c:381
>  txFreeMap+0x96a/0xd50 fs/jfs/jfs_txnmgr.c:2510
>  xtTruncate+0xe5c/0x3260 fs/jfs/jfs_xtree.c:2467
>  jfs_free_zero_link+0x46e/0x6e0 fs/jfs/namei.c:758
>  jfs_evict_inode+0x35f/0x440 fs/jfs/inode.c:153
>  evict+0x2a4/0x620 fs/inode.c:665
>  __dentry_kill+0x436/0x650 fs/dcache.c:607
>  shrink_dentry_list+0x39c/0x6a0 fs/dcache.c:1201
>  shrink_dcache_parent+0xcd/0x480
>  do_one_tree+0x23/0xe0 fs/dcache.c:1682
>  shrink_dcache_for_umount+0x7d/0x120 fs/dcache.c:1699
>  generic_shutdown_super+0x67/0x340 fs/super.c:472
>  kill_block_super+0x7e/0xe0 fs/super.c:1398
>  deactivate_locked_super+0xa4/0x110 fs/super.c:331
>  cleanup_mnt+0x426/0x4c0 fs/namespace.c:1177
>  task_work_run+0x24a/0x300 kernel/task_work.c:179
>  exit_task_work include/linux/task_work.h:38 [inline]
>  do_exit+0x68f/0x2290 kernel/exit.c:869
>  do_group_exit+0x206/0x2c0 kernel/exit.c:1019
>  __do_sys_exit_group kernel/exit.c:1030 [inline]
>  __se_sys_exit_group kernel/exit.c:1028 [inline]
>  __x64_sys_exit_group+0x3f/0x40 kernel/exit.c:1028
>  do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>  do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
>  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> RIP: 0033:0x7fa87e2289b9
> Code: Unable to access opcode bytes at 0x7fa87e22898f.
> RSP: 002b:00007fff4bfe3938 EFLAGS: 00000246 ORIG_RAX: 00000000000000e7
> RAX: ffffffffffffffda RBX: 00007fa87e2a3330 RCX: 00007fa87e2289b9
> RDX: 000000000000003c RSI: 00000000000000e7 RDI: 0000000000000001
> RBP: 0000000000000001 R08: ffffffffffffffc0 R09: 00007fa87e29de40
> R10: 00007fff4bfe3850 R11: 0000000000000246 R12: 00007fa87e2a3330
> R13: 0000000000000001 R14: 0000000000000000 R15: 0000000000000001
>  </TASK>
>
> ================================================================================
>
> db_l2nbperpage which is used as a shift exponent to get the buffer
> for the current dmap will be less than and equal to 64.
>
> Tested via syzbot.
>
> Reported-by: syzbot+d2cd27dcf8e04b232eb2@syzkaller.appspotmail.com
> Link:
> https://syzkaller.appspot.com/bug?id=2a70a453331db32ed491f5cbb07e81bf2d225715
>
> Signed-off-by: Anup Sharma <anupnewsmail@gmail.com>
> ---
>  fs/jfs/jfs_dmap.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index a3eb1e826947..d2cf56dd8f91 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -184,7 +184,10 @@ int dbMount(struct inode *ipbmap)
>                 err = -EINVAL;
>                 goto err_release_metapage;
>         }
> -
> +       if (bmp->db_l2nbperpage >= 64) {
> +               err = -EINVAL;
> +               goto err_release_metapage;
> +       }
>         bmp->db_maxlevel = le32_to_cpu(dbmp_le->dn_maxlevel);
>         bmp->db_maxag = le32_to_cpu(dbmp_le->dn_maxag);
>         bmp->db_agpref = le32_to_cpu(dbmp_le->dn_agpref);
> --
> 2.34.1
>
> Hello All,
Just wanted to follow up on this patch submitted earlier. May I please
request
a review and feedback on this patch.
Thanks,
Anup

--000000000000088a8805fb13cd68
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, 14 Apr 2023 at 19:23, anupsha=
rma &lt;<a href=3D"mailto:anupnewsmail@gmail.com">anupnewsmail@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Syz=
kaller reported the following issue:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0option from the mount to silence this war=
ning.<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>
find_entry called with index =3D 0<br>
read_mapping_page failed!<br>
ERROR: (device loop0): txCommit:<br>
ERROR: (device loop0): remounting filesystem as read-only<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:381:12<br>
shift exponent 134217736 is too large for 64-bit type &#39;long long&#39;<b=
r>
CPU: 1 PID: 5068 Comm: syz-executor350 Not tainted 6.3.0-rc2-syzkaller-0006=
9-g0ddc84d2dd43 #0<br>
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Goo=
gle 03/02/2023<br>
Call Trace:<br>
=C2=A0&lt;TASK&gt;<br>
=C2=A0__dump_stack lib/dump_stack.c:88 [inline]<br>
=C2=A0dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106<br>
=C2=A0ubsan_epilogue lib/ubsan.c:217 [inline]<br>
=C2=A0__ubsan_handle_shift_out_of_bounds+0x3c3/0x420 lib/ubsan.c:387<br>
=C2=A0dbFree+0x46e/0x650 fs/jfs/jfs_dmap.c:381<br>
=C2=A0txFreeMap+0x96a/0xd50 fs/jfs/jfs_txnmgr.c:2510<br>
=C2=A0xtTruncate+0xe5c/0x3260 fs/jfs/jfs_xtree.c:2467<br>
=C2=A0jfs_free_zero_link+0x46e/0x6e0 fs/jfs/namei.c:758<br>
=C2=A0jfs_evict_inode+0x35f/0x440 fs/jfs/inode.c:153<br>
=C2=A0evict+0x2a4/0x620 fs/inode.c:665<br>
=C2=A0__dentry_kill+0x436/0x650 fs/dcache.c:607<br>
=C2=A0shrink_dentry_list+0x39c/0x6a0 fs/dcache.c:1201<br>
=C2=A0shrink_dcache_parent+0xcd/0x480<br>
=C2=A0do_one_tree+0x23/0xe0 fs/dcache.c:1682<br>
=C2=A0shrink_dcache_for_umount+0x7d/0x120 fs/dcache.c:1699<br>
=C2=A0generic_shutdown_super+0x67/0x340 fs/super.c:472<br>
=C2=A0kill_block_super+0x7e/0xe0 fs/super.c:1398<br>
=C2=A0deactivate_locked_super+0xa4/0x110 fs/super.c:331<br>
=C2=A0cleanup_mnt+0x426/0x4c0 fs/namespace.c:1177<br>
=C2=A0task_work_run+0x24a/0x300 kernel/task_work.c:179<br>
=C2=A0exit_task_work include/linux/task_work.h:38 [inline]<br>
=C2=A0do_exit+0x68f/0x2290 kernel/exit.c:869<br>
=C2=A0do_group_exit+0x206/0x2c0 kernel/exit.c:1019<br>
=C2=A0__do_sys_exit_group kernel/exit.c:1030 [inline]<br>
=C2=A0__se_sys_exit_group kernel/exit.c:1028 [inline]<br>
=C2=A0__x64_sys_exit_group+0x3f/0x40 kernel/exit.c:1028<br>
=C2=A0do_syscall_x64 arch/x86/entry/common.c:50 [inline]<br>
=C2=A0do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80<br>
=C2=A0entry_SYSCALL_64_after_hwframe+0x63/0xcd<br>
RIP: 0033:0x7fa87e2289b9<br>
Code: Unable to access opcode bytes at 0x7fa87e22898f.<br>
RSP: 002b:00007fff4bfe3938 EFLAGS: 00000246 ORIG_RAX: 00000000000000e7<br>
RAX: ffffffffffffffda RBX: 00007fa87e2a3330 RCX: 00007fa87e2289b9<br>
RDX: 000000000000003c RSI: 00000000000000e7 RDI: 0000000000000001<br>
RBP: 0000000000000001 R08: ffffffffffffffc0 R09: 00007fa87e29de40<br>
R10: 00007fff4bfe3850 R11: 0000000000000246 R12: 00007fa87e2a3330<br>
R13: 0000000000000001 R14: 0000000000000000 R15: 0000000000000001<br>
=C2=A0&lt;/TASK&gt;<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>
<br>
db_l2nbperpage which is used as a shift exponent to get the buffer<br>
for the current dmap will be less than and equal to 64. <br>
<br>
Tested via syzbot.<br>
<br>
Reported-by: <a href=3D"mailto:syzbot%2Bd2cd27dcf8e04b232eb2@syzkaller.apps=
potmail.com" target=3D"_blank">syzbot+d2cd27dcf8e04b232eb2@syzkaller.appspo=
tmail.com</a><br>
Link: <a href=3D"https://syzkaller.appspot.com/bug?id=3D2a70a453331db32ed49=
1f5cbb07e81bf2d225715" rel=3D"noreferrer" target=3D"_blank">https://syzkall=
er.appspot.com/bug?id=3D2a70a453331db32ed491f5cbb07e81bf2d225715</a><br>
<br>
Signed-off-by: Anup Sharma &lt;<a href=3D"mailto:anupnewsmail@gmail.com" ta=
rget=3D"_blank">anupnewsmail@gmail.com</a>&gt;<br>
---<br>
=C2=A0fs/jfs/jfs_dmap.c | 5 ++++-<br>
=C2=A01 file changed, 4 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c<br>
index a3eb1e826947..d2cf56dd8f91 100644<br>
--- a/fs/jfs/jfs_dmap.c<br>
+++ b/fs/jfs/jfs_dmap.c<br>
@@ -184,7 +184,10 @@ int dbMount(struct inode *ipbmap)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 err =3D -EINVAL;<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto err_release_me=
tapage;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (bmp-&gt;db_l2nbperpage &gt;=3D 64) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D -EINVAL;<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto err_release_me=
tapage;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bmp-&gt;db_maxlevel =3D le32_to_cpu(dbmp_le-&gt=
;dn_maxlevel);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bmp-&gt;db_maxag =3D le32_to_cpu(dbmp_le-&gt;dn=
_maxag);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bmp-&gt;db_agpref =3D le32_to_cpu(dbmp_le-&gt;d=
n_agpref);<br>
-- <br>
2.34.1<br>
<br>
</blockquote></div>Hello All,<br>Just wanted to follow up on this patch sub=
mitted earlier. May I please request<br><div>a review and feedback on this =
patch.</div><div>Thanks, <br></div><div>Anup<br></div></div>

--000000000000088a8805fb13cd68--


--===============0413602589361568766==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0413602589361568766==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============0413602589361568766==--

