Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D254284D3
	for <lists+jfs-discussion@lfdr.de>; Mon, 11 Oct 2021 03:44:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mZkMf-0008GY-8u; Mon, 11 Oct 2021 01:44:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sunhao.th@gmail.com>) id 1mZkMe-0008GO-DY
 for jfs-discussion@lists.sourceforge.net; Mon, 11 Oct 2021 01:44:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XHhGuz+XprWcRZlX2mia8Y6kjwxUAUx+3iJusRDWyfg=; b=AJNoWMZ0UbpRIYSAm7OnGmFNz3
 5YCPweEkI3qfDrNgN3BB1oYE2E+8xLxM39pU5qsJobcaARc4bnOYko76IkgwB/t6N18QaoGtvguD0
 lV7qZKEXPA1BwrBceqZZ+0gM7qauL15WeboGdiWUMPWE4u2RhZe2BFxvQpNzBA+Uv/gU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XHhGuz+XprWcRZlX2mia8Y6kjwxUAUx+3iJusRDWyfg=; b=F
 8yELIpHiN9hl0xuaRM0OrWhn8sMe89Gaa1eVQOn9YokDNtV0QDyRVb3zlwRWTa4k2QGkTBjefzRDD
 QPUIoR1LQJjuXI5qadwTcMbLiEQEe7utYQA4YO+KVG0nIxcVGlc9HmsDT/cud/7Tandy5i8sCEKvS
 RsfTcINUiZfNZQfA=;
