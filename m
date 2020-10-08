Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B7A287A7D
	for <lists+jfs-discussion@lfdr.de>; Thu,  8 Oct 2020 19:02:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kQZIT-0004E6-ML; Thu, 08 Oct 2020 17:01:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <butterflyhuangxx@gmail.com>) id 1kQZHB-0004BA-Tj
 for jfs-discussion@lists.sourceforge.net; Thu, 08 Oct 2020 17:00:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ElqjDD+KuSdGx1ZK3dS8OR8m+3CotQHbgBgwVvlOLiU=; b=ZTiSNiMeU8ElwCMDIG51izKd4K
 5B1qQIobx1IKE/Sae9wKsLCNmgxltJdqKO7SBWHAXW65MLILzX5AxBZlIWAr+H13cg3BROPVh/Ni5
 2OYkakVZwDQUwlKgIxK88PqU6g169CrXCbmc1pPD7vLP/Ar82H6JNBWc+8FbKe1ldrEg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ElqjDD+KuSdGx1ZK3dS8OR8m+3CotQHbgBgwVvlOLiU=; b=I
 uSioM+4iYyTrWVNq9zhE55scyrboL47F3HcHm4dQ9FjLIYW8DJxlKOQPDTUACKV+vwBMqnn49Wagn
 FyUv9NiptJsEbMdGH0zBeUdUIm2VmSLX1UxeVD5tLNhLGlOWyqx2fWvm48TE/iQN/mEaMiMtJQ+nJ
 X4rmkjps35Re5ym4=;
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kQZH9-007Q6h-AV
 for jfs-discussion@lists.sourceforge.net; Thu, 08 Oct 2020 17:00:21 +0000
Received: by mail-lj1-f196.google.com with SMTP id p15so6527340ljj.8
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 08 Oct 2020 10:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=ElqjDD+KuSdGx1ZK3dS8OR8m+3CotQHbgBgwVvlOLiU=;
 b=dhTeWjKmujAAhykiIuX27hxN9iWQeMDHquo4hW7adR8EdZq5nHusM6Y6TsuZZOKmjv
 lZeZXW+8FTAYNVg4S0KlX2XXHMSjXTuk/THx3u7JQfBf+vhqfCDHBW6cYtkpjf6Vakfw
 FhO6zUlpe9aNpVFB5n7SZktHztSlSaVN3NFFCTQ+wL81Qop1UNqJX7I2W+JmrgxK/LuW
 cZt3vWsq6uNe4x4iIzf3kIy73z/W3PRqvs6Pxp7xM0OHf/5+a09QVEzGoasdpWeBXUrv
 O0wuuQZffijfMYDRyKP0S/0p8kMuivkGvMVQ4GSRjc5fEC/ieqflDrhU0ajnZstIMTq4
 S63Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=ElqjDD+KuSdGx1ZK3dS8OR8m+3CotQHbgBgwVvlOLiU=;
 b=LB8PJMgqyLl3Dl+VnXTkMd2YsJFbuV37K+0Gijv1ID0y5QsMVx4qkxLdHPW0uE/OMU
 sC8TOE8IZC4UmR14jvK6LT2M55ifd32ZkuwfMTmspEGx8yH2EDN6oc4wKoC6STPBiC7V
 Np8ZvXe6xFxQqSVveoJOMko/lcWC0aHyKOCYJ7dj4b9HQxWlv4dBMR51bSBpd35p2U21
 NutEsyTMdGw8QTVn+h1+N1ZcgKP/HpLcMixq/TQ+RYekz6cCXmAYc65SymxToLs5z0DJ
 dZEDgFDK7p5S69eOepLJNjuURYsJUNBT8x1l8FgGmFQxpLUfcZ2AKjVSHY5SbBM0XHSL
 PuAg==
X-Gm-Message-State: AOAM5315f4QNN/6eHjT5T1O2AfTZhokp1eaeIngCupjqmgKz10+OqUoV
 Wy3TZGZaBmRF0IzPO4JfNZotc2kjg0UXanyNsFed8fr8NSU=
X-Google-Smtp-Source: ABdhPJwFQUPuMMnbWXVo5ViqQN+uqCnWqG+awPLCPF3SixH5chtCTo+rjAz3OMJDw9yZNpkTwqpJovhk+fkNLQe1Huc=
X-Received: by 2002:a2e:7213:: with SMTP id n19mr3569218ljc.326.1602176412731; 
 Thu, 08 Oct 2020 10:00:12 -0700 (PDT)
