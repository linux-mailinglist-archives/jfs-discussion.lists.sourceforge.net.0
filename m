Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 191197C8D89
	for <lists+jfs-discussion@lfdr.de>; Fri, 13 Oct 2023 21:11:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qrNYh-0002s4-FU;
	Fri, 13 Oct 2023 19:10:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <osmtendev@gmail.com>) id 1qrNYf-0002rx-Vn
 for jfs-discussion@lists.sourceforge.net;
 Fri, 13 Oct 2023 19:10:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2lMbyNAYDyItK0nqbzPA6HNTwdTNDqzEz2uTLeRsQrI=; b=WvyzxBqR/yLF++VYTL1AdyF/wK
 B7st5ymcuxS9jQxKnaV3CC2ED0Eix9mJ063w8hJo8V15VFlaTV2lqRgTwT10+30x9yDZ0ygI9y008
 3zY/TYvEMvFwAgJz2N3ejdb8Dvlulh0/Fxnpqx/4gLgHdT0tgK2AmySGuGH4KntnhgH0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2lMbyNAYDyItK0nqbzPA6HNTwdTNDqzEz2uTLeRsQrI=; b=Q
 Fzco1w0YrXtEEpo6uqCHo6kMGqd1E3Y2M0FqcFqkkafzzQP7OitR0JB3kr4HA9T84Y7ulXOC5m85P
 PSvs8CSjkfzFEYFl3h5yFt+WuETBDBmO70Iav9iueYB0nVK5fAEIiKAJZBwHG2EcJ93jwmMsFT5TP
 QBdHoW/Ulsebg+kQ=;
