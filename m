Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 799E181A782
	for <lists+jfs-discussion@lfdr.de>; Wed, 20 Dec 2023 21:13:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rG2w4-0002dR-DC;
	Wed, 20 Dec 2023 20:12:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <haokexin@gmail.com>) id 1rF66I-0006uW-W3
 for jfs-discussion@lists.sourceforge.net;
 Mon, 18 Dec 2023 05:23:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0drJHYYDD5E7qsYsj8DpMF7783xVm2/8gXDSMs30oH4=; b=RWa130CNNhnXtqHape8uoy8FE4
 tV4GP2dAFE4f8eeU+8MbsYggssOjLO5+HJlaqFe9/gNKDEK/V7NeT71EnoJQHiDsepJuStoOrgcJG
 rN849+b9qYK35UEIOYW6IXHmT3YZm/WMRxk3U3pQ7OcT0B1jhwZeUXcMkQXPAqU8/HVs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0drJHYYDD5E7qsYsj8DpMF7783xVm2/8gXDSMs30oH4=; b=N
 EW5sZcyHvMIGznZlOtBzRCYOxnXXA/twQ5e1deoHKDzCD8nLX+WaEBOFW/7A8tpGN/ud8wyETfzx2
 i5c0JArQM3f8wSLOFhqjSYB1AEiiihgToehX8GMa+SJjWPzp+jKC0QsKx5YL+c/8ZDaKRNAljX4Oo
 pdvE9e0fFRHIejQI=;
Received: from mail-pj1-f44.google.com ([209.85.216.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rF66I-0004oS-Vv for jfs-discussion@lists.sourceforge.net;
 Mon, 18 Dec 2023 05:23:35 +0000
Received: by mail-pj1-f44.google.com with SMTP id
 98e67ed59e1d1-28abca51775so877826a91.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 17 Dec 2023 21:23:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1702877009; x=1703481809; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=0drJHYYDD5E7qsYsj8DpMF7783xVm2/8gXDSMs30oH4=;
 b=lAl+frXbJPh/qkmuJj8i1ntOLWxAxK0BRYuqM7+y7yzK8AvCBawhrDtzBj54ZWniAa
 eJIO+gm4l3/J4CTXnH+s5NHgKYIXPESVcDcL+okD7jnpFS+UScCrP8BvBUSM8ipVHUxa
 G2vZnbrOUzCVdjQN2BFzj/8GNd+uwimOpZbcLUbyd1j9mjQu6e3HIl7RuuwB+l+n3SzW
 SnRfkf2fCHpz5DGeMdoMrta6FReLGjHqQzFXqX4ggU6qivagGmfwuEnBwCRu1gtvHRrx
 KO0lC8Ns9Thr7TQugY9pgc3ihIJDN/reHBeXAdFhZe7Rg2c9M/JDbI5x6yPPFd+J2uyn
 m3gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702877009; x=1703481809;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=0drJHYYDD5E7qsYsj8DpMF7783xVm2/8gXDSMs30oH4=;
 b=Sl7Szvp5hEU1F7pu+joWarZ4zC/MTRn0hHRe0ONeJTghiFPW8tfDOoMT+7Ki0zboCq
 P9fYY+ikbPCV48tyUfFjShclpvRrlCgyzOyTHj8c+/C2Tt8KeZUkHIJlOLARR32egPoh
 zu66MF6NM4J8CeDTazpeK2WsioiNiLtITpffjLbObyQErsr8wXp8oHVDkQ7vPD8caUw/
 7JYSiZ67Phg9VBbTeaxd/6vH3dlHTgWEXce28OF3+7zvPzKS6IA2k2ECl9saY+g0q4xE
 jAzvpw8uewyTxb889/giVx7onlJEhUT2BPBVlg14F/AT1W8yY3pf0SLywmJrWMWyqWwo
 rpWg==
X-Gm-Message-State: AOJu0YxIHJnxhtvs/UvkWBFm1bQQOouBJygOgN1vCRugQeShi/EtgMhu
 I+d04yM8d4H66RpLTNBVQsU=
X-Google-Smtp-Source: AGHT+IF67mJy/ao9ConSgLvzrfp47KcSGux8F41muhQdwTZ6xSouRYqHhG1VQYxMW8ibRU11yXiIng==
X-Received: by 2002:a17:90a:f2d3:b0:28b:43e6:e601 with SMTP id
 gt19-20020a17090af2d300b0028b43e6e601mr642721pjb.98.1702877009218; 
 Sun, 17 Dec 2023 21:23:29 -0800 (PST)
Received: from pek-lpggp6.wrs.com (unknown-105-121.windriver.com.
 [147.11.105.121]) by smtp.gmail.com with ESMTPSA id
 u14-20020a170902e5ce00b001d3acb7d4e2sm818560plf.166.2023.12.17.21.23.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Dec 2023 21:23:28 -0800 (PST)
To: Dave Kleikamp <shaggy@kernel.org>
Date: Mon, 18 Dec 2023 13:23:23 +0800
Message-Id: <20231218052323.1193276-1-haokexin@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The kernel thread function jfs_lazycommit() and jfs_sync()
 invoke the try_to_freeze() in its loop. But all the kernel threads are
 no-freezable
 by default. So if we want to make a kernel thread to be f [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.44 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [haokexin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rF66I-0004oS-Vv
X-Mailman-Approved-At: Wed, 20 Dec 2023 20:12:54 +0000
Subject: [Jfs-discussion] [PATCH] jfs: Add missing set_freezable() for
 freezable kthread
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
From: Kevin Hao via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Kevin Hao <haokexin@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net, Pavel Machek <pavel@ucw.cz>,
 "Rafael J. Wysocki" <rafael@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The kernel thread function jfs_lazycommit() and jfs_sync() invoke the
try_to_freeze() in its loop. But all the kernel threads are no-freezable
by default. So if we want to make a kernel thread to be freezable, we have
to invoke set_freezable() explicitly.

Signed-off-by: Kevin Hao <haokexin@gmail.com>
---
 fs/jfs/jfs_txnmgr.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index dccc8b3f1045..be17e3c43582 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -2702,6 +2702,7 @@ int jfs_lazycommit(void *arg)
 	unsigned long flags;
 	struct jfs_sb_info *sbi;
 
+	set_freezable();
 	do {
 		LAZY_LOCK(flags);
 		jfs_commit_thread_waking = 0;	/* OK to wake another thread */
@@ -2884,6 +2885,7 @@ int jfs_sync(void *arg)
 	struct jfs_inode_info *jfs_ip;
 	tid_t tid;
 
+	set_freezable();
 	do {
 		/*
 		 * write each inode on the anonymous inode list
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
