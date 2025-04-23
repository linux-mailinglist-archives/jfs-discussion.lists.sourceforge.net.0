Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF0DA98CE9
	for <lists+jfs-discussion@lfdr.de>; Wed, 23 Apr 2025 16:24:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u7b12-0002M2-Rc;
	Wed, 23 Apr 2025 14:23:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <richard120310@gmail.com>) id 1u7PzT-0004lj-UG
 for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Apr 2025 02:37:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q0covPsBk60C+c98aMqlqjUhpT0cBbCDGGXnljyb2rE=; b=jAjadpmAq++5R5CDo4+eosR7oq
 XxzPSJ1CYardPoY383KSBd2zxZlDpvjMpjev+smm9fbiwYYeoD73ZmZWwRaQ9CXlOfAd0/ZJCE3dV
 C2Rv7SQhfbvaUYY/o7AQd9tNOdTHIaiE3kZP1CIqlQrHEQSKUryCf0cTh6d0kYd4zZ/Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q0covPsBk60C+c98aMqlqjUhpT0cBbCDGGXnljyb2rE=; b=iYarNoglWBybYvi5Vkdvp/Mvur
 +T9cX0Xqw8MBQYP1agF8iSS8rDuFbk2bG4L2nVHMDqMo7YTAYY4qCPWXdefCqmarIufrstd2ojzu3
 uM+P3+qogCNuuTKF2Vf/v/M31mOSsJHYPTJKYbx8C/Os8gn6xx7qCTr053w3Zim86C+U=;
