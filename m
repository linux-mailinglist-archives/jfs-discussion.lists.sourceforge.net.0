Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1819E43BF0E
	for <lists+jfs-discussion@lfdr.de>; Wed, 27 Oct 2021 03:34:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mfXoy-0004Gr-Is; Wed, 27 Oct 2021 01:33:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sunhao.th@gmail.com>) id 1mfXow-0004Gc-TS
 for jfs-discussion@lists.sourceforge.net; Wed, 27 Oct 2021 01:33:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FXsJNd5q6gyQSVEjEuTnLLXYzsPTKanmnHoHbci90to=; b=Wrnf4BRRvqphjk9zPbYFwQ0ynr
 +DNR2RZdtl1BaTKSwwCv8gvVJCtA4uCsylT5XTMl3WUGldCkzRIPJ4b2GDtWjSyqCVfShk35mnegN
 1aTcYRsfD6yuRabcZhkDN58R5ar0Tc71QKk5fMaRkz8Z68SvhOJTnhkgMYTOcpPElceE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FXsJNd5q6gyQSVEjEuTnLLXYzsPTKanmnHoHbci90to=; b=NT3MEGBBGmhGOwgHHBhQaVntpJ
 HTn8DPYgHrubOGgAz0D4b3q568SXX09eu2QeHGVphZx9QTUzt/eo4S6NtDJrKzuj1JRPnvD0ARSHi
 FgRqTCq4l0E/Fxg9u8IjxawfHkTgq30zwMxlwuMjaY3cmuDkuBjDGb8L/1zL2gtw/tJM=;