Received: from mail-pj1-f41.google.com ([209.85.216.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mZkMd-001YLP-Oy
 for jfs-discussion@lists.sourceforge.net; Mon, 11 Oct 2021 01:44:28 +0000
Received: by mail-pj1-f41.google.com with SMTP id k23so12086738pji.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 10 Oct 2021 18:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=XHhGuz+XprWcRZlX2mia8Y6kjwxUAUx+3iJusRDWyfg=;
 b=hac24URoTl5lw7ZUyU/t5U8m74C4Qni855om3yf4J2+QCP+OjmyC9KC3NAOR/XfPgo
 3QbeXH37eqpwShP5+7kZw1FtZn7hJ/R7EbtiAxQ/QpfIGGHnOrS9s9dk5AlymEJGrYBY
 JihGdkNsPF41x3i0U8xcry4OQWdYAnaWc2/d97GATppo+N2TeAzxPJiSZs1tcJDsCYgS
 8cFf/ZvxfEGWsyiD70Z19N5fbh1hr6zq5EZQlJOjBVfF7G2cg6yCRFRqDP6N2nz3tZAx
 FaC4vQOuAa1ZtD/Q/bKBGK2PkL/q8d205AfFK/JyxUVIagBXgdIVwSa6CX9WT3EORx7Y
 IwGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=XHhGuz+XprWcRZlX2mia8Y6kjwxUAUx+3iJusRDWyfg=;
 b=IxD3/UjT55SA060fquK7FOm0shScAJkrLlMHH4gBNNDjGqb/WLPhCmpxlU1nLKsNYg
 YArZiuv3ILfRiUmwBg3e8rt6H1tne4XSpep1Pll0bPK6A3jgOh8R8VISSb2b623X1Gle
 JtINnYsWTfARi8snh7k0Sk4xXtG2K58B0zX9A+wk2aAs4JHH7lrjvozJFBii99W3RlTI
 VenN3dxiqt6xtgkf4EDg7yJiVwwtTKv7UkpLFTRJYT5tSKq8BY32eoIfRmD2x5hYZqpi
 qlt/mGha0EEhM+fypa/vmgZkRmVsjzA0rXKMFRjHA8T3K3V53NXcmF0gYXY2RIa+7fST
 XHkA==
X-Gm-Message-State: AOAM5331TJXpwHjJEd0jxprFnBXDHurC6be0Q4MVHIvSanWFFRaoh5Lf
 DO05o9SMcDZy8c4Z5CfvrS7XsbQMRzL4erGSdg==
X-Google-Smtp-Source: ABdhPJwoPyl/vws4WDbd76yyRcCCa83VSVOCjTGZp7jj2tOM8W7CVSREIu5ltxZoYLWBrgK0LhlMMdoZ/FID64aRiYI=
X-Received: by 2002:a17:902:7b84:b0:13b:90a7:e270 with SMTP id
 w4-20020a1709027b8400b0013b90a7e270mr21910103pll.21.1633916661767; Sun, 10
 Oct 2021 18:44:21 -0700 (PDT)
MIME-Version: 1.0
From: Hao Sun <sunhao.th@gmail.com>
Date: Mon, 11 Oct 2021 09:44:11 +0800
Message-ID: <CACkBjsZ5cRX5t0wCr2MfjBp4=-Utn43MzZD4uEyzznvWuUz05A@mail.gmail.com>
To: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, When using Healer to fuzz the latest Linux kernel,
 the following crash was triggered. HEAD commit: 60a9483534ed Merge tag
 'warning-fixes-20211005' git tree: upstream console output:
 https://drive.google.com/file/d/1IM13hIeSrriEEkaACcmQaVYfOJ85xKZQ/view?usp=sharing
 kernel config: https: [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.41 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sunhao.th[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.41 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mZkMd-001YLP-Oy
Subject: [Jfs-discussion] UBSAN: shift-out-of-bounds in extAlloc
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

Hello,

When using Healer to fuzz the latest Linux kernel, the following crash
was triggered.

HEAD commit: 60a9483534ed Merge tag 'warning-fixes-20211005'
git tree: upstream
console output:
https://drive.google.com/file/d/1IM13hIeSrriEEkaACcmQaVYfOJ85xKZQ/view?usp=sharing
kernel config: https://drive.google.com/file/d/1u-ncYGLkq3xqdlNQYJz8-G6Fhf3H-moP/view?usp=sharing

Sorry, I don't have a reproducer for this crash, hope the symbolized
report can help.
If you fix this issue, please add the following tag to the commit:
Reported-by: Hao Sun <sunhao.th@gmail.com>

loop9: detected capacity change from 0 to 65534
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_extent.c:511:16
shift exponent -1 is negative
CPU: 0 PID: 12367 Comm: syz-executor Not tainted 5.15.0-rc4+ #22
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
rel-1.12.0-59-gc9ba5276e321-prebuilt.qemu.org 04/01/2014
Call Trace:
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x8d/0xcf lib/dump_stack.c:106
 ubsan_epilogue+0xa/0x4e lib/ubsan.c:151
 __ubsan_handle_shift_out_of_bounds+0x161/0x182 lib/ubsan.c:330
 extBalloc fs/jfs/jfs_extent.c:511 [inline]
 extAlloc+0x699/0x6c0 fs/jfs/jfs_extent.c:125
 jfs_get_block+0x290/0x3f0 fs/jfs/inode.c:257
 nobh_write_begin+0x29d/0x990 fs/buffer.c:2648
 jfs_write_begin+0x37/0x80 fs/jfs/inode.c:321
 generic_perform_write+0xce/0x220 mm/filemap.c:3770
 __generic_file_write_iter+0x20d/0x240 mm/filemap.c:3897
 generic_file_write_iter+0x6d/0xd0 mm/filemap.c:3929
 call_write_iter include/linux/fs.h:2163 [inline]
 new_sync_write+0x18d/0x260 fs/read_write.c:507
 vfs_write+0x43b/0x4a0 fs/read_write.c:594
 ksys_write+0xd2/0x120 fs/read_write.c:647
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x34/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x46ae99
Code: f7 d8 64 89 02 b8 ff ff ff ff c3 66 0f 1f 44 00 00 48 89 f8 48
89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d
01 f0 ff ff 73 01 c3 48 c7 c1 bc ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f58ac19fc48 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
RAX: ffffffffffffffda RBX: 000000000078c0a0 RCX: 000000000046ae99
RDX: 00000000ffffff6a RSI: 0000000020043440 RDI: 000000000000000a
RBP: 00000000004e4809 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 000000000078c0a0
R13: 0000000000000000 R14: 000000000078c0a0 R15: 00007ffdbff36e60
================================================================================


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