Received: from mail-pl1-f176.google.com ([209.85.214.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7PzE-0005fM-7S for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Apr 2025 02:37:35 +0000
Received: by mail-pl1-f176.google.com with SMTP id
 d9443c01a7336-223f4c06e9fso5033445ad.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 22 Apr 2025 19:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1745375829; x=1745980629; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Q0covPsBk60C+c98aMqlqjUhpT0cBbCDGGXnljyb2rE=;
 b=Ipgkyq8oMDHbKeSjQSp3UuBnPKOBrY/nx03C115wMXT7qfABOih1YLFfNMY9KV0aqM
 JPD0/HzH0gCRxITJaqQQ0nHC86R6CZbUPzgz6h4QLGcm+CT3IxaoT4Yf0Dc91uBUA3zN
 cvFycYfGUifqxr1mnZ/fTHbDd/wqoPjWmBFzJqYzk9mT8jZsOYT6RS5BsZ8YHwLYncIK
 AcTCJyUEPD8aUUvVHCaozcymKJ8z8A7NU9iA48u8a30Aao2krUyzIzxTArl9lY5Kp53Q
 yBLt7QX9DII8I+lz9XEG8m0dZMq00yrexVLs0M/Q0V54FaRuwGbQ8j09vYkzI6zvFUy3
 gYUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745375829; x=1745980629;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Q0covPsBk60C+c98aMqlqjUhpT0cBbCDGGXnljyb2rE=;
 b=UObPY7IA/7gUBpEmzFF9bjMoDP3lUikj9w5CXJ0+mRe3Xnb+5yYoPWm8+wNvLFb+eT
 WAUGpXyAZlAVlREqqi/dOY47i3ISlj/gQt5Op7KmDAmNM+wYE0DN2p/6ksR1ihMYA6I2
 ZIDIfVWgPkBaKcd/iuCDVXgg0UG1SYJm0SxVps+MzD93Lx+jMBD4Cox1KqubQaJkQ6+h
 Av5hKNmWLr37lRdiQVOQPsUCYLVK3rdWQEWyY/LrX6YtWyJ45knC4xqG4Yf7ljLOmEAN
 BLnfNvfYSuRUdZracteM7ic4RqRl0ml1prH5ZPDZllO3JnxD64OZpPVOTq3Zt3JL8VU4
 h/Rg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXXoNtXuZZkGi+srykMSvVVyDAou0IdvM1CqE1bg1z+HS34T3DNZU6TP/k2pSOwB+n+X1sSYu0XB6IMJCAgDw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyrYXiyqMxfVenFOEttNGrB+Oh1ossGJdSdjcioujw1bqyaZ0jD
 EYI1gDgJN8aYXfVqkqHbA5m8NQwkcKRiC1w+4ObC5IS2s8V08ohA
X-Gm-Gg: ASbGnct8MGfSGnFpAQ4B5lciC2undJwDJ3f7kOYvmLxH6Ajde6saWIi1/HmUV44E4nz
 Lacowub24clNM2LKfbImyQ1VIqffoDwJ1Y/HVDvkGVyjdI/n/Wwi+2e71yd05EiATQEsK9KjNaE
 SJQ3/DCovg7fyUB24kG2Ht5IsPpPPaJzyzMiH9aU7DpDDSkFIFWUnB10IQvQItA0v3nVwoASEzO
 PD3ZDg/Ghb51UjoNEv0YM9mOGr8qaQtU3JmHLlppW9CULvwIAbmPP5aHX5pdtt2me/KBjnTWvsS
 svoj2b1Vr4iM5WWzdfGekioVvPRXJ6uuyP3UYNOG3JkHDPQ9xEAY9EaL/DCiFsbj6b+IEy8=
X-Google-Smtp-Source: AGHT+IGsvGP5RH8UNJyAmbvgKpNx3TEl7JMeLI+5MkobhhMwpUTlsPDqtk9r7R8FG/hRcWDmkSJmCw==
X-Received: by 2002:a17:903:1b6f:b0:215:9eac:1857 with SMTP id
 d9443c01a7336-22da317abf2mr19665905ad.5.1745375829230; 
 Tue, 22 Apr 2025 19:37:09 -0700 (PDT)
Received: from vaxr-ASUSPRO-D840MB-M840MB..
 ([2001:288:7001:2703:c11b:5090:296c:1c32])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-22c50fe0679sm92646925ad.249.2025.04.22.19.37.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Apr 2025 19:37:08 -0700 (PDT)
To: syzbot+de1498ff3a934ac5e8b4@syzkaller.appspotmail.com,
 viro@zeniv.linux.org.uk, brauner@kernel.org
Date: Wed, 23 Apr 2025 10:37:03 +0800
Message-ID: <20250423023703.632613-1-richard120310@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <66fcb7f9.050a0220.f28ec.04e8.GAE@google.com>
References: <66fcb7f9.050a0220.f28ec.04e8.GAE@google.com>
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When the folio doesn't have any buffers,
 "folio_buffers(folio)"
 will return NULL, causing "buffer_busy(bh)" to dereference a null pointer.
 Handle the case and jump to detach the folio if there's no bu [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.176 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.176 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.176 listed in bl.score.senderscore.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [richard120310[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard120310[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.176 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1u7PzE-0005fM-7S
X-Mailman-Approved-At: Wed, 23 Apr 2025 14:23:56 +0000
Subject: [Jfs-discussion] [RFC PATCH] fs/buffer: Handle non folio buffer
 case for drop_buffer()
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
From: I Hsin Cheng via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: I Hsin Cheng <richard120310@gmail.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, jack@suse.cz,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org, linux-fsdevel@vger.kernel.org,
 I Hsin Cheng <richard120310@gmail.com>, linux-kernel-mentees@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

When the folio doesn't have any buffers, "folio_buffers(folio)" will
return NULL, causing "buffer_busy(bh)" to dereference a null pointer.
Handle the case and jump to detach the folio if there's no buffer within
it.

Reported-by: syzbot+de1498ff3a934ac5e8b4@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=de1498ff3a934ac5e8b4
Fixes: 6439476311a64 ("fs: Convert drop_buffers() to use a folio")
Signed-off-by: I Hsin Cheng <richard120310@gmail.com>
---
syzbot reported a null pointer dereference issue. [1]

If the folio be sent into "drop_buffer()" doesn't have any buffers,
assigning "bh = head" will make "bh" to NULL, and the following
operation of cleaning the buffer will encounter null pointer
dereference.

I checked other use cases of "folio_buffers()", e.g. the one used in
"buffer_check_dirty_writeback()" [2]. They generally use the same
approach to check whether a folio_buffers() return NULL.

I'm not sure whether it's normal for a non-buffer folio to reach inside
"drop_buffers()", if it's not maybe we have to dig more into the problem
and find out where did the buffers of folio get freed or corrupted, let
me know if that's needed and what can I test to help. I'm new to fs
correct me if I'm wrong I'll be happy to learn, and know more about
what's the expected behavior or correct behavior for a folio, thanks !

[1]:
BUG: KASAN: null-ptr-deref in instrument_atomic_read include/linux/instrumented.h:68 [inline]
BUG: KASAN: null-ptr-deref in atomic_read include/linux/atomic/atomic-instrumented.h:32 [inline]
BUG: KASAN: null-ptr-deref in buffer_busy fs/buffer.c:2881 [inline]
BUG: KASAN: null-ptr-deref in drop_buffers+0x6f/0x710 fs/buffer.c:2893
Read of size 4 at addr 0000000000000060 by task kswapd0/74

CPU: 0 UID: 0 PID: 74 Comm: kswapd0 Not tainted 6.12.0-rc1-syzkaller-00031-ge32cde8d2bd7 #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 print_report+0xe8/0x550 mm/kasan/report.c:491
 kasan_report+0x143/0x180 mm/kasan/report.c:601
 kasan_check_range+0x282/0x290 mm/kasan/generic.c:189
 instrument_atomic_read include/linux/instrumented.h:68 [inline]
 atomic_read include/linux/atomic/atomic-instrumented.h:32 [inline]
 buffer_busy fs/buffer.c:2881 [inline]
 drop_buffers+0x6f/0x710 fs/buffer.c:2893
 try_to_free_buffers+0x295/0x5f0 fs/buffer.c:2947
 shrink_folio_list+0x240c/0x8cc0 mm/vmscan.c:1432
 evict_folios+0x549b/0x7b50 mm/vmscan.c:4583
 try_to_shrink_lruvec+0x9ab/0xbb0 mm/vmscan.c:4778
 shrink_one+0x3b9/0x850 mm/vmscan.c:4816
 shrink_many mm/vmscan.c:4879 [inline]
 lru_gen_shrink_node mm/vmscan.c:4957 [inline]
 shrink_node+0x3799/0x3de0 mm/vmscan.c:5937
 kswapd_shrink_node mm/vmscan.c:6765 [inline]
 balance_pgdat mm/vmscan.c:6957 [inline]
 kswapd+0x1ca3/0x3700 mm/vmscan.c:7226
 kthread+0x2f0/0x390 kernel/kthread.c:389
 ret_from_fork+0x4b/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>

[2]:https://elixir.bootlin.com/linux/v6.14.3/source/fs/buffer.c#L97

Best regards,
I Hsin Cheng
---
 fs/buffer.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/buffer.c b/fs/buffer.c
index cc8452f60251..29fd17f78265 100644
--- a/fs/buffer.c
+++ b/fs/buffer.c
@@ -2883,6 +2883,8 @@ drop_buffers(struct folio *folio, struct buffer_head **buffers_to_free)
 	struct buffer_head *head = folio_buffers(folio);
 	struct buffer_head *bh;
 
+	if (!head)
+		goto detach_folio;
 	bh = head;
 	do {
 		if (buffer_busy(bh))
@@ -2897,6 +2899,7 @@ drop_buffers(struct folio *folio, struct buffer_head **buffers_to_free)
 			__remove_assoc_queue(bh);
 		bh = next;
 	} while (bh != head);
+detach_folio:
 	*buffers_to_free = head;
 	folio_detach_private(folio);
 	return true;
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
