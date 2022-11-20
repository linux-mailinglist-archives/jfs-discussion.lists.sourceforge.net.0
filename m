Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B336314B7
	for <lists+jfs-discussion@lfdr.de>; Sun, 20 Nov 2022 15:59:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1owlmt-0004YX-2N;
	Sun, 20 Nov 2022 14:59:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wuhoipok@gmail.com>) id 1owlmr-0004YI-Aw
 for jfs-discussion@lists.sourceforge.net;
 Sun, 20 Nov 2022 14:59:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HWEkAKWEbQTLwuPXrEgeQIA4hCG5DE0c8Yygn8Mx6kI=; b=Tw1r6kt08aiX0U2p8UXKrS0nZZ
 4UxciwTAZsn2kFlwgKNSUNn1HVyvGXCH3LIect+6WvIL3zDNqpmE95I5w1e84qrQ44nA+hgP6ZmW4
 RS372Wp78S+9lCDiKv2xsWY46+D1Su9pQWFc+2gaG3ifOF3eQXWOVS+roBoNoDnAaZM8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HWEkAKWEbQTLwuPXrEgeQIA4hCG5DE0c8Yygn8Mx6kI=; b=T
 EBgieULpXQfRn2Is/C1vcfNeZ7MK03tGNKmlrUnO5hb+5daAIRBYnXkb6mvWkb0MiWQWcZhr7VbQV
 qMaDVe7m00v+SGm3qsuAu7UVO1giOz39b2kQyUsgqt4JM9XidhJ03USWKaCQS7XaVJ1KFuPhatJNj
 ZWG0EesWGYzBDLLQ=;