Received: from mail-pl1-f177.google.com ([209.85.214.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qrNYe-0001XR-Jl for jfs-discussion@lists.sourceforge.net;
 Fri, 13 Oct 2023 19:10:50 +0000
Received: by mail-pl1-f177.google.com with SMTP id
 d9443c01a7336-1c9c5a1b87bso19708565ad.3
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 13 Oct 2023 12:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697224243; x=1697829043; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=2lMbyNAYDyItK0nqbzPA6HNTwdTNDqzEz2uTLeRsQrI=;
 b=XZg2C9rrWSr/KetFncph8dmNZxc5edeIQpZ6HHwPkZU+ol0yosaV22OFi01khZkgWl
 ZgvXYjUk8W21MDkuw0NHtZj2/s7TU+PfTwQM4/hfCxRaN+BLpBFqH2LA2WYpx/EsPJEz
 O9N5ABBNLcckIgfuR3Ljb4pwMUDceQfR70zCpi9br7UsKP1eLCYvj1Y6bRTjCCIwXdd6
 +jI/8MB0Z7lpey+pg/eV5d+lFHwWoM0iOryC6AwYyc1j7uzmEZk6x2Flz6NZTotIptSI
 2f9TaXyX2mctdq3YYFJwMPdIoj3Hy9st3cqo0fJc8aN+08wHWQiVcpN3W021U58rG1D0
 NF1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697224243; x=1697829043;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=2lMbyNAYDyItK0nqbzPA6HNTwdTNDqzEz2uTLeRsQrI=;
 b=GZdACNuv+WAXE4Y1favpeI5meE8yk5Nrz5fbfRM3+dLo9sivi9to09cpfV6EU+hLYs
 jUug1Zr3jMKjiFiHr1uAlmsC8lJHvmnzA4yGomTFbUoh5HwT0F8seVqaGpEj3c03cA33
 ox0YJfY6/8gMOL9t0FJLkTfCDmLx2rBimsWBZNwIAMCGJf+BhxaKYzx70ZWUUM44P5yA
 eczgZ7N6XX7M2f2YUUT5pcb6naM2RYG3Nx46jLeMbO+hznO/nZ36HKnu/Q1zPJ6DlSXy
 PzM0lAkOP04pnniRg0ws1eIstKV+LdkFby8EDyugYHS1R3/xPrTY1P6KXWP6LwIL5uGR
 z8LQ==
X-Gm-Message-State: AOJu0Yx03TqbUIsjqSMJYxh+FZgmnpFOu1XdM7yf9TCRpqmxJjCSNv3A
 K3bkexdmFK0sTdhISL4gZyhkLe3gZ8tSDg==
X-Google-Smtp-Source: AGHT+IGR5R3Mo7tCTO13z/WFyagYGpxOx00S+5AcFWEHcqXQ8qUvXx8ZVSyfRWSdPerKX274Ep4ROA==
X-Received: by 2002:a17:903:25c3:b0:1c9:bca1:d70b with SMTP id
 jc3-20020a17090325c300b001c9bca1d70bmr10578679plb.39.1697224242709; 
 Fri, 13 Oct 2023 12:10:42 -0700 (PDT)
Received: from Osmten.. ([103.84.150.77]) by smtp.gmail.com with ESMTPSA id
 b11-20020a170902d50b00b001c60a2b5c61sm4232901plg.134.2023.10.13.12.10.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Oct 2023 12:10:42 -0700 (PDT)
To: shaggy@kernel.org
Date: Sat, 14 Oct 2023 00:10:28 +0500
Message-Id: <20231013191028.17382-1-osmtendev@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Syzkaller reported the following issue: oop0: detected
 capacity
 change from 0 to 32768 UBSAN: array-index-out-of-bounds in
 fs/jfs/jfs_dtree.c:1971:9
 index -2 is out of range for type 'struct dtslot [128]' CPU: 0 PID: 3613
 Comm: syz-executor270 Not tainted 6.0.0-syzkaller-09423-g493ffd66 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [osmtendev[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.177 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.177 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qrNYe-0001XR-Jl
Subject: [Jfs-discussion] [PATCH] UBSAN: array-index-out-of-bounds in
 dtSplitRoot
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
From: Osama Muhammad via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Osama Muhammad <osmtendev@gmail.com>
Cc: Osama Muhammad <osmtendev@gmail.com>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org,
 syzbot+d4b1df2e9d4ded6488ec@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Syzkaller reported the following issue:

oop0: detected capacity change from 0 to 32768

UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dtree.c:1971:9
index -2 is out of range for type 'struct dtslot [128]'
CPU: 0 PID: 3613 Comm: syz-executor270 Not tainted 6.0.0-syzkaller-09423-g493ffd6605b2 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_out_of_bounds+0xdb/0x130 lib/ubsan.c:283
 dtSplitRoot+0x8d8/0x1900 fs/jfs/jfs_dtree.c:1971
 dtSplitUp fs/jfs/jfs_dtree.c:985 [inline]
 dtInsert+0x1189/0x6b80 fs/jfs/jfs_dtree.c:863
 jfs_mkdir+0x757/0xb00 fs/jfs/namei.c:270
 vfs_mkdir+0x3b3/0x590 fs/namei.c:4013
 do_mkdirat+0x279/0x550 fs/namei.c:4038
 __do_sys_mkdirat fs/namei.c:4053 [inline]
 __se_sys_mkdirat fs/namei.c:4051 [inline]
 __x64_sys_mkdirat+0x85/0x90 fs/namei.c:4051
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fcdc0113fd9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffeb8bc67d8 EFLAGS: 00000246 ORIG_RAX: 0000000000000102
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007fcdc0113fd9
RDX: 0000000000000000 RSI: 0000000020000340 RDI: 0000000000000003
RBP: 00007fcdc00d37a0 R08: 0000000000000000 R09: 00007fcdc00d37a0
R10: 00005555559a72c0 R11: 0000000000000246 R12: 00000000f8008000
R13: 0000000000000000 R14: 00083878000000f8 R15: 0000000000000000
 </TASK>

The issue is caused when the value of fsi becomes less than -1.
The check to break the loop when fsi value becomes -1 is present
but syzbot was able to produce value less than -1 which cause the error.
This patch simply add the change for the values less than 0.

The patch is tested via syzbot.

Reported-and-tested-by: syzbot+d4b1df2e9d4ded6488ec@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?extid=d4b1df2e9d4ded6488ec
Signed-off-by: Osama Muhammad <osmtendev@gmail.com>
---
 fs/jfs/jfs_dtree.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 92b7c533407c..f3d3e8b3f50c 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -1970,7 +1970,7 @@ static int dtSplitRoot(tid_t tid,
 		do {
 			f = &rp->slot[fsi];
 			fsi = f->next;
-		} while (fsi != -1);
+		} while (fsi >= 0);
 
 		f->next = n;
 	}
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