Received: from mail-pj1-f54.google.com ([209.85.216.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mfXoS-0005Nx-Ql
 for jfs-discussion@lists.sourceforge.net; Wed, 27 Oct 2021 01:33:38 +0000
Received: by mail-pj1-f54.google.com with SMTP id
 v1-20020a17090a088100b001a21156830bso3802868pjc.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 26 Oct 2021 18:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FXsJNd5q6gyQSVEjEuTnLLXYzsPTKanmnHoHbci90to=;
 b=eX4CXGovCUzUafOweFaJs8Y3wIqmn6BZbxU1qZGgWIq6y+A/txciIPhVIQ3LVYHE1c
 YiJDkyVrm1cRooKON14Rmlrs10ANk7Tgsx9ENzMOwhvaqstdeHZh13i9Cr2RMY+fVpON
 Mr9Mzv/HjXPoiRK/WeFLXyNimHUUMfYsDagjOBIcvtcvNlhMEg1pa7HL2lqIDpNpWH4d
 65QSekSwmIEHD3OKgYIIKhhdSHG00ea2WLQtrjGHGMQ2Xqddq9vwkm1pnVlcCxYAd8BO
 e6l2LLswoa/EK2XcTreccplhSeu7/60H9RxpkiIpJTF9FmPzGLCKL28KL/NKYBSPqMvF
 y/dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FXsJNd5q6gyQSVEjEuTnLLXYzsPTKanmnHoHbci90to=;
 b=olJ1VVWwlaIGO9lSWv/tO5NHf2zQ7XwCcwV7EA5WU9zPydQA+yJ2sQO2ODnw4bVMVn
 /oArxNuDZk+27yliTtIIgmQfGjAjPfBR5qvtnbrRiiBhnRixBdr2Ka96AsHbsR7/q+jb
 ONa2xBciuXUZtZtAzFANWACu6SOlvKIbOMnOj8WB+cg+Gq42bltKFqoE4hPoEt9h+PCS
 r2Pfa5g/YIFHmUlOAaNPc1RSUC+mBmWp/y1oFbDcvs6JX4+k8yyxvKK5gurO2FwO2Red
 ztJ+XjMllEzRJIx5o45wUYvU8fdd/I7fmW9tBk7I6GSMVHqUqRUCLuPziEetpNeZdzaz
 D9tw==
X-Gm-Message-State: AOAM532So0HuBNsmAiHOsM92IHLbncZNGzFySc9xxJGnezgOrlSgEJiv
 7nY0gJTNl3Q4OgXOhWBsXWkEh0cW4Rpj23MUfCAxI6GJlWJcGFtzIA==
X-Google-Smtp-Source: ABdhPJyim1ZRMJz/pIsljW0kD122bfzVJYTOrh9QpF08WjmRXFBnCI46VAGTSpzjmNImiQhOTq9kuzMM+zOkucqGNN4=
X-Received: by 2002:a17:902:7b84:b0:13b:90a7:e270 with SMTP id
 w4-20020a1709027b8400b0013b90a7e270mr25414939pll.21.1635297852720; Tue, 26
 Oct 2021 18:24:12 -0700 (PDT)
MIME-Version: 1.0
References: <CACkBjsZ5cRX5t0wCr2MfjBp4=-Utn43MzZD4uEyzznvWuUz05A@mail.gmail.com>
In-Reply-To: <CACkBjsZ5cRX5t0wCr2MfjBp4=-Utn43MzZD4uEyzznvWuUz05A@mail.gmail.com>
From: Hao Sun <sunhao.th@gmail.com>
Date: Wed, 27 Oct 2021 09:23:59 +0800
Message-ID: <CACkBjsa6YhKgq0RjZiE1+32+fe+fn=oT=fC4rN+1MPznZL+bnA@mail.gmail.com>
To: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net
X-Headers-End: 1mfXoS-0005Nx-Ql
Subject: Re: [Jfs-discussion] UBSAN: shift-out-of-bounds in extAlloc
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi,

This bug can still be triggered repeatedly on the latest Linux.

HEAD commit: 519d81956ee2 Linux 5.15-rc6
git tree: upstream
console output:
kernel config: https://drive.google.com/file/d/12PUnxIM1EPBgW4ZJmI7WJBRaY1lA83an/view?usp=sharing
Syzlang reproducer:
https://drive.google.com/file/d/1658MoTb5EbxCtbsoI--hNQLab0HogUWf/view?usp=sharing

loop13: detected capacity change from 0 to 65534
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_extent.c:511:16
shift exponent -1 is negative
CPU: 2 PID: 31142 Comm: syz-executor Not tainted 5.15.0-rc6 #4
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
1.13.0-1ubuntu1.1 04/01/2014
Call Trace:
__dump_stack lib/dump_stack.c:88 [inline]
dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
ubsan_epilogue+0xb/0x5a lib/ubsan.c:151
__ubsan_handle_shift_out_of_bounds.cold+0x76/0x144 lib/ubsan.c:330
extBalloc fs/jfs/jfs_extent.c:511 [inline]
extAlloc.cold+0x1a/0x92 fs/jfs/jfs_extent.c:125
jfs_get_block+0x662/0xaa0 fs/jfs/inode.c:257
get_more_blocks fs/direct-io.c:673 [inline]
do_direct_IO fs/direct-io.c:959 [inline]
do_blockdev_direct_IO+0x129e/0x6ce0 fs/direct-io.c:1276
blockdev_direct_IO include/linux/fs.h:3272 [inline]
jfs_direct_IO+0x10a/0x2c0 fs/jfs/inode.c:342
generic_file_direct_write+0x1e3/0x4c0 mm/filemap.c:3672
__generic_file_write_iter+0x2d3/0x640 mm/filemap.c:3854
generic_file_write_iter+0xd7/0x220 mm/filemap.c:3929
call_write_iter include/linux/fs.h:2163 [inline]
do_iter_readv_writev+0x47b/0x750 fs/read_write.c:729
do_iter_write fs/read_write.c:855 [inline]
do_iter_write+0x18b/0x700 fs/read_write.c:836
vfs_iter_write+0x70/0xa0 fs/read_write.c:896
iter_file_splice_write+0x723/0xbf0 fs/splice.c:689
do_splice_from fs/splice.c:767 [inline]
direct_splice_actor+0x110/0x180 fs/splice.c:936
splice_direct_to_actor+0x34b/0x8c0 fs/splice.c:891
do_splice_direct+0x1b3/0x280 fs/splice.c:979
do_sendfile+0xab6/0x1240 fs/read_write.c:1249
__do_sys_sendfile64 fs/read_write.c:1314 [inline]
__se_sys_sendfile64 fs/read_write.c:1300 [inline]
__x64_sys_sendfile64+0x1cc/0x210 fs/read_write.c:1300
do_syscall_x64 arch/x86/entry/common.c:50 [inline]
do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7f8d8f6f5c4d
Code: 02 b8 ff ff ff ff c3 66 0f 1f 44 00 00 f3 0f 1e fa 48 89 f8 48
89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d
01 f0 ff ff 73 01 c3 48 c7 c1 bc ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f8d8cc5dc58 EFLAGS: 00000246 ORIG_RAX: 0000000000000028
RAX: ffffffffffffffda RBX: 00007f8d8f81c0a0 RCX: 00007f8d8f6f5c4d
RDX: 0000000000000000 RSI: 0000000000000009 RDI: 0000000000000007
RBP: 00007f8d8f76ed80 R08: 0000000000000000 R09: 0000000000000000
R10: 00008400fffffffb R11: 0000000000000246 R12: 00007f8d8f81c0a0
R13: 00007ffea1a878ff R14: 00007ffea1a87aa0 R15: 00007f8d8cc5ddc0
================================================================================


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