Received: from mail-pj1-f49.google.com ([209.85.216.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1owlml-0007qz-T0 for jfs-discussion@lists.sourceforge.net;
 Sun, 20 Nov 2022 14:59:11 +0000
Received: by mail-pj1-f49.google.com with SMTP id
 v4-20020a17090a088400b00212cb0ed97eso9146042pjc.5
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 20 Nov 2022 06:59:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=HWEkAKWEbQTLwuPXrEgeQIA4hCG5DE0c8Yygn8Mx6kI=;
 b=kL+cvROStnsz9QbMygqACqZwOBMmeJioyT6Ry3JvcFQWIO/qklUK5FYwVbpf3BtOM6
 o7Bq6tRfxoK3SI2YR18aNKjVsgQmAgPUZme6JTbMYLTkyBzsBu/AXYcRdLN0uq0g7pW1
 AV08adtl4xXFfzgM2ZuuAD2BLlhoverB2us40/PRs9pUui+ZBR3cQEmVp6+RKnGpW1E4
 coP/oK8m9xkwskmST4Cg8qsvW4cDs6+xoNXAs8c+pxw0f6EoF3USK8uJWq19RkgpH3Cz
 5t5M113SjZ/PrSwHc48cwOPZd0rj9k09yykkplLARXCBM2MfWWXrBYIpD1JUtepIgX1A
 Do+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=HWEkAKWEbQTLwuPXrEgeQIA4hCG5DE0c8Yygn8Mx6kI=;
 b=Odf7ADOcSd/SZ8vtMqeGJ4PW60L04NzgugjcsD7lpWnRafG3QdWQ0gf9fU1xFIywLR
 t7vbrvJFgT8TQYxlWVbkuF6WK/7EYzW65X2WoGp8nBpvLtJg/n/fvhs0H69RlfqDRksd
 scQZc+6jM5CwEPGqZOfJiGBQqlH++tf4kKdnTiqL9Q9vSgmPa2VB/FPtPhSKJ2gC0czv
 UjvQSwAGEIIzQAwAfGNvesd5A4CuX8ptg46JUrUsQ5ik1ulpCniFCvtOREyp+c4hXm/O
 8Pt/hTwMwOlRAZ1DsCoZR81fP7qDARb4IETnCiYA7viOO+n6g7LPrdymTZTNB41uu4tS
 2lOg==
X-Gm-Message-State: ANoB5plbYmUUJuM2zlh+/6tnpcYkrQfWL57902qDFGPP3rJC3TPjRK/G
 U0G58gZgGbkWbBXioMgZI5g=
X-Google-Smtp-Source: AA0mqf4fHMaeM8KyrYO7PCcoyNhpdR4LUjeRDjbP3+LEH9koxyuDYLAQfXMMzavbv/1NOvC1lNJ1Sg==
X-Received: by 2002:a17:90a:2b8c:b0:212:f4f1:96ee with SMTP id
 u12-20020a17090a2b8c00b00212f4f196eemr23160378pjd.72.1668956342326; 
 Sun, 20 Nov 2022 06:59:02 -0800 (PST)
Received: from localhost.localdomain (124244014158.ctinets.com.
 [124.244.14.158]) by smtp.gmail.com with ESMTPSA id
 gq18-20020a17090b105200b0021864cf062dsm6177013pjb.21.2022.11.20.06.59.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Nov 2022 06:59:01 -0800 (PST)
From: Hoi Pok Wu <wuhoipok@gmail.com>
To: shaggy@kernel.org
Date: Sun, 20 Nov 2022 22:58:02 +0800
Message-Id: <20221120145802.86777-1-wuhoipok@gmail.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The reason for the following undefined behaviour is the
 shifting
 is larger than the amounts of bit of 's64'. Given that the shifting is the
 only use case of the variable im_l2nbperiext, I wonder if it [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wuhoipok[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.49 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1owlml-0007qz-T0
Subject: [Jfs-discussion] [PATCH] fs: jfs: fix UBSAN in jfs_statfs
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
Cc: jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org,
 syzbot+3424c9550a49659f1704@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The reason for the following undefined behaviour is the shifting is
larger than the amounts of bit of 's64'. Given that the shifting is the
only use case of the variable im_l2nbperiext, I wonder if it is a good
idea to guard the value thus it is smaller than 64.

I am not sure the actual meaning of the variable, so there maybe better
ways. Still, I would send this patch as a suggestion. Thank you.

loop0: detected capacity change from 0 to 32768
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/super.c:140:14
shift exponent 1749508610 is too large for 64-bit type 's64' (aka 'long long')
CPU: 0 PID: 3634 Comm: syz-executor222 Not tainted 6.1.0-rc5-syzkaller-00241-gab290eaddc4c #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_shift_out_of_bounds+0x33d/0x3b0 lib/ubsan.c:322
 jfs_statfs+0x503/0x510 fs/jfs/super.c:140
 statfs_by_dentry fs/statfs.c:66 [inline]
 vfs_statfs+0x136/0x310 fs/statfs.c:90
 user_statfs fs/statfs.c:105 [inline]
 __do_sys_statfs fs/statfs.c:195 [inline]
 __se_sys_statfs fs/statfs.c:192 [inline]
 __x64_sys_statfs+0x120/0x230 fs/statfs.c:192
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f0501ab8f79
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffffd945308 EFLAGS: 00000246 ORIG_RAX: 0000000000000089
RAX: ffffffffffffffda RBX: 0030656c69662f2e RCX: 00007f0501ab8f79
RDX: 00007f0501a77473 RSI: 0000000000000000 RDI: 0000000020004c80
RBP: 00007f0501a78740 R08: 0000555555fe32c0 R09: 0000000000000000
R10: 00007ffffd9451d0 R11: 0000000000000246 R12: 0a0a0a0a0a0a0a0a
R13: 0000000000000000 R14: 00083878000000f8 R15: 0000000000000000
 </TASK>
================================================================================

Reported-by: syzbot+3424c9550a49659f1704@syzkaller.appspotmail.com
Signed-off-by: Hoi Pok Wu <wuhoipok@gmail.com>
---
 fs/jfs/jfs_imap.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 390cbfce391f..093f2ecd92ac 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -124,6 +124,13 @@ int diMount(struct inode *ipimap)
 	atomic_set(&imap->im_numfree, le32_to_cpu(dinom_le->in_numfree));
 	imap->im_nbperiext = le32_to_cpu(dinom_le->in_nbperiext);
 	imap->im_l2nbperiext = le32_to_cpu(dinom_le->in_l2nbperiext);
+
+	/* 63 is the maximum shift amounts for type s64 */
+	if (imap->im_l2nbperiext >= 64) {
+		release_metapage(mp);
+		return -EINVAL;
+	}
+
 	for (index = 0; index < MAXAG; index++) {
 		imap->im_agctl[index].inofree =
 		    le32_to_cpu(dinom_le->in_agctl[index].inofree);
-- 
2.38.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