MIME-Version: 1.0
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Fri, 9 Oct 2020 01:00:03 +0800
Message-ID: <CAFcO6XN=cd=_K_2AY9OL7f+HWsazY-nJ81Ufrw4azvkjj-Mpng@mail.gmail.com>
To: shaggy@kernel.org
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (butterflyhuangxx[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kQZH9-007Q6h-AV
X-Mailman-Approved-At: Thu, 08 Oct 2020 17:01:40 +0000
Subject: [Jfs-discussion] UBSAN: array-index-out-of-bounds in dbAdjTree
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
Cc: jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

I report a array-index-out-of-bounds bug (in linux-5.9.0-rc6) found by
kernel fuzz.

kernel config: https://github.com/butterflyhack/syzkaller-fuzz/blob/master/v5.9.0-rc6-config

and can reproduce.

the dmtree_t is that
typedef union dmtree {
struct dmaptree t1;
struct dmapctl t2;
} dmtree_t;

the dmaptree is that
struct dmaptree {
__le32 nleafs; /* 4: number of tree leafs */
__le32 l2nleafs; /* 4: l2 number of tree leafs */
__le32 leafidx; /* 4: index of first tree leaf */
__le32 height; /* 4: height of the tree */
s8 budmin; /* 1: min l2 tree leaf value to combine */
s8 stree[TREESIZE]; /* TREESIZE: tree */
u8 pad[2]; /* 2: pad to word boundary */
};
the TREESIZE is totally 341, but the leafidx type is __le32.

the crash log is asblow:

================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:2897:19
index 341 is out of range for type 's8 [341]'
CPU: 1 PID: 10535 Comm: syz-executor.3 Not tainted 5.9.0-rc6+ #15
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
1.10.2-1ubuntu1 04/01/2014
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x198/0x1fd lib/dump_stack.c:118
 ubsan_epilogue+0xb/0x5a lib/ubsan.c:148
 __ubsan_handle_out_of_bounds.cold+0x62/0x6c lib/ubsan.c:356
 dbAdjTree+0x34c/0x360 fs/jfs/jfs_dmap.c:2897
 dbAdjCtl+0x2a3/0x830 fs/jfs/jfs_dmap.c:2556
 dbAllocDmap+0xb7/0x110 fs/jfs/jfs_dmap.c:2069
 dbAllocNext+0x35b/0x420 fs/jfs/jfs_dmap.c:1212
 dbAlloc+0x357/0xb60 fs/jfs/jfs_dmap.c:778
 ea_get+0xa54/0x11a0 fs/jfs/xattr.c:514
 __jfs_setxattr+0x1b0/0xfa0 fs/jfs/xattr.c:718
 __jfs_xattr_set+0xc9/0x150 fs/jfs/xattr.c:917
 __vfs_setxattr+0x10e/0x170 fs/xattr.c:177
 __vfs_setxattr_noperm+0x11a/0x4c0 fs/xattr.c:208
 __vfs_setxattr_locked+0x1bf/0x250 fs/xattr.c:266
 vfs_setxattr+0xe5/0x270 fs/xattr.c:283
 setxattr+0x23d/0x330 fs/xattr.c:548
 path_setxattr+0x170/0x190 fs/xattr.c:567
 __do_sys_setxattr fs/xattr.c:582 [inline]
 __se_sys_setxattr fs/xattr.c:578 [inline]
 __x64_sys_setxattr+0xc0/0x160 fs/xattr.c:578
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x4693c9
Code: f7 d8 64 89 02 b8 ff ff ff ff c3 66 0f 1f 44 00 00 48 89 f8 48
89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d
01 f0 ff ff 73 01 c3 48 c7 c1 bc ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fe67df97c58 EFLAGS: 00000246 ORIG_RAX: 00000000000000bc
RAX: ffffffffffffffda RBX: 0000000000739140 RCX: 00000000004693c9
RDX: 00000000200003c0 RSI: 0000000020000100 RDI: 0000000020000140
RBP: 00000000004c291b R08: 0000000000000000 R09: 0000000000000000
R10: 00000000000000c1 R11: 0000000000000246 R12: 000000000076cf20
R13: 0000000000000000 R14: 000000000076cf20 R15: 00007ffc7d66ec90
================================================================================

Regard,
 butt3rflyh4ck.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
